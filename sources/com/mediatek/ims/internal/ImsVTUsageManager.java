package com.mediatek.ims.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkStats;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.PersistableBundle;
import android.os.RegistrantList;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.telephony.CarrierConfigManager;
import android.util.Log;
import com.mediatek.ims.common.SubscriptionManagerHelper;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.util.Objects;
/* loaded from: classes.dex */
public class ImsVTUsageManager {
    static final String TAG = "ImsVT Usage";
    private Context mContext;
    public int mId;
    private ImsVTUsage mInitialUsage;
    protected int mSimId;
    public ImsVTProviderUtil mVTProviderUtil = ImsVTProviderUtil.getInstance();
    private boolean mNeedReportDataUsage = true;
    private RegistrantList mDataUsageUpdateRegistrants = new RegistrantList();
    private ImsVTUsage mUsage = new ImsVTUsage();

    /* loaded from: classes.dex */
    public static class ImsVTUsage {
        private long mLTEUsage = 0;
        private long mWifiUsage = 0;

        public long getLteUsage() {
            return this.mLTEUsage;
        }

        public long getWifiUsage() {
            return this.mWifiUsage;
        }

        public void setLteUsage(long usage) {
            this.mLTEUsage = usage;
        }

        public void setWifiUsage(long usage) {
            this.mWifiUsage = usage;
        }
    }

    public void setId(int id) {
        this.mId = id;
    }

    public void setSimId(int simId) {
        this.mSimId = simId;
    }

