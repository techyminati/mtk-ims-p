package com.mediatek.ims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.ims.internal.IImsConfig;
import com.mediatek.ims.common.SubscriptionManagerHelper;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.config.internal.ImsConfigAdapter;
import com.mediatek.ims.config.internal.ImsConfigImpl;
import com.mediatek.ims.config.internal.MtkImsConfigImpl;
import com.mediatek.ims.internal.IMtkImsConfig;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ImsManagerOemPlugin;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ImsConfigManager {
    private static final boolean DEBUG;
    private static final String LOG_TAG = "ImsConfigManager";
    private static final String PROPERTY_CAPABILITY_SWITCH = "persist.vendor.radio.simswitch";
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final boolean SENLOG;
    private static final boolean TELDBG;
    private Context mContext;
    private ImsCommandsInterface[] mImsRILAdapters;
    private Map<Integer, ImsConfigImpl> mImsConfigInstanceMap = new HashMap();
    private Map<Integer, ImsConfigAdapter> mImsConfigAdapterMap = new HashMap();
    private Map<Integer, IMtkImsConfig> mMtkImsConfigInstanceMap = new HashMap();
    private ImsManagerOemPlugin mImsManagerOemPlugin = null;
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.ImsConfigManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ImsConfigContract.ACTION_DYNAMIC_IMS_SWITCH_TRIGGER.equals(intent.getAction())) {
                int phoneId = intent.getIntExtra("phone", -1);
                String simState = intent.getStringExtra("ss");
                Log.d(ImsConfigManager.LOG_TAG, "DYNAMIC_IMS_SWITCH_TRIGGER phoneId:" + phoneId + ", simState:" + simState);
                ImsConfigManager.this.updateImsResrouceCapability(context, intent);
            }
        }
    };

    static {
        boolean z = true;
        DEBUG = TextUtils.equals(Build.TYPE, "eng") || SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1;
        SENLOG = TextUtils.equals(Build.TYPE, "user");
        if (SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        TELDBG = z;
    }

    public ImsConfigManager(Context context, ImsCommandsInterface[] imsRILAdapters) {
        this.mImsRILAdapters = null;
        if (DEBUG) {
            Log.d(LOG_TAG, "ImsConfigManager Enter");
        }
        this.mContext = context;
        this.mImsRILAdapters = imsRILAdapters;
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            IntentFilter filter = new IntentFilter();
            filter.addAction(ImsConfigContract.ACTION_DYNAMIC_IMS_SWITCH_TRIGGER);
            context.registerReceiver(this.mBroadcastReceiver, filter);
        }
    }

    public void init(int phoneId) {
        ImsConfigAdapter configAdapter = getImsConfigAdapter(this.mContext, this.mImsRILAdapters, phoneId);
        if (DEBUG) {
            Log.d(LOG_TAG, "init ImsConfigImpl phoneId:" + phoneId);
        }
        synchronized (this.mImsConfigInstanceMap) {
            ImsConfigImpl imsConfigImpl = new ImsConfigImpl(this.mContext, this.mImsRILAdapters[phoneId], configAdapter, phoneId);
            this.mImsConfigInstanceMap.put(Integer.valueOf(phoneId), imsConfigImpl);
        }
    }

    public IImsConfig get(int phoneId) {
        IImsConfig instance;
        ImsConfigAdapter configAdapter = getImsConfigAdapter(this.mContext, this.mImsRILAdapters, phoneId);
        synchronized (this.mImsConfigInstanceMap) {
            if (this.mImsConfigInstanceMap.containsKey(Integer.valueOf(phoneId))) {
                instance = this.mImsConfigInstanceMap.get(Integer.valueOf(phoneId)).getIImsConfig();
            } else {
                ImsConfigImpl imsConfigImpl = new ImsConfigImpl(this.mContext, this.mImsRILAdapters[phoneId], configAdapter, phoneId);
                instance = imsConfigImpl.getIImsConfig();
                this.mImsConfigInstanceMap.put(Integer.valueOf(phoneId), imsConfigImpl);
            }
        }
        return instance;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007e -> B:24:0x007f). Please submit an issue!!! */
    public void initEx(int phoneId) {
        Throwable th;
        ImsConfigAdapter configAdapter = getImsConfigAdapter(this.mContext, this.mImsRILAdapters, phoneId);
        if (DEBUG) {
            Log.d(LOG_TAG, "initEx ImsConfigImpl phoneId:" + phoneId);
        }
        synchronized (this.mImsConfigInstanceMap) {
            try {
                ImsConfigImpl imsConfigImpl = new ImsConfigImpl(this.mContext, this.mImsRILAdapters[phoneId], configAdapter, phoneId);
                IImsConfig instance = imsConfigImpl.getIImsConfig();
                try {
                    this.mImsConfigInstanceMap.put(Integer.valueOf(phoneId), imsConfigImpl);
                    if (DEBUG) {
                        Log.d(LOG_TAG, "initEx MtkImsConfigImpl phoneId:" + phoneId);
                    }
                    synchronized (this.mMtkImsConfigInstanceMap) {
                        MtkImsConfigImpl instanceEx = new MtkImsConfigImpl(this.mContext, this.mImsRILAdapters[phoneId], instance, configAdapter, phoneId);
                        this.mMtkImsConfigInstanceMap.put(Integer.valueOf(phoneId), instanceEx);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public IMtkImsConfig getEx(int phoneId) {
        IImsConfig instance;
        IMtkImsConfig instanceEx;
        ImsConfigAdapter configAdapter = getImsConfigAdapter(this.mContext, this.mImsRILAdapters, phoneId);
        synchronized (this.mImsConfigInstanceMap) {
            if (this.mImsConfigInstanceMap.containsKey(Integer.valueOf(phoneId))) {
                instance = this.mImsConfigInstanceMap.get(Integer.valueOf(phoneId)).getIImsConfig();
            } else {
                ImsConfigImpl imsConfigImpl = new ImsConfigImpl(this.mContext, this.mImsRILAdapters[phoneId], configAdapter, phoneId);
                instance = imsConfigImpl.getIImsConfig();
                this.mImsConfigInstanceMap.put(Integer.valueOf(phoneId), imsConfigImpl);
            }
        }
        synchronized (this.mMtkImsConfigInstanceMap) {
            if (this.mMtkImsConfigInstanceMap.containsKey(Integer.valueOf(phoneId))) {
                instanceEx = this.mMtkImsConfigInstanceMap.get(Integer.valueOf(phoneId));
            } else {
                instanceEx = new MtkImsConfigImpl(this.mContext, this.mImsRILAdapters[phoneId], instance, configAdapter, phoneId);
                this.mMtkImsConfigInstanceMap.put(Integer.valueOf(phoneId), instanceEx);
            }
        }
        return instanceEx;
    }

    private ImsConfigAdapter getImsConfigAdapter(Context context, ImsCommandsInterface[] imsRilAdapters, int phoneId) {
        ImsConfigAdapter configAdapter;
        synchronized (this.mImsConfigAdapterMap) {
            if (this.mImsConfigAdapterMap.containsKey(Integer.valueOf(phoneId))) {
                configAdapter = this.mImsConfigAdapterMap.get(Integer.valueOf(phoneId));
            } else {
                if (DEBUG) {
                    Log.d(LOG_TAG, "init ImsConfigAdapter phone:" + phoneId);
                }
                configAdapter = new ImsConfigAdapter(context, imsRilAdapters[phoneId], phoneId);
                this.mImsConfigAdapterMap.put(Integer.valueOf(phoneId), configAdapter);
            }
        }
        return configAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateImsResrouceCapability(Context context, Intent intent) {
        int volteResVal;
        int wfcResVal;
        int vilteResVal;
        int wfcResVal2;
        int vilteResVal2;
        String simState = intent.getStringExtra("ss");
        int phoneId = intent.getIntExtra("phone", -1);
        if (RadioCapabilitySwitchUtil.IMSI_READY.equals(SystemProperties.get("persist.vendor.mtk_dynamic_ims_switch"))) {
            Log.d(LOG_TAG, "get MtkImsConfigImpl of phone " + phoneId);
            IMtkImsConfig imsConfig = getEx(phoneId);
            try {
                if (simState.equalsIgnoreCase("ABSENT")) {
                    Log.w(LOG_TAG, "setImsResCapability to volte only w/o SIM on phone " + phoneId);
                    imsConfig.setImsResCapability(0, 1);
                    imsConfig.setImsResCapability(1, 0);
                    imsConfig.setImsResCapability(2, 0);
                } else if (simState.equalsIgnoreCase("LOADED")) {
                    if (!isTestSim(phoneId)) {
                        TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
                        String mccMnc = OperatorUtils.getSimOperatorNumericForPhone(phoneId);
                        if (mccMnc == null || mccMnc.isEmpty()) {
                            Log.w(LOG_TAG, "Invalid mccMnc:" + mccMnc);
                            return;
                        }
                        try {
                            int mcc = Integer.parseInt(mccMnc.substring(0, 3));
                            int mnc = Integer.parseInt(mccMnc.substring(3));
                            Log.d(LOG_TAG, "SIM loaded on phone " + phoneId + " with mcc: " + mcc + " mnc: " + mnc);
                            int subId = SubscriptionManagerHelper.getSubIdUsingPhoneId(phoneId);
                            String iccid = tm.getSimSerialNumber(subId);
                            if (!SENLOG || TELDBG) {
                                Log.d(LOG_TAG, "check iccid:" + iccid);
                            }
                            if (!TextUtils.isEmpty(iccid)) {
                                if (iccid.startsWith("8988605")) {
                                    if (DEBUG) {
                                        Log.d(LOG_TAG, "Replace mccmnc for APTG roaming case");
                                    }
                                    mcc = 466;
                                    mnc = 5;
                                } else if (iccid.startsWith("898603") || iccid.startsWith("898611")) {
                                    mcc = 460;
                                    mnc = 3;
                                    if (DEBUG) {
                                        Log.d(LOG_TAG, "Replace mccmnc for CT roaming case");
                                    }
                                }
                            }
                            Resources res = context.getResources();
                            Configuration newConfiguration = res.getConfiguration();
                            newConfiguration.mcc = mcc;
                            newConfiguration.mnc = mnc == 0 ? 65535 : mnc;
                            res.updateConfiguration(newConfiguration, null);
                            if (OperatorUtils.isCTVolteDisabled(phoneId)) {
                                volteResVal = 0;
                                vilteResVal2 = 0;
                                wfcResVal2 = 0;
                            } else {
                                volteResVal = mapFeatureValue(res.getBoolean(17956925));
                                vilteResVal2 = mapFeatureValue(res.getBoolean(17956926));
                                wfcResVal2 = mapFeatureValue(res.getBoolean(17956927));
                            }
                            wfcResVal = wfcResVal2;
                            vilteResVal = vilteResVal2;
                        } catch (NumberFormatException e) {
                            Log.w(LOG_TAG, "Invalid mccMnc:" + mccMnc);
                            return;
                        }
                    } else {
                        Log.w(LOG_TAG, "Found test SIM on phone " + phoneId);
                        volteResVal = 1;
                        vilteResVal = 1;
                        wfcResVal = 1;
                    }
                    Log.d(LOG_TAG, "Set res capability: volte = " + volteResVal + ", vilte = " + vilteResVal + ", wfc = " + wfcResVal);
                    imsConfig.setImsResCapability(0, volteResVal);
                    imsConfig.setImsResCapability(1, vilteResVal);
                    imsConfig.setImsResCapability(2, wfcResVal);
                }
                Intent mIntent = new Intent(ImsConfigContract.ACTION_DYNAMIC_IMS_SWITCH_COMPLETE);
                mIntent.putExtra("phone", phoneId);
                mIntent.putExtra("ss", simState);
                context.sendBroadcast(mIntent);
                Log.d(LOG_TAG, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:" + phoneId + ", simState:" + simState);
            } catch (RemoteException e2) {
                Log.e(LOG_TAG, "SetImsCapability fail: " + e2);
            }
        } else if (simState.equalsIgnoreCase("ABSENT") || simState.equalsIgnoreCase("LOADED")) {
            Log.d(LOG_TAG, "updateImsServiceConfig after SIM event, phoneId:" + phoneId);
            updateImsServiceConfig(context, phoneId);
        }
    }

    private static int mapFeatureValue(boolean value) {
        if (value) {
            return 1;
        }
        return 0;
    }

    private static boolean isTestSim(int phoneId) {
        switch (phoneId) {
            case 0:
                boolean isTestSim = RadioCapabilitySwitchUtil.IMSI_READY.equals(SystemProperties.get("vendor.gsm.sim.ril.testsim", "0"));
                return isTestSim;
            case 1:
                boolean isTestSim2 = RadioCapabilitySwitchUtil.IMSI_READY.equals(SystemProperties.get("vendor.gsm.sim.ril.testsim.2", "0"));
                return isTestSim2;
            case 2:
                boolean isTestSim3 = RadioCapabilitySwitchUtil.IMSI_READY.equals(SystemProperties.get("vendor.gsm.sim.ril.testsim.3", "0"));
                return isTestSim3;
            case 3:
                boolean isTestSim4 = RadioCapabilitySwitchUtil.IMSI_READY.equals(SystemProperties.get("vendor.gsm.sim.ril.testsim.4", "0"));
                return isTestSim4;
            default:
                return false;
        }
    }

    private int getMainCapabilityPhoneId() {
        int phoneId = SystemProperties.getInt("persist.vendor.radio.simswitch", 1) - 1;
        if (phoneId < 0 || phoneId >= TelephonyManager.getDefault().getPhoneCount()) {
            return -1;
        }
        return phoneId;
    }

    private void updateImsServiceConfig(Context context, int phoneId) {
        if (this.mImsManagerOemPlugin == null) {
            this.mImsManagerOemPlugin = ExtensionFactory.makeOemPluginFactory().makeImsManagerPlugin(context);
        }
        if (ImsCommonUtil.supportMims()) {
            this.mImsManagerOemPlugin.updateImsServiceConfig(context, phoneId, true);
        } else if (phoneId == getMainCapabilityPhoneId()) {
            this.mImsManagerOemPlugin.updateImsServiceConfig(context, phoneId, true);
        } else if (DEBUG) {
            Log.d(LOG_TAG, "Do not update if phoneId is not main capability");
        }
    }
}
