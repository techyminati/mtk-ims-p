package com.mediatek.ims.config.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncResult;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.text.TextUtils;
import com.android.ims.ImsException;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ImsManagerOemPlugin;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
/* loaded from: classes.dex */
public class ImsConfigController {
    private static final String ACTION_CXP_NOTIFY_FEATURE = "com.mediatek.common.carrierexpress.cxp_notify_feature";
    static final int CONFIG_CMD_ERROR = 2;
    static final int CONFIG_CMD_SUCCESS = 1;
    static final int CONFIG_INTERRUPT_ERROR = 4;
    static final int CONFIG_TIMEOUT_ERROR = 3;
    private static final boolean DEBUG;
    static final int EVENT_IMS_CFG_CONFIG_CHANGED = 1003;
    static final int EVENT_IMS_CFG_CONFIG_LOADED = 1004;
    static final int EVENT_IMS_CFG_DYNAMIC_IMS_SWITCH_COMPLETE = 1001;
    static final int EVENT_IMS_CFG_FEATURE_CHANGED = 1002;
    static final int MSG_IMS_GET_FEATURE_DONE = 103;
    static final int MSG_IMS_GET_PROVISION_DONE = 101;
    static final int MSG_IMS_GET_RESOURCE_DONE = 106;
    static final int MSG_IMS_SET_FEATURE_DONE = 104;
    static final int MSG_IMS_SET_MDCFG_DONE = 107;
    static final int MSG_IMS_SET_PROVISION_DONE = 102;
    static final int MSG_IMS_SET_RESOURCE_DONE = 105;
    static final int MSG_RESET_WFC_MODE_FLAG = 108;
    static final int MSG_UPDATE_IMS_SERVICE_CONFIG = 109;
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.mLogTag.tel_dbg";
    private static final String TAG = "ImsConfigController";
    private Context mContext;
    private int mCurWfcMode;
    private Handler mEventHandler;
    private Object mFeatureValueLock;
    private Handler mHandler;
    private ImsManagerOemPlugin mImsManagerOemPlugin;
    private String mLogTag;
    private Object mMdCfgLock;
    private int mPhoneId;
    private Object mProvisionedValueLock;
    private BroadcastReceiver mReceiver;
    private Object mResourceValueLock;
    private ImsCommandsInterface mRilAdapter;
    private Object mWfcLock;