    public void setInitUsage(ImsVTUsage initUsage) {
        this.mInitialUsage = initUsage;
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public ImsVTUsage requestCallDataUsage() {
        RemoteException e;
        Log.d(TAG, "[ID=" + this.mId + "] [onRequestCallDataUsage] Start");
        if (!canRequestDataUsage()) {
            return null;
        }
        String subIdStr = MtkPhoneConstants.MVNO_TYPE_NONE + SubscriptionManagerHelper.getSubIdUsingPhoneId(this.mSimId);
        ConnectivityManager sConnMgr = (ConnectivityManager) this.mVTProviderUtil.mContext.getSystemService("connectivity");
        Network[] nets = sConnMgr.getAllNetworks();
        if (nets != null) {
            String mActiveWifiIface = MtkPhoneConstants.MVNO_TYPE_NONE;
            String mActiveImsIface = MtkPhoneConstants.MVNO_TYPE_NONE;
            for (Network net : nets) {
                NetworkInfo nwInfo = sConnMgr.getNetworkInfo(net);
                if (nwInfo != null && nwInfo.isConnected()) {
                    NetworkCapabilities netCap = sConnMgr.getNetworkCapabilities(net);
                    if (netCap == null) {
                        Log.d(TAG, "[onRequestCallDataUsage] netCap = null");
                    } else {
                        Log.d(TAG, "[onRequestCallDataUsage] nwInfo:" + nwInfo.toString() + ", checking net=" + net + " cap=" + netCap);
                        if (sConnMgr.getLinkProperties(net) == null) {
                            Log.e(TAG, "[onRequestCallDataUsage] sConnMgr.getLinkProperties(net) = NULL");
                        } else if (netCap.hasTransport(1)) {
                            mActiveWifiIface = sConnMgr.getLinkProperties(net).getInterfaceName();
                            Log.d(TAG, "[onRequestCallDataUsage] mActiveWifiIface=" + mActiveWifiIface);
                        } else if (netCap.hasCapability(4)) {
                            String networkSpecifier = MtkPhoneConstants.MVNO_TYPE_NONE + netCap.getNetworkSpecifier();
                            if (!subIdStr.equals(networkSpecifier)) {
                                Log.d(TAG, "[onRequestCallDataUsage] Get Ims interface with different sub, net=" + net + " specifier=" + networkSpecifier + " sub=" + subIdStr + "specifier.length=" + networkSpecifier.length() + " sub.length=" + subIdStr.length());
                            } else {
                                mActiveImsIface = sConnMgr.getLinkProperties(net).getInterfaceName();
                                Log.d(TAG, "[onRequestCallDataUsage] mActiveImsIface=" + mActiveImsIface);
                            }
                        } else {
                            Log.d(TAG, "[onRequestCallDataUsage] netCap neither contain WIF nor LTE.");
                        }
                    }
                }
            }
            if (MtkPhoneConstants.MVNO_TYPE_NONE == mActiveImsIface) {
                Log.e(TAG, "[onRequestCallDataUsage] mActiveImsIface is empty");
                return null;
            }
            IBinder b = ServiceManager.getService("network_management");
            INetworkManagementService mNetworkManager = INetworkManagementService.Stub.asInterface(b);
            try {
                NetworkStats uidSnapshot = mNetworkManager.getNetworkStatsUidDetail(-1, NetworkStats.INTERFACES_ALL);
                long usage_ImsTaginImsInterface = getTaggedSnapshot(uidSnapshot, 1000, mActiveImsIface, this.mId + ImsVTProviderUtil.TAG_VILTE_MOBILE);
                long usage_WifiTaginWifiInterface = getTaggedSnapshot(uidSnapshot, 1000, mActiveWifiIface, this.mId + ImsVTProviderUtil.TAG_VILTE_WIFI);
                try {
                    this.mUsage.setLteUsage(usage_ImsTaginImsInterface - this.mInitialUsage.getLteUsage());
                    try {
                        this.mUsage.setWifiUsage(usage_WifiTaginWifiInterface - this.mInitialUsage.getWifiUsage());
                        try {
                            this.mVTProviderUtil.usageSet(this.mId, usage_ImsTaginImsInterface, ImsVTProviderUtil.TAG_VILTE_MOBILE);
                            this.mVTProviderUtil.usageSet(this.mId, usage_WifiTaginWifiInterface, ImsVTProviderUtil.TAG_VILTE_WIFI);
                            Log.d(TAG, "[ID=" + this.mId + "] [onRequestCallDataUsage] Finish (VIWIFI usage:" + usage_WifiTaginWifiInterface + ")");
                            return this.mUsage;
                        } catch (RemoteException e2) {
                            e = e2;
                            Log.d(TAG, "Exception:" + e);
                            return null;
                        }
                    } catch (RemoteException e3) {
                        e = e3;
                    }
                } catch (RemoteException e4) {
                    e = e4;
                }
            } catch (RemoteException e5) {
                e = e5;
            }
        } else {
            Log.d(TAG, "[onRequestCallDataUsage] getAllNetworks returns null.");
            return null;
        }
    }

    private boolean canRequestDataUsage() {
        Log.d(TAG, "[canRequestDataUsage]");
        boolean forceRequest = SystemProperties.get("persist.vendor.vt.data_simulate").equals(RadioCapabilitySwitchUtil.IMSI_READY);
        if (forceRequest) {
            return true;
        }
        int subId = SubscriptionManagerHelper.getSubIdUsingPhoneId(this.mSimId);
        boolean ignoreDataEnabledChanged = getBooleanCarrierConfig(this.mVTProviderUtil.mContext, "ignore_data_enabled_changed_for_video_calls", subId);
        if (this.mNeedReportDataUsage && ignoreDataEnabledChanged) {
            Log.d(TAG, "[canRequestDataUsage] set dataUsage as false");
            this.mNeedReportDataUsage = false;
        }
        return this.mNeedReportDataUsage;
    }

    private boolean getBooleanCarrierConfig(Context context, String key, int subId) {
        CarrierConfigManager configManager = (CarrierConfigManager) context.getSystemService("carrier_config");
        PersistableBundle carrierConfig = null;
        if (configManager != null) {
            carrierConfig = configManager.getConfigForSubId(subId);
        }
        if (carrierConfig != null) {
            return carrierConfig.getBoolean(key);
        }
        return CarrierConfigManager.getDefaultConfig().getBoolean(key);
    }

    private long getTaggedSnapshot(NetworkStats uidSnapshot, int match_uid, String iface, int tag) {
        Log.i(TAG, "getTaggedSnapshot match_uid:" + match_uid + ", iface:" + iface + ", tag:" + NetworkStats.tagToString(tag));
        long TotalBytes = 0;
        NetworkStats.Entry entry = null;
        for (int j = 0; j < uidSnapshot.size(); j++) {
            entry = uidSnapshot.getValues(j, entry);
            if (Objects.equals(entry.iface, iface) && entry.uid == match_uid && entry.tag == tag) {
                Log.i(TAG, "getTaggedSnapshot entry:" + entry.toString());
                TotalBytes = TotalBytes + entry.rxBytes + entry.txBytes;
                Log.i(TAG, "getTaggedSnapshot entry.rxBytes:" + Long.toString(entry.rxBytes) + ", entry.txBytes:" + Long.toString(entry.txBytes));
            }
        }
        Log.i(TAG, "TotalBytes:" + Long.toString(TotalBytes));
        return TotalBytes;
    }
}
