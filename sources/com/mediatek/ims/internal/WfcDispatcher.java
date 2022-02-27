package com.mediatek.ims.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import com.mediatek.ims.ImsAdapter;
import com.mediatek.ims.ImsEventDispatcher;
import com.mediatek.ims.VaConstants;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class WfcDispatcher implements ImsEventDispatcher.VaEventDispatcher {
    private static final boolean DEBUG = false;
    private static final int EVENT_MSG_HANDLE_NETWORK_LOCATION_RESPONSE = 2;
    private static final int EVENT_MSG_REQUEST_GEO_LOCATION = 0;
    private static final int EVENT_MSG_REQUEST_NETWORK_LOCATION = 1;
    private static final int EVENT_MSG_RESPONSE_GEO_LOCATION = 4;
    private static final int EVENT_MSG_UPDATE_AID_INFORMATION = 5;
    private static final int MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO = 96009;
    private static final int MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO = 91030;
    private static final int NETWORK_LOCATION_UPDATE_TIME = 1000;
    private static final String TAG = "Wfc-IMSA";
    private String mAid;
    private Context mContext;
    private LocationManager mLocationManager;
    private ImsAdapter.VaSocketIO mSocket;
    private static final String AID_SETTING_URI_STR = "wfc_aid_value";
    private static final Uri AID_SETTING_URI = Settings.Global.getUriFor(AID_SETTING_URI_STR);
    private static final BlockingQueue<Runnable> sPoolWorkQueue = new LinkedBlockingDeque();
    private static final ThreadFactory sThreadFactory = new ThreadFactory() { // from class: com.mediatek.ims.internal.WfcDispatcher.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            return new Thread(r, "WFC #" + this.mCount.getAndIncrement());
        }
    };
    private static final ThreadPoolExecutor sPoolExecutor = new ThreadPoolExecutor(0, 3, 30, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory);
    private List<GeoLocationTask> mNetworkLocationTasks = new ArrayList();
    private boolean mImsEnabled = false;
    private String mPlmnCountryCode = MtkPhoneConstants.MVNO_TYPE_NONE;
    private LocationListener mLocationListener = new LocationListener() { // from class: com.mediatek.ims.internal.WfcDispatcher.2
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            WfcDispatcher wfcDispatcher = WfcDispatcher.this;
            wfcDispatcher.log("onLocationChanged: " + location);
            WfcDispatcher.this.cancelNetworkGeoLocationRequest();
            WfcDispatcher.this.mHandler.obtainMessage(2, location).sendToTarget();
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String provider) {
            WfcDispatcher wfcDispatcher = WfcDispatcher.this;
            wfcDispatcher.log("onProviderDisabled: " + provider);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String provider) {
            WfcDispatcher wfcDispatcher = WfcDispatcher.this;
            wfcDispatcher.log("onProviderEnabled: " + provider);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) {
            WfcDispatcher wfcDispatcher = WfcDispatcher.this;
            wfcDispatcher.log("onStatusChanged: " + provider + ", status=" + status);
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.internal.WfcDispatcher.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null) {
                WfcDispatcher wfcDispatcher = WfcDispatcher.this;
                wfcDispatcher.log("onReceive action:" + intent.getAction());
                if (intent.getAction().equals("mediatek.intent.action.LOCATED_PLMN_CHANGED")) {
                    String lowerCaseCountryCode = (String) intent.getExtra("iso");
                    if (lowerCaseCountryCode != null) {
                        WfcDispatcher.this.mPlmnCountryCode = lowerCaseCountryCode.toUpperCase();
                        WfcDispatcher wfcDispatcher2 = WfcDispatcher.this;
                        wfcDispatcher2.log("ACTION_LOCATED_PLMN_CHANGED, iso: " + WfcDispatcher.this.mPlmnCountryCode);
                        return;
                    }
                    WfcDispatcher.this.log("iso country code is null");
                }
            }
        }
    };
    private Handler mHandler = new Handler() { // from class: com.mediatek.ims.internal.WfcDispatcher.4
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int what = msg.what;
            Object obj = msg.obj;
            WfcDispatcher wfcDispatcher = WfcDispatcher.this;
            wfcDispatcher.log("handleMessage: msg=" + WfcDispatcher.this.handlerEventMsgToString(what));
            switch (what) {
                case 0:
                    final GeoLocationTask locationReq = (GeoLocationTask) obj;
                    WfcDispatcher wfcDispatcher2 = WfcDispatcher.this;
                    wfcDispatcher2.log("push GeoLocation task transaction-" + locationReq.transactionId + " to queue");
                    WfcDispatcher.sPoolExecutor.execute(new Runnable() { // from class: com.mediatek.ims.internal.WfcDispatcher.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            WfcDispatcher wfcDispatcher3 = WfcDispatcher.this;
                            wfcDispatcher3.log(" start for transaction-" + locationReq.transactionId);
                            WfcDispatcher.this.updateGeoLocationFromLatLong(locationReq);
                            obtainMessage(4, locationReq).sendToTarget();
                        }
                    });
                    return;
                case 1:
                    GeoLocationTask locationReq2 = (GeoLocationTask) obj;
                    WfcDispatcher.this.mNetworkLocationTasks.add(locationReq2);
                    if (!WfcDispatcher.this.getLastKnownLocation(locationReq2)) {
                        WfcDispatcher.this.mNetworkLocationTasks.remove(locationReq2);
                        WfcDispatcher.this.log("getLastKnownLocation failed");
                        obtainMessage(4, locationReq2).sendToTarget();
                        return;
                    }
                    return;
                case 2:
                    Location location = (Location) obj;
                    if (location == null) {
                        WfcDispatcher.this.log("network location get null, unexpected result");
                        return;
                    }
                    double latitude = location.getLatitude();
                    double longitude = location.getLongitude();
                    WfcDispatcher wfcDispatcher3 = WfcDispatcher.this;
                    wfcDispatcher3.log("update all GeoLocationTask with (" + latitude + ", " + longitude + ")");
                    for (GeoLocationTask locationTask : WfcDispatcher.this.mNetworkLocationTasks) {
                        locationTask.latitude = latitude;
                        locationTask.longitude = longitude;
                        WfcDispatcher wfcDispatcher4 = WfcDispatcher.this;
                        wfcDispatcher4.log("Get network location, send EVENT_MSG_REQUEST_GEO_LOCATION for transactionId-" + locationTask.transactionId);
                        obtainMessage(0, locationTask).sendToTarget();
                    }
                    WfcDispatcher.this.mNetworkLocationTasks.clear();
                    return;
                case 3:
                default:
                    Log.w(WfcDispatcher.TAG, "Unhandled message: " + WfcDispatcher.this.handlerEventMsgToString(what));
                    return;
                case 4:
                    GeoLocationTask locationRsp = (GeoLocationTask) obj;
                    WfcDispatcher wfcDispatcher5 = WfcDispatcher.this;
                    wfcDispatcher5.log("finish for transaction-" + locationRsp.transactionId);
                    WfcDispatcher.this.handleGeoLocationResponse(locationRsp);
                    return;
                case 5:
                    WfcDispatcher.this.handleAidInfoUpdate();
                    return;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GeoLocationTask {
        int accuracy;
        String city;
        String countryCode;
        double latitude;
        double longitude;
        String method;
        int phoneId;
        String state;
        int transactionId;
        String zip;

        private GeoLocationTask() {
            this.method = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.city = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.state = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.zip = MtkPhoneConstants.MVNO_TYPE_NONE;
            this.countryCode = MtkPhoneConstants.MVNO_TYPE_NONE;
        }

        public String toString() {
            return "[GeoLocationTask objId: " + hashCode() + ", phoneId: " + this.phoneId + ", transactionId: " + this.transactionId + ", latitude: " + this.latitude + ", longitude: " + this.longitude + ", accuracy: " + this.accuracy + ", method: " + this.method + ", city: " + this.city + ", state: " + this.state + ", zip: " + this.zip + ", countryCode: " + this.countryCode;
        }
    }

    /* loaded from: classes.dex */
    private class SettingsObserver extends ContentObserver {
        public SettingsObserver(Handler handler) {
            super(handler);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void register() {
            WfcDispatcher.this.mContext.getContentResolver().registerContentObserver(WfcDispatcher.AID_SETTING_URI, false, this);
        }

        private void unregister() {
            WfcDispatcher.this.mContext.getContentResolver().unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            onChange(selfChange, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            if (WfcDispatcher.AID_SETTING_URI.equals(uri)) {
                WfcDispatcher.this.mAid = Settings.Global.getString(WfcDispatcher.this.mContext.getContentResolver(), WfcDispatcher.AID_SETTING_URI_STR);
                WfcDispatcher wfcDispatcher = WfcDispatcher.this;
                wfcDispatcher.log("Receive AID changed from Setting, AID=" + WfcDispatcher.this.mAid);
                WfcDispatcher.this.mHandler.obtainMessage(5).sendToTarget();
            }
        }
    }

    public WfcDispatcher(Context context, ImsAdapter.VaSocketIO IO) {
        log("WfcDispatcher()");
        this.mContext = context;
        this.mSocket = IO;
        this.mLocationManager = (LocationManager) this.mContext.getSystemService("location");
        new SettingsObserver(null).register();
        registerForBroadcast();
        log("WfcDispatcher() end");
    }

    private void registerForBroadcast() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("mediatek.intent.action.LOCATED_PLMN_CHANGED");
        this.mContext.registerReceiver(this.mReceiver, filter);
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void enableRequest(int phoneId) {
        log("enableRequest()");
        this.mImsEnabled = true;
        this.mAid = Settings.Global.getString(this.mContext.getContentResolver(), AID_SETTING_URI_STR);
        log("Trigger AID information update to IMCB, AID=" + this.mAid);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(5), 1000L);
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void disableRequest(int phoneId) {
        log("disableRequest()");
        this.mImsEnabled = false;
        this.mNetworkLocationTasks.clear();
    }

    @Override // com.mediatek.ims.ImsEventDispatcher.VaEventDispatcher
    public void vaEventCallback(ImsAdapter.VaEvent event) {
        try {
            int requestId = event.getRequestID();
            log("vaEventCallback: ID=" + imsaMsgToString(requestId) + "(" + requestId + ")");
            if (requestId != 900406) {
                log("Unknown request, return directly ");
            } else {
                parseRequestDataPayload(event);
            }
        } catch (Exception e) {
            Log.e(TAG, "Event exception", e);
        }
    }

    protected void log(String s) {
    }

    private void parseRequestDataPayload(ImsAdapter.VaEvent event) {
        int transactionId = event.getByte();
        event.getBytes(3);
        int uaMsgId = event.getInt();
        log("parseRequestDataPayload: transaction-" + transactionId + ", uaMsgId=" + uaMsgIdToString(uaMsgId) + "(" + uaMsgId + ")");
        if (uaMsgId != MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO) {
            log("parseRequestDataPayload: unknown msgId");
        } else {
            handleGeoLocationRequest(transactionId, event);
        }
    }

    private void handleGeoLocationRequest(int transactionId, ImsAdapter.VaEvent event) {
        GeoLocationTask locationReq = new GeoLocationTask();
        locationReq.phoneId = event.getPhoneId();
        locationReq.transactionId = transactionId;
        locationReq.latitude = event.getDouble();
        locationReq.longitude = event.getDouble();
        locationReq.accuracy = event.getInt();
        log("handleGeoLocationRequest: get UA's request: " + locationReq);
        if (locationReq.latitude == 0.0d || locationReq.longitude == 0.0d) {
            log("send EVENT_MSG_REQUEST_NETWORK_LOCATION for transactionId-" + locationReq.transactionId);
            locationReq.method = "Network";
            this.mHandler.obtainMessage(1, locationReq).sendToTarget();
            return;
        }
        log("send EVENT_MSG_REQUEST_GEO_LOCATION for transactionId-" + locationReq.transactionId);
        locationReq.method = "GPS";
        this.mHandler.obtainMessage(0, locationReq).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGeoLocationResponse(GeoLocationTask locationResult) {
        log("send " + imsaMsgToString(VaConstants.MSG_ID_RESPONSE_VOWIFI_RELATED_INFO) + "(" + VaConstants.MSG_ID_RESPONSE_VOWIFI_RELATED_INFO + ") to IMSM: result=" + locationResult);
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(locationResult.phoneId, VaConstants.MSG_ID_RESPONSE_VOWIFI_RELATED_INFO);
        event.putByte(locationResult.transactionId);
        event.putBytes(new byte[3]);
        event.putInt(MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO);
        event.putDouble(locationResult.latitude);
        event.putDouble(locationResult.longitude);
        event.putInt(locationResult.accuracy);
        String method = locationResult.method == null ? MtkPhoneConstants.MVNO_TYPE_NONE : locationResult.method;
        event.putString(method, 16);
        String city = locationResult.city == null ? MtkPhoneConstants.MVNO_TYPE_NONE : locationResult.city;
        event.putString(city, 32);
        String state = locationResult.state == null ? "Unknown" : locationResult.state;
        event.putString(state, 32);
        String zip = locationResult.zip == null ? MtkPhoneConstants.MVNO_TYPE_NONE : locationResult.zip;
        event.putString(zip, 8);
        String countryCode = locationResult.countryCode == null ? MtkPhoneConstants.MVNO_TYPE_NONE : locationResult.countryCode;
        event.putString(countryCode, 8);
        writeEventToSocket(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGeoLocationFromLatLong(GeoLocationTask location) {
        if (!Geocoder.isPresent()) {
            log("getGeoLocationFromLatLong: this system has no GeoCoder implementation!!");
            return;
        }
        List<Address> lstAddress = null;
        try {
            Geocoder geocoder = new Geocoder(this.mContext, Locale.US);
            lstAddress = geocoder.getFromLocation(location.latitude, location.longitude, 1);
        } catch (IOException e) {
            Log.e(TAG, "geocoder.getFromLocation throw exception:", e);
        }
        if (lstAddress == null || lstAddress.isEmpty()) {
            log("getGeoLocationFromLatLong: get empty address, fill plmn:" + this.mPlmnCountryCode);
            location.countryCode = this.mPlmnCountryCode;
            return;
        }
        Address address = lstAddress.get(0);
        location.city = address.getLocality();
        if (location.city == null || location.city.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
            location.city = address.getSubAdminArea();
        }
        location.state = address.getAdminArea();
        if (location.state == null || location.state.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
            location.state = lstAddress.get(0).getCountryName();
        }
        location.zip = address.getPostalCode();
        location.countryCode = address.getCountryCode();
        if (location.countryCode != null && !location.countryCode.equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
            this.mPlmnCountryCode = location.countryCode;
        }
        log("getGeoLocationFromLatLong: location=" + location);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getLastKnownLocation(GeoLocationTask locationReq) {
        log("getLastKnownLocation");
        if (this.mLocationManager == null) {
            log("getLastKnownLocation: empty locationManager, return");
            return false;
        }
        Location gpsLocation = this.mLocationManager.getLastKnownLocation("gps");
        if (gpsLocation != null) {
            locationReq.method = "GPS";
            log("GPS location: " + gpsLocation);
            this.mHandler.obtainMessage(2, gpsLocation).sendToTarget();
            return true;
        }
        Location networkLocation = this.mLocationManager.getLastKnownLocation("network");
        if (networkLocation != null) {
            locationReq.method = "Network";
            log("Network location: " + networkLocation);
            this.mHandler.obtainMessage(2, networkLocation).sendToTarget();
            return true;
        }
        log("getLastKnownLocation: no last known location");
        return false;
    }

    private boolean requestGeoLocationFromNetworkLocation() {
        log("requestGeoLocationFromNetworkLocation");
        if (this.mLocationManager == null) {
            log("getGeoLocationFromNetworkLocation: empty locationManager, return");
            return false;
        }
        String optr = SystemProperties.get("persist.vendor.operator.optr");
        if (optr == null || !optr.equals("OP08")) {
            if (!this.mLocationManager.isProviderEnabled("network")) {
                log("requestGeoLocationFromNetworkLocation:this system has no networkProvider implementation!");
                return false;
            }
        } else if (this.mLocationManager.getProvider("network") == null) {
            log("requestGeoLocationFromNetworkLocation:getProvider() is null!");
            return false;
        }
        this.mLocationManager.requestLocationUpdates("network", 1000L, 0.0f, this.mLocationListener);
        log("requestGeoLocationFromNetworkLocation: request networkLocation update");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelNetworkGeoLocationRequest() {
        log("cancelNetworkGeoLocationRequest");
        if (this.mLocationManager == null) {
            log("cancelNetworkGeoLocationRequest: empty locationManager, return");
        } else {
            this.mLocationManager.removeUpdates(this.mLocationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAidInfoUpdate() {
        if (this.mSocket == null) {
            log("handleAidInfoUpdate: socket is null, can't send AID info.");
            return;
        }
        log("send " + imsaMsgToString(VaConstants.MSG_ID_UPDATE_IMCB_AID_INFO) + "(" + VaConstants.MSG_ID_UPDATE_IMCB_AID_INFO + ") to IMSM: AID=" + this.mAid);
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(ImsAdapter.Util.getDefaultVoltePhoneId(), VaConstants.MSG_ID_UPDATE_IMCB_AID_INFO);
        String aid = this.mAid != null ? this.mAid : MtkPhoneConstants.MVNO_TYPE_NONE;
        event.putString(aid, 32);
        writeEventToSocket(event);
    }

    private void writeEventToSocket(ImsAdapter.VaEvent event) {
        if (!this.mImsEnabled || this.mSocket == null || event == null) {
            Log.e(TAG, "Event discarded:" + event);
            return;
        }
        this.mSocket.writeEvent(event);
    }

    private String imsaMsgToString(int msgId) {
        switch (msgId) {
            case VaConstants.MSG_ID_REQUEST_VOWIFI_RELATED_INFO /* 900406 */:
                return "MSG_ID_REQUEST_VOWIFI_RELATED_INFO";
            case VaConstants.MSG_ID_RESPONSE_VOWIFI_RELATED_INFO /* 900407 */:
                return "MSG_ID_RESPONSE_VOWIFI_RELATED_INFO";
            case VaConstants.MSG_ID_UPDATE_IMCB_AID_INFO /* 900408 */:
                return "MSG_ID_UPDATE_IMCB_AID_INFO";
            default:
                return "Unknown Msg";
        }
    }

    private String uaMsgIdToString(int uaMsgId) {
        if (uaMsgId == MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO) {
            return "MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO";
        }
        if (uaMsgId != MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO) {
            return "Unknown Msg";
        }
        return "MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String handlerEventMsgToString(int eventMsg) {
        switch (eventMsg) {
            case 0:
                return "EVENT_MSG_REQUEST_GEO_LOCATION";
            case 1:
                return "EVENT_MSG_REQUEST_NETWORK_LOCATION";
            case 2:
                return "EVENT_MSG_HANDLE_NETWORK_LOCATION_RESPONSE";
            case 3:
            default:
                return "EVENT_MSG_ID-" + eventMsg;
            case 4:
                return "EVENT_MSG_RESPONSE_GEO_LOCATION";
            case 5:
                return "EVENT_MSG_UPDATE_AID_INFORMATION";
        }
    }
}