    static {
        boolean z = true;
        if (!TextUtils.equals(Build.TYPE, "eng") && SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        DEBUG = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ProvisioningResult {
        Object lockObj;
        String provisionInfo;
        int provisionResult;

        private ProvisioningResult() {
            this.provisionResult = 3;
            this.lockObj = new Object();
        }
    }

    /* loaded from: classes.dex */
    private class MdConfigResult {
        int configResult;
        Object lockObj;
        int requestConfigNum;
        int[] resultArray;

        private MdConfigResult() {
            this.requestConfigNum = 0;
            this.resultArray = null;
            this.configResult = 3;
            this.lockObj = new Object();
        }
    }

    /* loaded from: classes.dex */
    private class FeatureResult {
        int featureResult;
        int featureValue;
        Object lockObj;

        private FeatureResult() {
            this.lockObj = new Object();
        }
    }

    private ImsConfigController() {
        this.mPhoneId = -1;
        this.mContext = null;
        this.mFeatureValueLock = new Object();
        this.mProvisionedValueLock = new Object();
        this.mResourceValueLock = new Object();
        this.mWfcLock = new Object();
        this.mMdCfgLock = new Object();
        this.mCurWfcMode = -1;
        this.mImsManagerOemPlugin = null;
    }

    public ImsConfigController(Context context, int phoneId, ImsCommandsInterface imsRilAdapter) {
        this.mPhoneId = -1;
        this.mContext = null;
        this.mFeatureValueLock = new Object();
        this.mProvisionedValueLock = new Object();
        this.mResourceValueLock = new Object();
        this.mWfcLock = new Object();
        this.mMdCfgLock = new Object();
        this.mCurWfcMode = -1;
        this.mImsManagerOemPlugin = null;
        this.mContext = context;
        this.mPhoneId = phoneId;
        this.mRilAdapter = imsRilAdapter;
        this.mLogTag = "ImsConfigController[" + phoneId + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("ImsConfigThread-");
        sb.append(this.mPhoneId);
        HandlerThread configThread = new HandlerThread(sb.toString());
        configThread.start();
        HandlerThread eventThread = new HandlerThread("ImsEventThread-" + this.mPhoneId);
        eventThread.start();
        this.mHandler = new EventHandler(this.mPhoneId, configThread.getLooper());
        this.mEventHandler = new EventHandler(this.mPhoneId, eventThread.getLooper());
        this.mReceiver = new ImsConfigEventReceiver(this.mEventHandler, this.mPhoneId, this.mRilAdapter);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SIM_STATE_CHANGED");
        filter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        filter.addAction("com.mediatek.common.carrierexpress.cxp_notify_feature");
        if (RadioCapabilitySwitchUtil.isDssNoResetSupport()) {
            filter.addAction("android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE");
        }
        this.mContext.registerReceiver(this.mReceiver, filter);
        this.mRilAdapter.registerForImsCfgDynamicImsSwitchComplete(this.mHandler, 1001, null);
        this.mRilAdapter.registerForImsCfgConfigChanged(this.mHandler, 1003, null);
        this.mRilAdapter.registerForImsCfgFeatureChanged(this.mHandler, 1002, null);
        this.mRilAdapter.registerForImsCfgConfigLoaded(this.mHandler, 1004, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String messageToString(int msg) {
        switch (msg) {
            case 101:
                return "MSG_IMS_GET_PROVISION_DONE";
            case 102:
                return "MSG_IMS_SET_PROVISION_DONE";
            case 103:
                return "MSG_IMS_GET_FEATURE_DONE";
            case 104:
                return "MSG_IMS_SET_FEATURE_DONE";
            case MSG_IMS_SET_RESOURCE_DONE /* 105 */:
                return "MSG_IMS_SET_RESOURCE_DONE";
            case MSG_IMS_GET_RESOURCE_DONE /* 106 */:
                return "MSG_IMS_GET_RESOURCE_DONE";
            case MSG_IMS_SET_MDCFG_DONE /* 107 */:
                return "MSG_IMS_SET_MDCFG_DONE";
            case MSG_RESET_WFC_MODE_FLAG /* 108 */:
                return "MSG_RESET_WFC_MODE_FLAG";
            case MSG_UPDATE_IMS_SERVICE_CONFIG /* 109 */:
                return "MSG_UPDATE_IMS_SERVICE_CONFIG";
            default:
                switch (msg) {
                    case 1001:
                        return "EVENT_IMS_CFG_DYNAMIC_IMS_SWITCH_COMPLETE";
                    case 1002:
                        return "EVENT_IMS_CFG_FEATURE_CHANGED";
                    case 1003:
                        return "EVENT_IMS_CFG_CONFIG_CHANGED";
                    case 1004:
                        return "EVENT_IMS_CFG_CONFIG_LOADED";
                    default:
                        return MtkPhoneConstants.MVNO_TYPE_NONE + msg;
                }
        }
    }

    /* loaded from: classes.dex */
    class EventHandler extends Handler {
        private int mPhoneId;

        EventHandler(int phoneId, Looper looper) {
            super(looper);
            this.mPhoneId = phoneId;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (ImsConfigController.DEBUG) {
                String str = ImsConfigController.this.mLogTag;
                Rlog.d(str, "Received msg = " + msg.hashCode() + ", what = " + ImsConfigController.this.messageToString(msg.what));
            }
            int i = msg.what;
            int i2 = 0;
            switch (i) {
                case 101:
                    AsyncResult ar = (AsyncResult) msg.obj;
                    ProvisioningResult result = (ProvisioningResult) ar.userObj;
                    synchronized (result.lockObj) {
                        if (ar.exception != null) {
                            result.provisionResult = 2;
                            String str2 = ImsConfigController.this.mLogTag;
                            Rlog.d(str2, "MSG_IMS_GET_PROVISION_DONE: error ret null, e=" + ar.exception);
                        } else {
                            String str3 = (String) ar.result;
                            result.provisionInfo = str3;
                            ar.result = str3;
                            result.provisionResult = 1;
                            String str4 = ImsConfigController.this.mLogTag;
                            Rlog.d(str4, "MSG_IMS_GET_PROVISION_DONE: provisionInfo:" + result.provisionInfo);
                        }
                        result.lockObj.notify();
                    }
                    return;
                case 102:
                    AsyncResult ar2 = (AsyncResult) msg.obj;
                    ProvisioningResult result2 = (ProvisioningResult) ar2.userObj;
                    synchronized (result2.lockObj) {
                        if (ar2.exception != null) {
                            result2.provisionResult = 2;
                            String str5 = ImsConfigController.this.mLogTag;
                            Rlog.e(str5, "MSG_IMS_SET_PROVISION_DONE: error ret null, e=" + ar2.exception);
                        } else {
                            result2.provisionResult = 1;
                            if (ImsConfigController.DEBUG) {
                                Rlog.d(ImsConfigController.this.mLogTag, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!");
                            }
                        }
                        result2.lockObj.notify();
                    }
                    return;
                case 103:
                    AsyncResult ar3 = (AsyncResult) msg.obj;
                    FeatureResult result3 = (FeatureResult) ar3.userObj;
                    synchronized (result3.lockObj) {
                        if (ar3.exception != null) {
                            result3.featureResult = 2;
                            String str6 = ImsConfigController.this.mLogTag;
                            Rlog.d(str6, "MSG_IMS_GET_FEATURE_DONE: error ret null, e=" + ar3.exception);
                        } else {
                            result3.featureValue = ((Integer) ar3.result).intValue();
                            result3.featureResult = 1;
                            String str7 = ImsConfigController.this.mLogTag;
                            Rlog.d(str7, "MSG_IMS_GET_FEATURE_DONE: featureValue:" + result3.featureValue);
                        }
                        result3.lockObj.notify();
                    }
                    return;
                case 104:
                    AsyncResult ar4 = (AsyncResult) msg.obj;
                    FeatureResult result4 = (FeatureResult) ar4.userObj;
                    synchronized (result4.lockObj) {
                        if (ar4.exception != null) {
                            result4.featureResult = 2;
                            String str8 = ImsConfigController.this.mLogTag;
                            Rlog.e(str8, "MSG_IMS_SET_FEATURE_DONE: error ret null, e=" + ar4.exception);
                        } else {
                            result4.featureResult = 1;
                            if (ImsConfigController.DEBUG) {
                                Rlog.d(ImsConfigController.this.mLogTag, "MSG_IMS_SET_FEATURE_DONE: Finish set feature!");
                            }
                        }
                        result4.lockObj.notify();
                    }
                    return;
                case ImsConfigController.MSG_IMS_SET_RESOURCE_DONE /* 105 */:
                    AsyncResult ar5 = (AsyncResult) msg.obj;
                    FeatureResult result5 = (FeatureResult) ar5.userObj;
                    synchronized (result5.lockObj) {
                        if (ar5.exception != null) {
                            result5.featureResult = 2;
                            String str9 = ImsConfigController.this.mLogTag;
                            Rlog.e(str9, "MSG_IMS_SET_RESOURCE_DONE: error ret null, e=" + ar5.exception);
                        } else {
                            result5.featureResult = 1;
                            if (ImsConfigController.DEBUG) {
                                Rlog.d(ImsConfigController.this.mLogTag, "MSG_IMS_SET_RESOURCE_DONE: Finish set resource!");
                            }
                        }
                        result5.lockObj.notify();
                    }
                    return;
                case ImsConfigController.MSG_IMS_GET_RESOURCE_DONE /* 106 */:
                    AsyncResult ar6 = (AsyncResult) msg.obj;
                    FeatureResult result6 = (FeatureResult) ar6.userObj;
                    synchronized (result6.lockObj) {
                        if (ar6.exception != null) {
                            result6.featureResult = 2;
                            String str10 = ImsConfigController.this.mLogTag;
                            Rlog.e(str10, "MSG_IMS_GET_RESOURCE_DONE: error ret null, e=" + ar6.exception);
                        } else {
                            result6.featureValue = ((int[]) ar6.result)[0];
                            result6.featureResult = 1;
                        }
                        result6.lockObj.notify();
                    }
                    return;
                case ImsConfigController.MSG_IMS_SET_MDCFG_DONE /* 107 */:
                    AsyncResult ar7 = (AsyncResult) msg.obj;
                    MdConfigResult cfgResult = (MdConfigResult) ar7.userObj;
                    synchronized (cfgResult.lockObj) {
                        if (ar7.exception != null) {
                            int[] errorResult = new int[cfgResult.requestConfigNum];
                            while (i2 < errorResult.length) {
                                errorResult[i2] = -1;
                                i2++;
                            }
                            cfgResult.resultArray = errorResult;
                            cfgResult.configResult = 2;
                            String str11 = ImsConfigController.this.mLogTag;
                            Rlog.e(str11, "SET_MDCFG_DONE, error ret, e=" + ar7.exception);
                        } else {
                            String resultStr = (String) ar7.result;
                            String[] resultStrArray = resultStr.split(",");
                            int[] resultIntArray = new int[resultStrArray.length];
                            while (i2 < resultStrArray.length) {
                                resultIntArray[i2] = Integer.parseInt(resultStrArray[i2]);
                                i2++;
                            }
                            cfgResult.resultArray = resultIntArray;
                            cfgResult.configResult = 1;
                            if (ImsConfigController.DEBUG) {
                                Rlog.d(ImsConfigController.this.mLogTag, "SET_MDCFG_DONE, finish set MD Ims config!");
                            }
                        }
                        cfgResult.lockObj.notify();
                    }
                    return;
                case ImsConfigController.MSG_RESET_WFC_MODE_FLAG /* 108 */:
                    ImsConfigController.this.resetWfcModeFlag();
                    return;
                case ImsConfigController.MSG_UPDATE_IMS_SERVICE_CONFIG /* 109 */:
                    if (ImsConfigController.this.mImsManagerOemPlugin == null) {
                        ImsConfigController.this.mImsManagerOemPlugin = ExtensionFactory.makeOemPluginFactory().makeImsManagerPlugin(ImsConfigController.this.mContext);
                    }
                    ImsConfigController.this.mImsManagerOemPlugin.updateImsServiceConfig(ImsConfigController.this.mContext, RadioCapabilitySwitchUtil.getMainCapabilityPhoneId(), true);
                    return;
                default:
                    switch (i) {
                        case 1001:
                            Intent intent = new Intent(ImsConfigContract.ACTION_DYNAMIC_IMS_SWITCH_COMPLETE);
                            intent.putExtra("phone", this.mPhoneId);
                            ImsConfigController.this.mContext.sendBroadcast(intent);
                            String str12 = ImsConfigController.this.mLogTag;
                            Rlog.d(str12, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:" + this.mPhoneId);
                            return;
                        case 1002:
                            int[] value = (int[]) ((AsyncResult) msg.obj).result;
                            Intent intent2 = new Intent(ImsConfigContract.ACTION_IMS_FEATURE_CHANGED);
                            intent2.putExtra("phone_id", value[0]);
                            intent2.putExtra(ImsConfigContract.EXTRA_CHANGED_ITEM, value[1]);
                            intent2.putExtra("value", value[2]);
                            ImsConfigController.this.mContext.sendBroadcast(intent2);
                            if (ImsConfigController.DEBUG) {
                                Rlog.d(ImsConfigController.TAG, "EVENT_IMS_CFG_FEATURE_CHANGED: phoneId = " + value[0] + " feature =" + value[1] + " value=" + value[2]);
                                return;
                            }
                            return;
                        case 1003:
                        default:
                            return;
                        case 1004:
                            Intent intent3 = new Intent(ImsConfigContract.ACTION_CONFIG_LOADED);
                            intent3.putExtra("phone", this.mPhoneId);
                            ImsConfigController.this.mContext.sendBroadcast(intent3);
                            String str13 = ImsConfigController.this.mLogTag;
                            Rlog.d(str13, "EVENT_IMS_CFG_CONFIG_LOADED phoneId:" + this.mPhoneId);
                            return;
                    }
            }
        }
    }

    public int getFeatureValue(int featureId, int network) throws ImsException {
        int i;
        synchronized (this.mFeatureValueLock) {
            FeatureResult result = new FeatureResult();
            Message msg = this.mHandler.obtainMessage(103, result);
            synchronized (result.lockObj) {
                this.mRilAdapter.getImsCfgFeatureValue(featureId, network, msg);
                try {
                    result.lockObj.wait(10000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    result.featureResult = 4;
                }
            }
            if (isConfigSuccess(result.featureResult)) {
                i = result.featureValue;
            } else {
                throw new ImsException("Something wrong, reason:" + result.featureResult, 101);
            }
        }
        return i;
    }

    public void setFeatureValue(int featureId, int network, int value, int isLast) throws ImsException {
        synchronized (this.mFeatureValueLock) {
            FeatureResult result = new FeatureResult();
            Message msg = this.mHandler.obtainMessage(104, result);
            synchronized (result.lockObj) {
                this.mRilAdapter.setImsCfgFeatureValue(featureId, network, value, isLast, msg);
                try {
                    result.lockObj.wait(10000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    result.featureResult = 4;
                }
                if (!isConfigSuccess(result.featureResult)) {
                    throw new ImsException("Something wrong, reason:" + result.featureResult, 101);
                }
            }
        }
    }

    public String getProvisionedValue(int configId) throws ImsException {
        String str;
        synchronized (this.mProvisionedValueLock) {
            ProvisioningResult result = new ProvisioningResult();
            Message msg = this.mHandler.obtainMessage(101, result);
            synchronized (result.lockObj) {
                this.mRilAdapter.getImsCfgProvisionValue(configId, msg);
                try {
                    result.lockObj.wait(10000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    result.provisionResult = 4;
                }
            }
            if (isConfigSuccess(result.provisionResult)) {
                str = result.provisionInfo;
            } else {
                throw new ImsException("Something wrong, reason:" + result.provisionResult, 101);
            }
        }
        return str;
    }

    public void setProvisionedValue(int configId, String value) throws ImsException {
        synchronized (this.mProvisionedValueLock) {
            ProvisioningResult result = new ProvisioningResult();
            Message msg = this.mHandler.obtainMessage(102, result);
            synchronized (result.lockObj) {
                this.mRilAdapter.setImsCfgProvisionValue(configId, value, msg);
                try {
                    result.lockObj.wait(10000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    result.provisionResult = 4;
                }
            }
            if (!isConfigSuccess(result.provisionResult)) {
                throw new ImsException("Something wrong, reason:" + result.provisionResult, 101);
            }
        }
    }

    public void setProvisionedStringValue(int configId, String value) throws ImsException {
        setProvisionedValue(configId, value);
    }

    public synchronized void setImsResCapability(int featureId, int value) throws ImsException {
        synchronized (this.mResourceValueLock) {
            FeatureResult result = new FeatureResult();
            Message msg = this.mHandler.obtainMessage(MSG_IMS_SET_RESOURCE_DONE, result);
            synchronized (result.lockObj) {
                this.mRilAdapter.setImsCfgResourceCapValue(featureId, value, msg);
                try {
                    result.lockObj.wait(10000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    result.featureResult = 4;
                }
                if (!isConfigSuccess(result.featureResult)) {
                    throw new ImsException("Something wrong, reason:" + result.featureResult, 101);
                }
            }
        }
    }

    public synchronized int getImsResCapability(int featureId) throws ImsException {
        int i;
        synchronized (this.mResourceValueLock) {
            FeatureResult result = new FeatureResult();
            Message msg = this.mHandler.obtainMessage(MSG_IMS_GET_RESOURCE_DONE, result);
            synchronized (result.lockObj) {
                this.mRilAdapter.getImsCfgResourceCapValue(featureId, msg);
                try {
                    result.lockObj.wait(10000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    result.featureResult = 4;
                }
            }
            if (isConfigSuccess(result.featureResult)) {
                i = result.featureValue;
            } else {
                throw new ImsException("Something wrong, reason:" + result.featureResult, 101);
            }
        }
        return i;
    }

    private static boolean isConfigSuccess(int reason) {
        if (reason != 1) {
            return false;
        }
        return true;
    }

    public synchronized void setVoltePreference(int mode) {
        String str = this.mLogTag;
        Rlog.i(str, "setVoltePreference mode:" + mode + ", phoneId:" + this.mPhoneId);
        this.mRilAdapter.setVoiceDomainPreference(mode, null);
    }

    public int[] setModemImsCfg(String[] keys, String[] values, int type) {
        synchronized (this.mMdCfgLock) {
            try {
                if (keys == null) {
                    Rlog.d(this.mLogTag, "keys is null, return null");
                    return null;
                }
                if (keys.length >= 1 && values.length >= 1) {
                    if (keys.length == values.length) {
                        Rlog.d(this.mLogTag, "keys and values length equals");
                        String keysStr = ImsConfigUtils.arrayToString(keys);
                        String valuesStr = ImsConfigUtils.arrayToString(values);
                        String str = this.mLogTag;
                        Rlog.d(str, "keysStr:" + keysStr + ", valuesStr:" + valuesStr);
                        MdConfigResult cfgResult = new MdConfigResult();
                        cfgResult.requestConfigNum = keys.length;
                        Message msg = this.mHandler.obtainMessage(MSG_IMS_SET_MDCFG_DONE, cfgResult);
                        synchronized (cfgResult.lockObj) {
                            this.mRilAdapter.setModemImsCfg(keysStr, valuesStr, type, msg);
                            try {
                                cfgResult.lockObj.wait(10000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                                cfgResult.configResult = 4;
                            }
                        }
                        int[] resultArray = cfgResult.resultArray;
                        return resultArray;
                    }
                    Rlog.d(this.mLogTag, "keys and values length not equals");
                    return null;
                }
                Rlog.d(this.mLogTag, "keys or values length is smaller than 1, return null");
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetWfcModeFlag() {
        Rlog.d(this.mLogTag, "resetWfcModeFlag()");
        synchronized (this.mWfcLock) {
            this.mCurWfcMode = -1;
        }
    }

    public void sendWfcProfileInfo(int rilWfcMode) {
        synchronized (this.mWfcLock) {
            String str = this.mLogTag;
            Rlog.i(str, "sendWfcProfileInfo rilWfcMode:" + rilWfcMode + ", mCurWfcMode:" + this.mCurWfcMode);
            if (rilWfcMode != this.mCurWfcMode) {
                this.mRilAdapter.sendWfcProfileInfo(rilWfcMode, null);
                if (rilWfcMode != 0) {
                    if (DEBUG) {
                        Rlog.d(this.mLogTag, "Not wifi-only mode, turn radio ON");
                    }
                    ImsConfigUtils.sendWifiOnlyModeIntent(this.mContext, this.mPhoneId, false);
                } else if (ImsConfigUtils.isWfcEnabledByUser(this.mContext, this.mPhoneId)) {
                    if (DEBUG) {
                        Rlog.d(this.mLogTag, "Wifi-only and WFC setting enabled, send intent to turn radio OFF");
                    }
                    ImsConfigUtils.sendWifiOnlyModeIntent(this.mContext, this.mPhoneId, true);
                } else {
                    if (DEBUG) {
                        Rlog.d(this.mLogTag, "Wifi-only and WFC setting disabled, send intent to turn radio ON");
                    }
                    ImsConfigUtils.sendWifiOnlyModeIntent(this.mContext, this.mPhoneId, false);
                }
                this.mCurWfcMode = rilWfcMode;
            }
        }
    }
}
