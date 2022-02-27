package com.mediatek.ims.config.internal;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncResult;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.android.ims.ImsException;
import com.android.internal.telephony.CommandException;
import com.mediatek.ims.config.DefaultConfigPolicyFactory;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.config.ImsConfigPolicy;
import com.mediatek.ims.config.ImsConfigSettings;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.ImsManagerOemPlugin;
import com.mediatek.ims.ril.ImsCommandsInterface;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ImsConfigStorage {
    private static final String ACTION_CXP_NOTIFY_FEATURE = "com.mediatek.common.carrierexpress.cxp_notify_feature";
    private static final boolean DEBUG;
    static final int EVENT_GET_PROVISION_DONE_URC = 6;
    static ImsFeatureMap[] FeatureSendArray = null;
    static final int MDCONFIG_CMD_ERROR = 32;
    static final int MDCONFIG_CMD_SUCCESS = 33;
    static final int MDCONFIG_INTERRUPT_ERROR = 31;
    static final int MDCONFIG_TIMEOUT_ERROR = 30;
    static final int MSG_FORCE_TO_SEND_WFC_MODE = 10;
    static final int MSG_IMS_GET_PROVISION_DONE = 4;
    static final int MSG_IMS_SET_MDCFG_DONE = 7;
    static final int MSG_IMS_SET_PROVISION_DONE = 5;
    static final int MSG_LOAD_CONFIG_STORAGE = 1;
    static final int MSG_RESET_BROADCAST_FLAG = 2;
    static final int MSG_RESET_CONFIG_STORAGE = 0;
    static final int MSG_RESET_WFC_MODE_FLAG = 8;
    static final int MSG_SIM_ABSENT_ECC_BROADCAST = 3;
    static final int MSG_UPDATE_IMS_SERVICE_CONFIG = 9;
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    static final int PROVISION_CMD_ERROR = 22;
    static final int PROVISION_CMD_SUCCESS = 23;
    static final int PROVISION_INTERRUPT_ERROR = 21;
    static final int PROVISION_NO_DEFAULT_VALUE = 25;
    static final int PROVISION_TIMEOUT_ERROR = 20;
    static final int PROVISION_URC_PARSE_ERROR = 24;
    private static final String TAG = "ImsConfigStorage";
    private static final boolean TELDBG;
    private int IMS_PROVISION_NO_DEFAULT_ERROR;
    private int curWfcMode;
    private ConfigHelper mConfigHelper;
    private Context mContext;
    private FeatureHelper mFeatureHelper;
    private Object mFeatureLock;
    private Handler mHandler;
    private ImsManagerOemPlugin mImsManagerOemPlugin;
    private Object mMdCfgLock;
    private int mPhoneId;
    private Object mProvisionedStringValueLock;
    private Object mProvisionedValueLock;
    private BroadcastReceiver mReceiver;
    private ResourceHelper mResourceHelper;
    private ImsCommandsInterface mRilAdapter;
    private Object mWfcLock;

    static {
        boolean z = true;
        DEBUG = TextUtils.equals(Build.TYPE, "eng") || SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1;
        if (SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        TELDBG = z;
        FeatureSendArray = new ImsFeatureMap[4];
    }

    private ImsConfigStorage() {
        this.mFeatureHelper = null;
        this.mConfigHelper = null;
        this.mResourceHelper = null;
        this.mPhoneId = -1;
        this.mContext = null;
        this.curWfcMode = -1;
        this.mImsManagerOemPlugin = null;
        this.IMS_PROVISION_NO_DEFAULT_ERROR = 6604;
        this.mFeatureLock = new Object();
        this.mProvisionedValueLock = new Object();
        this.mProvisionedStringValueLock = new Object();
        this.mWfcLock = new Object();
        this.mMdCfgLock = new Object();
    }

    /* loaded from: classes.dex */
    private class ProvisioningResult {
        Object lockObj;
        String[] provisionInfo;
        int provisionResult;

        private ProvisioningResult() {
            this.provisionResult = 20;
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
            this.configResult = 30;
            this.lockObj = new Object();
        }
    }

    public ImsConfigStorage(Context context, int phoneId, ImsCommandsInterface imsRilAdapter) {
        this.mFeatureHelper = null;
        this.mConfigHelper = null;
        this.mResourceHelper = null;
        this.mPhoneId = -1;
        this.mContext = null;
        this.curWfcMode = -1;
        this.mImsManagerOemPlugin = null;
        this.IMS_PROVISION_NO_DEFAULT_ERROR = 6604;
        this.mFeatureLock = new Object();
        this.mProvisionedValueLock = new Object();
        this.mProvisionedStringValueLock = new Object();
        this.mWfcLock = new Object();
        this.mMdCfgLock = new Object();
        Log.d(TAG, "ImsConfigStorage() on phone " + phoneId);
        this.mContext = context;
        this.mPhoneId = phoneId;
        this.mRilAdapter = imsRilAdapter;
        FeatureSendArray[this.mPhoneId] = new ImsFeatureMap(this.mPhoneId);
        HandlerThread thread = new HandlerThread("ImsConfig-" + this.mPhoneId);
        thread.start();
        this.mHandler = new CarrierConfigHandler(this.mPhoneId, thread.getLooper());
        this.mFeatureHelper = new FeatureHelper(this.mContext, this.mPhoneId);
        this.mConfigHelper = new ConfigHelper(this.mContext, this.mHandler, this.mPhoneId);
        this.mResourceHelper = new ResourceHelper(this.mContext, this.mPhoneId);
        this.mFeatureHelper.initFeatureStorage();
        this.mRilAdapter.registerForGetProvisionComplete(this.mHandler, 6, null);
        resetFeatureSendCmd();
        this.mReceiver = new ImsConfigReceiver(this.mHandler, this.mPhoneId, this.mRilAdapter);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SIM_STATE_CHANGED");
        filter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        filter.addAction("com.mediatek.common.carrierexpress.cxp_notify_feature");
        if (RadioCapabilitySwitchUtil.isDssNoResetSupport()) {
            filter.addAction("android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE");
        }
        this.mContext.registerReceiver(this.mReceiver, filter);
    }

    /* loaded from: classes.dex */
    class CarrierConfigHandler extends Handler {
        private boolean isGetProvisionUrc;
        private int mPhoneId;
        private String[] provisionInfoTemp;

        CarrierConfigHandler(int phoneId, Looper looper) {
            super(looper);
            this.mPhoneId = phoneId;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (ImsConfigStorage.DEBUG) {
                Log.d(ImsConfigStorage.TAG, "Received msg = " + msg.hashCode() + ", what = " + msg.what);
            }
            int i = 0;
            switch (msg.what) {
                case 0:
                    Log.d(ImsConfigStorage.TAG, "Reset config storage");
                    ImsConfigStorage.this.mConfigHelper.clear();
                    return;
                case 1:
                    synchronized (ImsConfigStorage.this.mConfigHelper) {
                        int opCode = ((Integer) msg.obj).intValue();
                        if (ImsConfigStorage.this.mConfigHelper.getOpCode() != opCode) {
                            ImsConfigStorage.this.mConfigHelper.setOpCode(opCode);
                            Log.d(ImsConfigStorage.TAG, "Start load config storage for " + opCode + " on phone " + this.mPhoneId);
                            ImsConfigStorage.this.mConfigHelper.clear();
                            ImsConfigStorage.this.mConfigHelper.init(opCode);
                            ImsConfigStorage.this.mConfigHelper.setInitDone(true);
                            Log.d(ImsConfigStorage.TAG, "Finish Loading config storage for " + opCode);
                        } else {
                            Log.d(ImsConfigStorage.TAG, "Skip reloading config by same opCode: " + opCode + " on phone " + this.mPhoneId);
                            ImsConfigStorage.this.mConfigHelper.setInitDone(true);
                        }
                    }
                    return;
                case 2:
                    ImsConfigStorage.this.resetFeatureSendCmd();
                    ImsConfigStorage.this.mFeatureHelper.resetBroadcastFlag();
                    return;
                case 3:
                    ImsConfigProvider.ECCAllowSendCmd.put(Integer.valueOf(this.mPhoneId), true);
                    if (ImsConfigStorage.this.mFeatureHelper.isAllFeatureFalse()) {
                        ImsConfigProvider.ECCAllowBroadcast.put(Integer.valueOf(this.mPhoneId), true);
                        Log.d(ImsConfigStorage.TAG, "All feature false after sim absent,should broadcast VoLTE feature value once for ECC");
                        return;
                    }
                    return;
                case 4:
                    if (ImsConfigStorage.DEBUG) {
                        Log.d(ImsConfigStorage.TAG, "MSG_IMS_GET_PROVISION_DONE: Enter messege");
                    }
                    AsyncResult ar = (AsyncResult) msg.obj;
                    ProvisioningResult result = (ProvisioningResult) ar.userObj;
                    synchronized (result.lockObj) {
                        if (ar.exception == null) {
                            if (this.isGetProvisionUrc && this.provisionInfoTemp.length >= 2) {
                                result.provisionInfo = new String[2];
                                result.provisionInfo[0] = this.provisionInfoTemp[0];
                                result.provisionInfo[1] = this.provisionInfoTemp[1];
                                result.provisionResult = 23;
                                Log.d(ImsConfigStorage.TAG, "MSG_IMS_GET_PROVISION_DONE: provisionInfo[0]:" + result.provisionInfo[0] + ", provisionInfo[1]:" + result.provisionInfo[1]);
                            }
                            Log.e(ImsConfigStorage.TAG, "MSG_IMS_GET_PROVISION_DONE: Error getting, URC error or no URC received!");
                            result.provisionResult = 22;
                        } else if (!(ar.exception instanceof CommandException) || ar.exception.getCommandError() != CommandException.Error.OEM_ERROR_24) {
                            result.provisionResult = 22;
                            Log.d(ImsConfigStorage.TAG, "MSG_IMS_GET_PROVISION_DONE: error ret null, e=" + ar.exception);
                        } else {
                            result.provisionResult = 25;
                            Log.d(ImsConfigStorage.TAG, "MSG_IMS_GET_PROVISION_DONE: MD no default value");
                        }
                        result.lockObj.notify();
                        if (ImsConfigStorage.DEBUG) {
                            Log.d(ImsConfigStorage.TAG, "MSG_IMS_GET_PROVISION_DONE: notify result");
                        }
                    }
                    return;
                case 5:
                    if (ImsConfigStorage.DEBUG) {
                        Log.d(ImsConfigStorage.TAG, "MSG_IMS_SET_PROVISION_DONE: Enter messege");
                    }
                    AsyncResult ar2 = (AsyncResult) msg.obj;
                    ProvisioningResult result2 = (ProvisioningResult) ar2.userObj;
                    synchronized (result2.lockObj) {
                        if (ar2.exception != null) {
                            result2.provisionResult = 22;
                            Log.e(ImsConfigStorage.TAG, "MSG_IMS_SET_PROVISION_DONE: error ret null, e=" + ar2.exception);
                        } else {
                            result2.provisionResult = 23;
                            Log.d(ImsConfigStorage.TAG, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!");
                        }
                        result2.lockObj.notify();
                        if (ImsConfigStorage.DEBUG) {
                            Log.d(ImsConfigStorage.TAG, "MSG_IMS_SET_PROVISION_DONE: notify result");
                        }
                    }
                    return;
                case 6:
                    if (ImsConfigStorage.DEBUG) {
                        Log.d(ImsConfigStorage.TAG, "EVENT_GET_PROVISION_DONE_URC: Enter messege");
                    }
                    AsyncResult ar3 = (AsyncResult) msg.obj;
                    this.provisionInfoTemp = (String[]) ar3.result;
                    this.isGetProvisionUrc = false;
                    if (ar3.exception != null) {
                        Log.e(ImsConfigStorage.TAG, "EVENT_GET_PROVISION_DONE_URC: error, e=" + ar3.exception);
                        return;
                    }
                    Log.d(ImsConfigStorage.TAG, "EVENT_GET_PROVISION_DONE_URC: provisionInfoTemp.length: " + this.provisionInfoTemp.length);
                    if (this.provisionInfoTemp != null && this.provisionInfoTemp.length >= 2) {
                        this.isGetProvisionUrc = true;
                        return;
                    }
                    return;
                case 7:
                    if (ImsConfigStorage.DEBUG) {
                        Log.d(ImsConfigStorage.TAG, "MSG_IMS_SET_MDCFG_DONE: Enter messege");
                    }
                    AsyncResult ar4 = (AsyncResult) msg.obj;
                    MdConfigResult cfgResult = (MdConfigResult) ar4.userObj;
                    synchronized (cfgResult.lockObj) {
                        if (ar4.exception != null) {
                            int[] errorResult = new int[cfgResult.requestConfigNum];
                            while (i < errorResult.length) {
                                errorResult[i] = -1;
                                i++;
                            }
                            cfgResult.resultArray = errorResult;
                            cfgResult.configResult = 32;
                            Log.e(ImsConfigStorage.TAG, "SET_MDCFG_DONE, error ret, e=" + ar4.exception);
                        } else {
                            String resultStr = (String) ar4.result;
                            String[] resultStrArray = resultStr.split(",");
                            int[] resultIntArray = new int[resultStrArray.length];
                            while (i < resultStrArray.length) {
                                resultIntArray[i] = Integer.parseInt(resultStrArray[i]);
                                i++;
                            }
                            cfgResult.resultArray = resultIntArray;
                            cfgResult.configResult = 33;
                            Log.d(ImsConfigStorage.TAG, "SET_MDCFG_DONE, finish set MD Ims config!");
                        }
                        cfgResult.lockObj.notify();
                        if (ImsConfigStorage.DEBUG) {
                            Log.d(ImsConfigStorage.TAG, "SET_MDCFG_DONE, notify result");
                        }
                    }
                    return;
                case 8:
                    ImsConfigStorage.this.resetWfcModeFlag();
                    return;
                case 9:
                    if (ImsConfigStorage.this.mImsManagerOemPlugin == null) {
                        ImsConfigStorage.this.mImsManagerOemPlugin = ExtensionFactory.makeOemPluginFactory().makeImsManagerPlugin(ImsConfigStorage.this.mContext);
                    }
                    ImsConfigStorage.this.mImsManagerOemPlugin.updateImsServiceConfig(ImsConfigStorage.this.mContext, RadioCapabilitySwitchUtil.getMainCapabilityPhoneId(), true);
                    return;
                case 10:
                    if (ImsConfigStorage.this.curWfcMode == -1) {
                        Log.i(ImsConfigStorage.TAG, "Should not set invalid wfc mode");
                        return;
                    }
                    int oldWfcMode = ImsConfigStorage.this.curWfcMode;
                    ImsConfigStorage.this.resetWfcModeFlag();
                    ImsConfigStorage.this.sendWfcProfileInfo(oldWfcMode);
                    return;
                default:
                    return;
            }
        }
    }

    public int getFeatureValue(int featureId, int network) throws ImsException {
        int featureValue;
        synchronized (this.mFeatureLock) {
            featureValue = this.mFeatureHelper.getFeatureValue(featureId, network);
        }
        return featureValue;
    }

    public void setFeatureValue(int featureId, int network, int value) throws ImsException {
        synchronized (this.mFeatureLock) {
            this.mFeatureHelper.updateFeature(featureId, network, value);
        }
    }

    public int getProvisionedValue(int configId) throws ImsException {
        synchronized (this.mProvisionedValueLock) {
            if (isProvisionStoreModem(configId)) {
                ProvisioningResult result = new ProvisioningResult();
                String mProvisionStr = ImsConfigSettings.getProvisionStr(configId);
                Message msg = this.mHandler.obtainMessage(4, result);
                synchronized (result.lockObj) {
                    this.mRilAdapter.getProvisionValue(this.mPhoneId, mProvisionStr, msg);
                    try {
                        result.lockObj.wait(10000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        result.provisionResult = 21;
                    }
                }
                if (result.provisionResult == 25) {
                    enforceConfigStorageInit("MD no default value, getProvisionedValue(" + configId + ")");
                    return this.mConfigHelper.getConfigValue(ImsConfigContract.TABLE_MASTER, configId);
                } else if (isProvisionSuccess(result.provisionResult)) {
                    return Integer.parseInt(result.provisionInfo[1]);
                } else {
                    throw new ImsException("Something wrong, reason:" + result.provisionResult, 101);
                }
            } else {
                enforceConfigStorageInit("getProvisionedValue(" + configId + ")");
                return this.mConfigHelper.getConfigValue(ImsConfigContract.TABLE_MASTER, configId);
            }
        }
    }

    public String getProvisionedStringValue(int configId) throws ImsException {
        synchronized (this.mProvisionedStringValueLock) {
            if (isProvisionStoreModem(configId)) {
                ProvisioningResult result = new ProvisioningResult();
                String mProvisionStr = ImsConfigSettings.getProvisionStr(configId);
                Message msg = this.mHandler.obtainMessage(4, result);
                synchronized (result.lockObj) {
                    this.mRilAdapter.getProvisionValue(this.mPhoneId, mProvisionStr, msg);
                    try {
                        result.lockObj.wait(10000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        result.provisionResult = 21;
                    }
                }
                if (result.provisionResult == 25) {
                    enforceConfigStorageInit("MD no default value, getProvisionedStringValue(" + configId + ")");
                    return this.mConfigHelper.getConfigStringValue(ImsConfigContract.TABLE_MASTER, configId);
                } else if (isProvisionSuccess(result.provisionResult)) {
                    return result.provisionInfo[1];
                } else {
                    throw new ImsException("Something wrong, reason:" + result.provisionResult, 101);
                }
            } else {
                enforceConfigStorageInit("getProvisionedStringValue(" + configId + ")");
                return this.mConfigHelper.getConfigStringValue(ImsConfigContract.TABLE_MASTER, configId);
            }
        }
    }

    public void setProvisionedValue(int configId, int value) throws ImsException {
        synchronized (this.mProvisionedValueLock) {
            enforceConfigStorageInit("setProvisionedValue(" + configId + ", " + value + ")");
            if (isProvisionStoreModem(configId)) {
                ProvisioningResult result = new ProvisioningResult();
                String mProvisionStr = ImsConfigSettings.getProvisionStr(configId);
                Message msg = this.mHandler.obtainMessage(5, result);
                synchronized (result.lockObj) {
                    this.mRilAdapter.setProvisionValue(this.mPhoneId, mProvisionStr, Integer.toString(value), msg);
                    try {
                        result.lockObj.wait(10000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        result.provisionResult = 21;
                    }
                }
                if (!isProvisionSuccess(result.provisionResult)) {
                    throw new ImsException("Something wrong, reason:" + result.provisionResult, 101);
                }
            }
            this.mConfigHelper.addConfig(ImsConfigContract.TABLE_PROVISION, configId, 0, value);
            this.mConfigHelper.updateConfig(ImsConfigContract.TABLE_MASTER, configId, 0, value);
        }
    }

    public void setProvisionedStringValue(int configId, String value) throws ImsException {
        synchronized (this.mProvisionedStringValueLock) {
            enforceConfigStorageInit("setProvisionedStringValue(" + configId + ", " + value + ")");
            if (isProvisionStoreModem(configId)) {
                ProvisioningResult result = new ProvisioningResult();
                String mProvisionStr = ImsConfigSettings.getProvisionStr(configId);
                Message msg = this.mHandler.obtainMessage(5, result);
                synchronized (result.lockObj) {
                    this.mRilAdapter.setProvisionValue(this.mPhoneId, mProvisionStr, value, msg);
                    try {
                        result.lockObj.wait(10000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        result.provisionResult = 21;
                    }
                }
                if (!isProvisionSuccess(result.provisionResult)) {
                    throw new ImsException("Something wrong, reason:" + result.provisionResult, 101);
                }
            }
            this.mConfigHelper.addConfig(ImsConfigContract.TABLE_PROVISION, configId, 1, value);
            this.mConfigHelper.updateConfig(ImsConfigContract.TABLE_MASTER, configId, 1, value);
        }
    }

    public synchronized void setImsResCapability(int featureId, int value) throws ImsException {
        this.mResourceHelper.updateResource(featureId, value);
    }

    public synchronized int getImsResCapability(int featureId) throws ImsException {
        return this.mResourceHelper.getResourceValue(featureId);
    }

    private void enforceConfigStorageInit(String msg) throws ImsException {
        if (!this.mConfigHelper.isInitDone()) {
            Log.e(TAG, msg);
            throw new ImsException("Config storage not ready", 102);
        }
    }

    private static boolean isProvisionStoreModem(int configId) {
        boolean checkIsStoreModem = ImsConfigSettings.getIsStoreModem(configId);
        if (DEBUG) {
            Log.d(TAG, "isProvisionStoreModem: " + configId + ", checkIsStoreModem: " + checkIsStoreModem);
        }
        return checkIsStoreModem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetFeatureSendCmd() {
        HashMap<Integer, Boolean> map = FeatureSendArray[this.mPhoneId].getFeatureMap();
        map.put(0, false);
        map.put(1, false);
        map.put(2, false);
        map.put(3, false);
    }

    private static boolean isProvisionSuccess(int reason) {
        if (reason != 23) {
            return false;
        }
        return true;
    }

    public void resetConfigStorage() {
        resetConfigStorage(0);
    }

    public void resetConfigStorage(int opCode) {
        Log.d(TAG, "resetConfigStorage(" + opCode + ")");
        synchronized (this.mConfigHelper) {
            this.mConfigHelper.clear();
            this.mConfigHelper.init(opCode);
        }
    }

    public void resetFeatureStorage() {
        Log.d(TAG, "resetFeatureStorage()");
        synchronized (this.mFeatureHelper) {
            this.mFeatureHelper.clear();
        }
    }

    public synchronized void setVoltePreference(int mode) {
        Log.i(TAG, "setVoltePreference mode:" + mode + ", phoneId:" + this.mPhoneId);
        this.mRilAdapter.setVoiceDomainPreference(mode, null);
    }

    public void sendWfcProfileInfo(int rilWfcMode) {
        synchronized (this.mWfcLock) {
            Log.i(TAG, "sendWfcProfileInfo rilWfcMode:" + rilWfcMode + ", curWfcMode:" + this.curWfcMode);
            if (rilWfcMode != this.curWfcMode) {
                this.mRilAdapter.sendWfcProfileInfo(rilWfcMode, null);
                if (rilWfcMode != 0) {
                    if (DEBUG) {
                        Log.d(TAG, "Not wifi-only mode, trun radio ON");
                    }
                    ImsConfigUtils.sendWifiOnlyModeIntent(this.mContext, this.mPhoneId, false);
                } else if (ImsConfigUtils.isWfcEnabledByUser(this.mContext, this.mPhoneId)) {
                    if (DEBUG) {
                        Log.d(TAG, "Wifi-only and WFC setting enabled, send intent to turn radio OFF");
                    }
                    ImsConfigUtils.sendWifiOnlyModeIntent(this.mContext, this.mPhoneId, true);
                } else {
                    if (DEBUG) {
                        Log.d(TAG, "Wifi-only and WFC setting disabled, send intent to turn radio ON");
                    }
                    ImsConfigUtils.sendWifiOnlyModeIntent(this.mContext, this.mPhoneId, false);
                }
                this.curWfcMode = rilWfcMode;
            }
        }
    }

    public int[] setModemImsCfg(String[] keys, String[] values, int type) {
        synchronized (this.mMdCfgLock) {
            try {
                if (keys == null) {
                    Log.d(TAG, "keys is null, return null");
                    return null;
                }
                if (keys.length >= 1 && values.length >= 1) {
                    if (keys.length == values.length) {
                        Log.d(TAG, "keys and values length equals");
                        String keysStr = ImsConfigUtils.arrayToString(keys);
                        String valuesStr = ImsConfigUtils.arrayToString(values);
                        Log.d(TAG, "keysStr:" + keysStr + ", valuesStr:" + valuesStr);
                        MdConfigResult cfgResult = new MdConfigResult();
                        cfgResult.requestConfigNum = keys.length;
                        Message msg = this.mHandler.obtainMessage(7, cfgResult);
                        synchronized (cfgResult.lockObj) {
                            this.mRilAdapter.setModemImsCfg(keysStr, valuesStr, type, msg);
                            try {
                                cfgResult.lockObj.wait(10000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                                cfgResult.configResult = 31;
                            }
                        }
                        int[] resultArray = cfgResult.resultArray;
                        return resultArray;
                    }
                    Log.d(TAG, "keys and values length not equals");
                    return null;
                }
                Log.d(TAG, "keys or values length is smaller than 1, return null");
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetWfcModeFlag() {
        if (TELDBG) {
            Log.d(TAG, "resetWfcModeFlag()");
        }
        synchronized (this.mWfcLock) {
            this.curWfcMode = -1;
        }
    }

    /* loaded from: classes.dex */
    private static class FeatureHelper {
        private ContentResolver mContentResolver;
        private Context mContext;
        private HashMap<Integer, Integer> mIsFeatureBroadcast = new HashMap<>();
        private int mPhoneId;

        FeatureHelper(Context context, int phoneId) {
            this.mContext = null;
            this.mContentResolver = null;
            this.mPhoneId = phoneId;
            this.mContext = context;
            this.mContentResolver = this.mContext.getContentResolver();
            resetBroadcastFlag();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initFeatureStorage() {
            int volte = ImsConfigUtils.getFeaturePropValue(ImsConfigUtils.PROPERTY_VOLTE_ENALBE, this.mPhoneId);
            updateFeature(0, 13, volte);
            Log.d(ImsConfigStorage.TAG, "updateFeature: VoLTE initial value:" + volte + " for phoneId:" + this.mPhoneId);
            int vilte = ImsConfigUtils.getFeaturePropValue(ImsConfigUtils.PROPERTY_VILTE_ENALBE, this.mPhoneId);
            updateFeature(1, 13, vilte);
            Log.d(ImsConfigStorage.TAG, "updateFeature: ViLTE initial value:" + vilte + " for phoneId:" + this.mPhoneId);
            int vowifi = ImsConfigUtils.getFeaturePropValue(ImsConfigUtils.PROPERTY_WFC_ENALBE, this.mPhoneId);
            updateFeature(2, 18, vowifi);
            Log.d(ImsConfigStorage.TAG, "updateFeature: VoWIFI initial value:" + vowifi + " for phoneId:" + this.mPhoneId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            String[] args = {String.valueOf(this.mPhoneId)};
            this.mContentResolver.delete(ImsConfigContract.Feature.CONTENT_URI, "phone_id = ?", args);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateFeature(int featureId, int network, int value) {
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put("feature_id", Integer.valueOf(featureId));
            cv.put("network_id", Integer.valueOf(network));
            cv.put("value", Integer.valueOf(value));
            try {
                int curValue = getFeatureValue(featureId, network);
                if (ImsConfigStorage.DEBUG) {
                    Log.d(ImsConfigStorage.TAG, "updateFeature() comparing: curValue: " + curValue + ", value:" + value);
                }
                if (!checkIfBroadcastOnce(featureId, this.mPhoneId) || curValue != value || curValue == -1) {
                    this.mContentResolver.update(ImsConfigContract.Feature.getUriWithFeatureId(this.mPhoneId, featureId, network), cv, null, null);
                }
            } catch (ImsException e) {
                Log.e(ImsConfigStorage.TAG, "updateFeature() ImsException featureId:" + featureId + ", value:" + value);
                this.mContentResolver.insert(ImsConfigContract.Feature.CONTENT_URI, cv);
            }
        }

        int getFeatureValue(int featureId, int network) throws ImsException {
            Cursor c = null;
            String[] projection = {"phone_id", "feature_id", "network_id", "value"};
            try {
                try {
                    c = this.mContentResolver.query(ImsConfigContract.Feature.getUriWithFeatureId(this.mPhoneId, featureId, network), projection, null, null, null);
                    if (c == null || c.getCount() != 1) {
                        throw new ImsException("Feature " + featureId + " not assigned with value!", 101);
                    }
                    c.moveToFirst();
                    int valueIndex = c.getColumnIndex("value");
                    int result = c.getInt(valueIndex);
                    c.close();
                    return result;
                } catch (Exception e) {
                    throw new ImsException("Feature " + featureId + " not assigned with value! or something wrong with cursor", 101);
                }
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }

        private boolean checkIfBroadcastOnce(int feature, int phoneId) {
            String simState = ImsConfigProvider.LatestSimState.get(Integer.valueOf(phoneId));
            if (ImsConfigStorage.TELDBG) {
                Log.d(ImsConfigStorage.TAG, "checkIfBroadcastOnce() phoneId: " + phoneId + ", Sim state: " + simState);
            }
            if (simState == null) {
                return false;
            }
            if (simState != null && !simState.equals("READY") && !simState.equals("IMSI") && !simState.equals("LOADED")) {
                return false;
            }
            if (this.mIsFeatureBroadcast.get(Integer.valueOf(feature)).intValue() != 0) {
                return true;
            }
            this.mIsFeatureBroadcast.put(Integer.valueOf(feature), 1);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resetBroadcastFlag() {
            this.mIsFeatureBroadcast.put(0, 0);
            this.mIsFeatureBroadcast.put(1, 0);
            this.mIsFeatureBroadcast.put(2, 0);
            this.mIsFeatureBroadcast.put(3, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isAllFeatureFalse() {
            int volte = -1;
            int vilte = -1;
            try {
                volte = getFeatureValue(0, ImsConfigContract.getNetworkTypeByFeature(0));
                vilte = getFeatureValue(1, ImsConfigContract.getNetworkTypeByFeature(1));
                int wfc = getFeatureValue(2, ImsConfigContract.getNetworkTypeByFeature(2));
                if (volte == 0 && vilte == 0 && wfc == 0) {
                    return true;
                }
                return false;
            } catch (ImsException e) {
                Log.e(ImsConfigStorage.TAG, "isAllFeatureFalse volte:" + volte + ", vilte:" + vilte + ", wfc:-1");
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ConfigHelper {
        private ContentResolver mContentResolver;
        private Context mContext;
        private Handler mHandler;
        private int mOpCode;
        private int mPhoneId;
        DefaultConfigPolicyFactory mDefConfigPolicyFactory = null;
        private boolean mInitDone = false;

        ConfigHelper(Context context, Handler handler, int phoneId) {
            String opCode = null;
            this.mContext = null;
            this.mContentResolver = null;
            this.mPhoneId = -1;
            this.mOpCode = -1;
            this.mHandler = null;
            this.mContext = context;
            this.mHandler = handler;
            this.mPhoneId = phoneId;
            this.mContentResolver = this.mContext.getContentResolver();
            try {
                opCode = getConfigSetting(0);
                this.mOpCode = Integer.parseInt(opCode);
            } catch (ImsException e) {
                this.mOpCode = -1;
            } catch (NumberFormatException e2) {
                Log.e(ImsConfigStorage.TAG, "Parse SETTING_ID_OPCODE error: " + opCode);
                this.mOpCode = -1;
            }
        }

        synchronized void setOpCode(int opCode) {
            this.mOpCode = opCode;
        }

        synchronized int getOpCode() {
            return this.mOpCode;
        }

        synchronized void setInitDone(boolean done) {
            this.mInitDone = done;
            Intent intent = new Intent(ImsConfigContract.ACTION_CONFIG_LOADED);
            intent.putExtra("phone_id", this.mPhoneId);
            this.mContext.sendBroadcast(intent);
        }

        synchronized boolean isInitDone() {
            return this.mInitDone;
        }

        void init() {
            initDefaultStorage(0);
            initMasterStorage();
        }

        void init(int opCode) {
            initDefaultStorage(opCode);
            initMasterStorage();
            initConfigSettingStorage(opCode);
        }

        public boolean isStorageInitialized() {
            String[] projection = {"phone_id", ImsConfigContract.ConfigSetting.SETTING_ID, "value"};
            Cursor c = this.mContentResolver.query(ImsConfigContract.ConfigSetting.getUriWithSettingId(this.mPhoneId, 0), projection, null, null, null);
            if (c == null || c.getCount() != 1) {
                return false;
            }
            return true;
        }

        static void loadConfigStorage(Handler handler, int operatorCode) {
            if (handler != null) {
                handler.removeMessages(1);
                Message msg = new Message();
                msg.what = 1;
                msg.obj = Integer.valueOf(operatorCode);
                if (ImsConfigStorage.DEBUG) {
                    Log.d(ImsConfigStorage.TAG, "LoadConfigStorage() msg = " + msg.hashCode());
                }
                handler.sendMessage(msg);
            }
        }

        private void initConfigSettingStorage(int opCode) {
            addConfigSetting(0, Integer.toString(opCode));
        }

        private void addConfigSetting(int id, String value) {
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put(ImsConfigContract.ConfigSetting.SETTING_ID, Integer.valueOf(id));
            cv.put("value", value);
            Uri result = this.mContentResolver.insert(ImsConfigContract.ConfigSetting.CONTENT_URI, cv);
            if (result == null) {
                throw new IllegalArgumentException("addConfigSetting " + id + " for phone " + this.mPhoneId + " failed!");
            }
        }

        private void updateConfigSetting(int id, int value) {
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put(ImsConfigContract.ConfigSetting.SETTING_ID, Integer.valueOf(id));
            cv.put("value", Integer.valueOf(value));
            Uri uri = ImsConfigContract.getConfigUri(ImsConfigContract.TABLE_CONFIG_SETTING, this.mPhoneId, id);
            int count = this.mContentResolver.update(uri, cv, null, null);
            if (count != 1) {
                throw new IllegalArgumentException("updateConfigSetting " + id + " for phone " + this.mPhoneId + " failed!");
            }
        }

        private String getConfigSetting(int id) throws ImsException {
            Cursor c = null;
            String[] projection = {"phone_id", ImsConfigContract.ConfigSetting.SETTING_ID, "value"};
            try {
                try {
                    c = this.mContentResolver.query(ImsConfigContract.ConfigSetting.getUriWithSettingId(this.mPhoneId, id), projection, null, null, null);
                    if (c == null || c.getCount() != 1) {
                        throw new ImsException("getConfigSetting " + id + " for phone " + this.mPhoneId + " not found", 102);
                    }
                    c.moveToFirst();
                    int index = c.getColumnIndex("value");
                    String result = c.getString(index);
                    c.close();
                    return result;
                } catch (Exception e) {
                    throw new ImsException("getConfigSetting " + id + " for phone " + this.mPhoneId + " not found or something wrong with cursor", 102);
                }
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }

        private void initDefaultStorage(int opCode) {
            Map<Integer, ImsConfigSettings.Setting> configSettings = ImsConfigSettings.getConfigSettings();
            new HashMap();
            this.mDefConfigPolicyFactory = DefaultConfigPolicyFactory.getInstanceByOpCode(opCode);
            Map<Integer, ImsConfigPolicy.DefaultConfig> defSettings = this.mDefConfigPolicyFactory.load();
            if (defSettings == null || !defSettings.isEmpty()) {
                for (Integer configId : configSettings.keySet()) {
                    String value = ImsConfigContract.VALUE_NO_DEFAULT;
                    int unitId = -1;
                    if (this.mDefConfigPolicyFactory.hasDefaultValue(configId.intValue())) {
                        ImsConfigPolicy.DefaultConfig base = defSettings.get(configId);
                        if (base != null) {
                            value = base.defVal;
                            unitId = base.unitId;
                        }
                        ImsConfigSettings.Setting setting = configSettings.get(configId);
                        if (setting.mimeType == 0) {
                            ContentValues cv = getConfigCv(configId.intValue(), setting.mimeType, Integer.parseInt(value));
                            cv.put(ImsConfigContract.Default.UNIT_ID, Integer.valueOf(unitId));
                            this.mContentResolver.insert(ImsConfigContract.Default.CONTENT_URI, cv);
                        } else if (1 == setting.mimeType) {
                            ContentValues cv2 = getConfigCv(configId.intValue(), setting.mimeType, value);
                            cv2.put(ImsConfigContract.Default.UNIT_ID, Integer.valueOf(unitId));
                            this.mContentResolver.insert(ImsConfigContract.Default.CONTENT_URI, cv2);
                        }
                    }
                }
                return;
            }
            Log.d(ImsConfigStorage.TAG, "No default value");
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x00a6, code lost:
            if (r3 != null) goto L_0x00a8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x00a8, code lost:
            r3.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00b5, code lost:
            if (r3 == null) goto L_0x00b8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00b8, code lost:
            if (r6 == false) goto L_0x00bc;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00ba, code lost:
            if (r3 != null) goto L_0x00e4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00bc, code lost:
            r4.put("phone_id", java.lang.Integer.valueOf(r15.mPhoneId));
            r4.put("config_id", r2);
            r4.put(com.mediatek.ims.config.ImsConfigContract.BasicConfigTable.MIMETYPE_ID, java.lang.Integer.valueOf(com.mediatek.ims.config.ImsConfigSettings.getMimeType(r2.intValue())));
            r4.put(com.mediatek.ims.config.ImsConfigContract.BasicConfigTable.DATA, com.mediatek.ims.config.ImsConfigContract.VALUE_NO_DEFAULT);
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x00e4, code lost:
            r15.mContentResolver.insert(com.mediatek.ims.config.ImsConfigContract.Master.CONTENT_URI, r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00eb, code lost:
            if (0 == 0) goto L_0x000c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00ed, code lost:
            r15.mContentResolver.insert(com.mediatek.ims.config.ImsConfigContract.Provision.CONTENT_URI, r4);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void initMasterStorage() {
            /*
                r15 = this;
                java.util.Map r0 = com.mediatek.ims.config.ImsConfigSettings.getConfigSettings()
                java.util.Set r1 = r0.keySet()
                java.util.Iterator r1 = r1.iterator()
            L_0x000c:
                boolean r2 = r1.hasNext()
                if (r2 != 0) goto L_0x0013
                return
            L_0x0013:
                java.lang.Object r2 = r1.next()
                java.lang.Integer r2 = (java.lang.Integer) r2
                r3 = 0
                android.content.ContentValues r4 = new android.content.ContentValues
                r4.<init>()
                r5 = 0
                r6 = 1
                com.android.ims.ImsException r7 = new com.android.ims.ImsException     // Catch: ImsException -> 0x002b
                java.lang.String r8 = "here"
                r9 = 102(0x66, float:1.43E-43)
                r7.<init>(r8, r9)     // Catch: ImsException -> 0x002b
                throw r7     // Catch: ImsException -> 0x002b
            L_0x002b:
                r7 = move-exception
                java.lang.String r8 = "tb_default"
                int r9 = r2.intValue()     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                android.database.Cursor r8 = r15.getConfigFirstCursor(r8, r9)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r3 = r8
                if (r3 == 0) goto L_0x00a6
                java.lang.String r8 = "phone_id"
                int r8 = r3.getColumnIndex(r8)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r9 = "config_id"
                int r9 = r3.getColumnIndex(r9)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r10 = "mimetype_id"
                int r10 = r3.getColumnIndex(r10)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r11 = "data"
                int r11 = r3.getColumnIndex(r11)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r12 = "phone_id"
                int r13 = r3.getInt(r8)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r4.put(r12, r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r12 = "config_id"
                int r13 = r3.getInt(r9)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r4.put(r12, r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r12 = "mimetype_id"
                int r13 = r3.getInt(r10)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r4.put(r12, r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r12 = "data"
                java.lang.String r13 = r3.getString(r11)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r4.put(r12, r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r12 = "ImsConfigStorage"
                java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r13.<init>()     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r14 = "Load default value "
                r13.append(r14)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r14 = r3.getString(r11)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r13.append(r14)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r14 = " for config "
                r13.append(r14)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r13.append(r2)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                java.lang.String r13 = r13.toString()     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                android.util.Log.d(r12, r13)     // Catch: all -> 0x00ac, ImsException -> 0x00b3
                r3.close()     // Catch: all -> 0x00ac, ImsException -> 0x00b3
            L_0x00a6:
                if (r3 == 0) goto L_0x00b8
            L_0x00a8:
                r3.close()
                goto L_0x00b8
            L_0x00ac:
                r1 = move-exception
                if (r3 == 0) goto L_0x00b2
                r3.close()
            L_0x00b2:
                throw r1
            L_0x00b3:
                r8 = move-exception
                r6 = 0
                if (r3 == 0) goto L_0x00b8
                goto L_0x00a8
            L_0x00b8:
                if (r6 == 0) goto L_0x00bc
                if (r3 != 0) goto L_0x00e4
            L_0x00bc:
                java.lang.String r7 = "phone_id"
                int r8 = r15.mPhoneId
                java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
                r4.put(r7, r8)
                java.lang.String r7 = "config_id"
                r4.put(r7, r2)
                java.lang.String r7 = "mimetype_id"
                int r8 = r2.intValue()
                int r8 = com.mediatek.ims.config.ImsConfigSettings.getMimeType(r8)
                java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
                r4.put(r7, r8)
                java.lang.String r7 = "data"
                java.lang.String r8 = "n/a"
                r4.put(r7, r8)
            L_0x00e4:
                android.content.ContentResolver r7 = r15.mContentResolver
                android.net.Uri r8 = com.mediatek.ims.config.ImsConfigContract.Master.CONTENT_URI
                r7.insert(r8, r4)
                if (r5 == 0) goto L_0x00f4
                android.content.ContentResolver r7 = r15.mContentResolver
                android.net.Uri r8 = com.mediatek.ims.config.ImsConfigContract.Provision.CONTENT_URI
                r7.insert(r8, r4)
            L_0x00f4:
                goto L_0x000c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.config.internal.ImsConfigStorage.ConfigHelper.initMasterStorage():void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            String[] args = {String.valueOf(this.mPhoneId)};
            this.mContentResolver.delete(ImsConfigContract.ConfigSetting.CONTENT_URI, "phone_id = ?", args);
            this.mContentResolver.delete(ImsConfigContract.Provision.CONTENT_URI, "phone_id = ?", args);
            this.mContentResolver.delete(ImsConfigContract.Master.CONTENT_URI, "phone_id = ?", args);
            this.mContentResolver.delete(ImsConfigContract.Default.CONTENT_URI, "phone_id = ?", args);
        }

        private ContentValues getConfigCv(int configId, int mimeType, int value) {
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put("config_id", Integer.valueOf(configId));
            cv.put(ImsConfigContract.BasicConfigTable.MIMETYPE_ID, Integer.valueOf(mimeType));
            cv.put(ImsConfigContract.BasicConfigTable.DATA, Integer.valueOf(value));
            return cv;
        }

        private ContentValues getConfigCv(int configId, int mimeType, String value) {
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put("config_id", Integer.valueOf(configId));
            cv.put(ImsConfigContract.BasicConfigTable.MIMETYPE_ID, Integer.valueOf(mimeType));
            cv.put(ImsConfigContract.BasicConfigTable.DATA, value);
            return cv;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Uri addConfig(String table, int configId, int mimeType, int value) throws ImsException {
            enforceConfigId(configId);
            ContentValues cv = getConfigCv(configId, mimeType, value);
            return this.mContentResolver.insert(ImsConfigContract.getTableUri(table), cv);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Uri addConfig(String table, int configId, int mimeType, String value) throws ImsException {
            enforceConfigId(configId);
            ContentValues cv = getConfigCv(configId, mimeType, value);
            return this.mContentResolver.insert(ImsConfigContract.getTableUri(table), cv);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int updateConfig(String table, int configId, int mimeType, int value) throws ImsException {
            enforceConfigId(configId);
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put("config_id", Integer.valueOf(configId));
            cv.put(ImsConfigContract.BasicConfigTable.MIMETYPE_ID, Integer.valueOf(mimeType));
            cv.put(ImsConfigContract.BasicConfigTable.DATA, Integer.valueOf(value));
            return this.mContentResolver.update(ImsConfigContract.getConfigUri(table, this.mPhoneId, configId), cv, null, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int updateConfig(String table, int configId, int mimeType, String value) throws ImsException {
            enforceConfigId(configId);
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put("config_id", Integer.valueOf(configId));
            cv.put(ImsConfigContract.BasicConfigTable.MIMETYPE_ID, Integer.valueOf(mimeType));
            cv.put(ImsConfigContract.BasicConfigTable.DATA, value);
            return this.mContentResolver.update(ImsConfigContract.getConfigUri(table, this.mPhoneId, configId), cv, null, null);
        }

        private Cursor getConfigFirstCursor(String table, int configId) throws ImsException {
            String[] projection = {"phone_id", "config_id", ImsConfigContract.BasicConfigTable.MIMETYPE_ID, ImsConfigContract.BasicConfigTable.DATA};
            Uri uri = ImsConfigContract.getConfigUri(table, this.mPhoneId, configId);
            Cursor c = this.mContentResolver.query(uri, projection, null, null, null);
            if (c == null) {
                throw new ImsException("Null cursor with config: " + configId + " in table: " + table, 101);
            } else if (c.getCount() == 1) {
                c.moveToFirst();
                return c;
            } else if (c.getCount() == 0) {
                c.close();
                throw new ImsException("Config " + configId + " shall exist in table: " + table, 101);
            } else {
                c.close();
                throw new ImsException("Config " + configId + " shall exist once in table: " + table, 101);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getConfigValue(String table, int configId) throws ImsException {
            Cursor c = null;
            enforceConfigId(configId);
            try {
                try {
                    c = getConfigFirstCursor(table, configId);
                    int dataIndex = c.getColumnIndex(ImsConfigContract.BasicConfigTable.DATA);
                    int mimeTypeIndex = c.getColumnIndex(ImsConfigContract.BasicConfigTable.MIMETYPE_ID);
                    int mimeType = c.getInt(mimeTypeIndex);
                    enforceDefaultValue(configId, c.getString(dataIndex));
                    if (mimeType == 0) {
                        int result = Integer.parseInt(c.getString(dataIndex));
                        return result;
                    }
                    throw new ImsException("Config " + configId + " shall be type 0, but " + mimeType, 101);
                } catch (Exception e) {
                    throw new ImsException("Config " + configId + " shall be type 0, but -1 or something wrong with cursor", 101);
                }
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getConfigStringValue(String table, int configId) throws ImsException {
            Cursor c = null;
            enforceConfigId(configId);
            try {
                try {
                    c = getConfigFirstCursor(table, configId);
                    int dataIndex = c.getColumnIndex(ImsConfigContract.BasicConfigTable.DATA);
                    int mimeTypeIndex = c.getColumnIndex(ImsConfigContract.BasicConfigTable.MIMETYPE_ID);
                    int mimeType = c.getInt(mimeTypeIndex);
                    enforceDefaultValue(configId, c.getString(dataIndex));
                    if (mimeType == 1) {
                        String result = c.getString(dataIndex);
                        return result;
                    }
                    throw new ImsException("Config " + configId + " shall be type 1, but " + mimeType, 101);
                } catch (Exception e) {
                    throw new ImsException("Config " + configId + " shall be type 1, but -1 or something wrong with cursor", 101);
                }
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }

        private void enforceDefaultValue(int configId, String data) throws ImsException {
            if (ImsConfigContract.VALUE_NO_DEFAULT.equals(data)) {
                throw new ImsException("No deafult value for config " + configId, 0);
            }
        }

        private void enforceConfigId(int configId) throws ImsException {
            if (!ImsConfigContract.Validator.isValidConfigId(configId)) {
                throw new ImsException("No deafult value for config " + configId, 101);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class ResourceHelper {
        private ContentResolver mContentResolver;
        private Context mContext;
        private int mPhoneId;

        ResourceHelper(Context context, int phoneId) {
            this.mContext = null;
            this.mContentResolver = null;
            this.mPhoneId = phoneId;
            this.mContext = context;
            this.mContentResolver = this.mContext.getContentResolver();
        }

        private void clear() {
            String[] args = {String.valueOf(this.mPhoneId)};
            this.mContentResolver.delete(ImsConfigContract.Resource.CONTENT_URI, "phone_id = ?", args);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateResource(int featureId, int value) {
            ContentValues cv = new ContentValues();
            cv.put("phone_id", Integer.valueOf(this.mPhoneId));
            cv.put("feature_id", Integer.valueOf(featureId));
            cv.put("value", Integer.valueOf(value));
            try {
                int curValue = getResourceValue(featureId);
                Log.d(ImsConfigStorage.TAG, "updateResource() comparing: curValue: " + curValue + ", value:" + value);
                String[] args = {String.valueOf(this.mPhoneId), String.valueOf(featureId)};
                this.mContentResolver.update(ImsConfigContract.Resource.CONTENT_URI, cv, "phone_id=? AND feature_id=?", args);
            } catch (ImsException e) {
                Log.e(ImsConfigStorage.TAG, "updateResource() ImsException featureId:" + featureId + ", value:" + value);
                this.mContentResolver.insert(ImsConfigContract.Resource.CONTENT_URI, cv);
            }
        }

        int getResourceValue(int featureId) throws ImsException {
            Cursor c = null;
            String[] projection = {"phone_id", "feature_id", "value"};
            try {
                try {
                    c = this.mContentResolver.query(ImsConfigContract.Resource.getUriWithFeatureId(this.mPhoneId, featureId), projection, null, null, null);
                    if (c == null || c.getCount() != 1) {
                        throw new ImsException("Feature " + featureId + " not assigned with res value!", 101);
                    }
                    c.moveToFirst();
                    int valueIndex = c.getColumnIndex("value");
                    int result = c.getInt(valueIndex);
                    c.close();
                    return result;
                } catch (Exception e) {
                    throw new ImsException("Feature " + featureId + " not assigned with res value or something wrong with cursor", 101);
                }
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }
    }
}
