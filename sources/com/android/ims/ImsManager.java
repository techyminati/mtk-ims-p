package com.android.ims;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.telecom.TelecomManager;
import android.telephony.CarrierConfigManager;
import android.telephony.Rlog;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSession;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.aidl.IImsConfig;
import android.telephony.ims.aidl.IImsSmsListener;
import android.telephony.ims.feature.CapabilityChangeRequest;
import android.telephony.ims.feature.ImsFeature;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import android.util.Log;
import com.android.ims.ImsCall;
import com.android.ims.ImsManager;
import com.android.ims.MmTelFeatureConnection;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsUt;
import com.android.internal.annotations.VisibleForTesting;
import com.mediatek.common.voicecommand.VoiceCommandListener;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes.dex */
public class ImsManager {
    public static final String ACTION_IMS_INCOMING_CALL = "com.android.ims.IMS_INCOMING_CALL";
    public static final String ACTION_IMS_REGISTRATION_ERROR = "com.android.ims.REGISTRATION_ERROR";
    public static final String ACTION_IMS_SERVICE_DOWN = "com.android.ims.IMS_SERVICE_DOWN";
    public static final String ACTION_IMS_SERVICE_UP = "com.android.ims.IMS_SERVICE_UP";
    private static final boolean DBG = true;
    public static final String EXTRA_CALL_ID = "android:imsCallID";
    public static final String EXTRA_IS_UNKNOWN_CALL = "android:isUnknown";
    public static final String EXTRA_PHONE_ID = "android:phone_id";
    public static final String EXTRA_SERVICE_ID = "android:imsServiceId";
    public static final String EXTRA_USSD = "android:ussd";
    public static final String FALSE = "false";
    public static final int INCOMING_CALL_RESULT_CODE = 101;
    private static final int MAX_RECENT_DISCONNECT_REASONS = 16;
    public static final String PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE = "persist.dbg.allow_ims_off";
    public static final int PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT = 0;
    public static final String PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE = "persist.dbg.volte_avail_ovr";
    public static final int PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT = 0;
    public static final String PROPERTY_DBG_VT_AVAIL_OVERRIDE = "persist.dbg.vt_avail_ovr";
    public static final int PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT = 0;
    public static final String PROPERTY_DBG_WFC_AVAIL_OVERRIDE = "persist.dbg.wfc_avail_ovr";
    public static final int PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT = 0;
    protected static final int SUB_PROPERTY_NOT_INITIALIZED = -1;
    protected static final int SYSTEM_PROPERTY_NOT_SET = -1;
    private static final String TAG = "ImsManager";
    public static final String TRUE = "true";
    private static HashMap<Integer, ImsManager> sImsManagerInstances = new HashMap<>();
    private static HashMap<Integer, Handler> sMainThreadHandlerInstances = new HashMap<>();
    private final boolean mConfigDynamicBind;
    private CarrierConfigManager mConfigManager;
    protected Context mContext;
    protected ImsConfigListener mImsConfigListener;
    protected int mPhoneId;
    protected MmTelFeatureConnection mMmTelFeatureConnection = null;
    private boolean mConfigUpdated = false;
    private ImsUt mUt = null;
    protected ImsEcbm mEcbm = null;
    private ImsMultiEndpoint mMultiEndpoint = null;
    private Set<MmTelFeatureConnection.IFeatureUpdate> mStatusCallbacks = new CopyOnWriteArraySet();
    private ConcurrentLinkedDeque<ImsReasonInfo> mRecentDisconnectReasons = new ConcurrentLinkedDeque<>();

    /* loaded from: classes.dex */
    public static class Connector extends Handler {
        private static final int CEILING_SERVICE_RETRY_COUNT = 6;
        private static final int IMS_RETRY_STARTING_TIMEOUT_MS = 500;
        protected final Context mContext;
        private ImsManager mImsManager;
        private final Listener mListener;
        private Handler mMainHandler;
        protected final int mPhoneId;
        private final Runnable mGetServiceRunnable = new Runnable() { // from class: com.android.ims.-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0
            @Override // java.lang.Runnable
            public final void run() {
                ImsManager.Connector.lambda$new$0(ImsManager.Connector.this);
            }
        };
        private MmTelFeatureConnection.IFeatureUpdate mNotifyStatusChangedCallback = new MmTelFeatureConnection.IFeatureUpdate() { // from class: com.android.ims.ImsManager.Connector.1
            @Override // com.android.ims.MmTelFeatureConnection.IFeatureUpdate
            public void notifyStateChanged() {
                ImsManager.log("post a runnable for state changed notification");
                Connector.this.mMainHandler.post(Connector.this.mNotifyStateChangedRunnable);
            }

            @Override // com.android.ims.MmTelFeatureConnection.IFeatureUpdate
            public void notifyUnavailable() {
                ImsManager.log("post a runnable for unavailable notification");
                Connector.this.mMainHandler.post(Connector.this.mNotifyUnavailableRunnable);
            }
        };
        private final Object mLock = new Object();
        private int mRetryCount = 0;
        @VisibleForTesting
        public RetryTimeout mRetryTimeout = new RetryTimeout() { // from class: com.android.ims.-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI
            @Override // com.android.ims.ImsManager.Connector.RetryTimeout
            public final int get() {
                return ImsManager.Connector.lambda$new$1(ImsManager.Connector.this);
            }
        };
        private final Runnable mNotifyStateChangedRunnable = new Runnable() { // from class: com.android.ims.-$$Lambda$ImsManager$Connector$JNspzXYs_VNdKtRMcDRuDRf7jYo
            @Override // java.lang.Runnable
            public final void run() {
                ImsManager.Connector.lambda$new$2(ImsManager.Connector.this);
            }
        };
        private final Runnable mNotifyUnavailableRunnable = new Runnable() { // from class: com.android.ims.-$$Lambda$ImsManager$Connector$OKN9Ow8uS0A7InItPt7xwt8m45A
            @Override // java.lang.Runnable
            public final void run() {
                ImsManager.Connector.lambda$new$3(ImsManager.Connector.this);
            }
        };

        /* loaded from: classes.dex */
        public interface Listener {
            void connectionReady(ImsManager imsManager) throws ImsException;

            void connectionUnavailable();
        }

        @VisibleForTesting
        /* loaded from: classes.dex */
        public interface RetryTimeout {
            int get();
        }

        public static /* synthetic */ void lambda$new$0(Connector connector) {
            try {
                connector.getImsService();
            } catch (ImsException e) {
                connector.retryGetImsService();
            }
        }

        public static /* synthetic */ int lambda$new$1(Connector connector) {
            int timeout;
            synchronized (connector.mLock) {
                timeout = (1 << connector.mRetryCount) * IMS_RETRY_STARTING_TIMEOUT_MS;
                if (connector.mRetryCount <= 6) {
                    connector.mRetryCount++;
                }
            }
            return timeout;
        }

        public Connector(Context context, int phoneId, Listener listener) {
            this.mMainHandler = null;
            this.mContext = context;
            this.mPhoneId = phoneId;
            this.mListener = listener;
            this.mMainHandler = ImsManager.getMainThreadHandler(context, phoneId);
        }

        public Connector(Context context, int phoneId, Listener listener, Looper looper) {
            super(looper);
            this.mMainHandler = null;
            this.mContext = context;
            this.mPhoneId = phoneId;
            this.mListener = listener;
            this.mMainHandler = ImsManager.getMainThreadHandler(context, phoneId);
        }

        public void connect() {
            this.mRetryCount = 0;
            post(this.mGetServiceRunnable);
        }

        public void disconnect() {
            removeCallbacks(this.mGetServiceRunnable);
            synchronized (this.mLock) {
                if (this.mImsManager != null) {
                    this.mImsManager.removeNotifyStatusChangedCallback(this.mNotifyStatusChangedCallback);
                }
            }
            notifyNotReady();
        }

        private void retryGetImsService() {
            synchronized (this.mLock) {
                if (this.mImsManager != null) {
                    this.mImsManager.removeNotifyStatusChangedCallback(this.mNotifyStatusChangedCallback);
                }
                this.mImsManager = null;
            }
            ImsManager.loge("Connector: Retrying getting ImsService...");
            removeCallbacks(this.mGetServiceRunnable);
            postDelayed(this.mGetServiceRunnable, this.mRetryTimeout.get());
        }

        private void getImsService() throws ImsException {
            ImsManager.log("Connector: getImsService");
            synchronized (this.mLock) {
                this.mImsManager = ImsManager.getInstance(this.mContext, this.mPhoneId);
                this.mImsManager.addNotifyStatusChangedCallbackIfAvailable(this.mNotifyStatusChangedCallback);
            }
            this.mNotifyStatusChangedCallback.notifyStateChanged();
        }

        private void notifyReady() throws ImsException {
            ImsManager manager;
            synchronized (this.mLock) {
                manager = this.mImsManager;
            }
            try {
                this.mListener.connectionReady(manager);
                synchronized (this.mLock) {
                    this.mRetryCount = 0;
                }
            } catch (ImsException e) {
                Log.w(ImsManager.TAG, "Connector: notifyReady exception: " + e.getMessage());
                throw e;
            }
        }

        private void notifyNotReady() {
            this.mListener.connectionUnavailable();
        }

        public static /* synthetic */ void lambda$new$2(Connector connector) {
            int status = 0;
            try {
                synchronized (connector.mLock) {
                    if (connector.mImsManager != null) {
                        status = connector.mImsManager.getImsServiceState();
                    }
                }
                ImsManager.log("Status Changed: " + status);
                switch (status) {
                    case 0:
                    case 1:
                        connector.notifyNotReady();
                        return;
                    case 2:
                        connector.notifyReady();
                        return;
                    default:
                        ImsManager.log("Unexpected State!");
                        return;
                }
            } catch (ImsException e) {
                connector.notifyNotReady();
                connector.retryGetImsService();
            }
        }

        public static /* synthetic */ void lambda$new$3(Connector connector) {
            ImsManager.log("mNotifyUnavailableRunnable start!");
            connector.notifyNotReady();
            connector.retryGetImsService();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Handler getMainThreadHandler(Context context, int phoneId) {
        Handler hdlr;
        synchronized (sMainThreadHandlerInstances) {
            if (sMainThreadHandlerInstances.containsKey(Integer.valueOf(phoneId))) {
                Handler h = sMainThreadHandlerInstances.get(Integer.valueOf(phoneId));
                return h;
            }
            if (context != null) {
                log("[" + phoneId + "] Create main thread handler w/ context");
                hdlr = new Handler(context.getMainLooper());
            } else {
                log("[" + phoneId + "] Create main thread handler w/o context");
                hdlr = new Handler(Looper.getMainLooper());
            }
            sMainThreadHandlerInstances.put(Integer.valueOf(phoneId), hdlr);
            return hdlr;
        }
    }

    public static ImsManager getInstance(Context context, int phoneId) {
        ImsManager mgr;
        synchronized (sImsManagerInstances) {
            if (sImsManagerInstances.containsKey(Integer.valueOf(phoneId))) {
                ImsManager m = sImsManagerInstances.get(Integer.valueOf(phoneId));
                if (m != null) {
                    m.connectIfServiceIsAvailable();
                }
                return m;
            }
            try {
                try {
                    Class[] cParam = {Context.class, Integer.TYPE};
                    Constructor clazzConstructfunc = getMtkImsManager().getDeclaredConstructor(cParam);
                    log("constructor function = " + clazzConstructfunc);
                    clazzConstructfunc.setAccessible(DBG);
                    mgr = (ImsManager) clazzConstructfunc.newInstance(context, Integer.valueOf(phoneId));
                } catch (NoSuchMethodException e) {
                    loge("MtkImsManager Constructor not found! Use AOSP instead!");
                    mgr = new ImsManager(context, phoneId);
                }
            } catch (Exception e2) {
                loge("Exception at init MtkImsManager! Use AOSP for instead!");
                mgr = new ImsManager(context, phoneId);
            }
            sImsManagerInstances.put(Integer.valueOf(phoneId), mgr);
            return mgr;
        }
    }

    public static boolean isEnhanced4gLteModeSettingEnabledByUser(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isEnhanced4gLteModeSettingEnabledByUser();
        }
        loge("isEnhanced4gLteModeSettingEnabledByUser: ImsManager null, returning default value.");
        return false;
    }

    public boolean isEnhanced4gLteModeSettingEnabledByUser() {
        int setting = SubscriptionManager.getIntegerSubscriptionProperty(getSubId(), "volte_vt_enabled", -1, this.mContext);
        boolean onByDefault = getBooleanCarrierConfig("enhanced_4g_lte_on_by_default_bool");
        if (!getBooleanCarrierConfig("editable_enhanced_4g_lte_bool") || setting == -1) {
            return onByDefault;
        }
        if (setting == 1) {
            return DBG;
        }
        return false;
    }

    public static void setEnhanced4gLteModeSetting(Context context, boolean enabled) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            mgr.setEnhanced4gLteModeSetting(enabled);
        }
        loge("setEnhanced4gLteModeSetting: ImsManager null, value not set.");
    }

    public void setEnhanced4gLteModeSetting(boolean enabled) {
        int i;
        if (!getBooleanCarrierConfig("editable_enhanced_4g_lte_bool")) {
            enabled = getBooleanCarrierConfig("enhanced_4g_lte_on_by_default_bool");
        }
        int prevSetting = SubscriptionManager.getIntegerSubscriptionProperty(getSubId(), "volte_vt_enabled", -1, this.mContext);
        if (enabled) {
            i = 1;
        } else {
            i = 0;
        }
        if (prevSetting != i || shouldForceUpdated()) {
            SubscriptionManager.setSubscriptionProperty(getSubId(), "volte_vt_enabled", booleanToPropertyString(enabled));
            if (isNonTtyOrTtyOnVolteEnabled()) {
                try {
                    setAdvanced4GMode(enabled);
                } catch (ImsException e) {
                }
            }
        }
    }

    protected boolean shouldForceUpdated() {
        return false;
    }

    public static boolean isNonTtyOrTtyOnVolteEnabled(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isNonTtyOrTtyOnVolteEnabled();
        }
        loge("isNonTtyOrTtyOnVolteEnabled: ImsManager null, returning default value.");
        return false;
    }

    public boolean isNonTtyOrTtyOnVolteEnabled() {
        if (getBooleanCarrierConfig("carrier_volte_tty_supported_bool")) {
            return DBG;
        }
        TelecomManager tm = (TelecomManager) this.mContext.getSystemService("telecom");
        if (tm == null) {
            Log.w(TAG, "isNonTtyOrTtyOnVolteEnabled: telecom not available");
            return DBG;
        } else if (tm.getCurrentTtyMode() == 0) {
            return DBG;
        } else {
            return false;
        }
    }

    public static boolean isVolteEnabledByPlatform(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isVolteEnabledByPlatform();
        }
        loge("isVolteEnabledByPlatform: ImsManager null, returning default value.");
        return false;
    }

    public boolean isVolteEnabledByPlatform() {
        if (SystemProperties.getInt(PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE + Integer.toString(this.mPhoneId), -1) == 1 || SystemProperties.getInt(PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE, -1) == 1) {
            return DBG;
        }
        if (!this.mContext.getResources().getBoolean(17956925) || !getBooleanCarrierConfig("carrier_volte_available_bool") || !isGbaValid()) {
            return false;
        }
        return DBG;
    }

    public static boolean isVolteProvisionedOnDevice(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isVolteProvisionedOnDevice();
        }
        loge("isVolteProvisionedOnDevice: ImsManager null, returning default value.");
        return DBG;
    }

    public boolean isVolteProvisionedOnDevice() {
        if (getBooleanCarrierConfig("carrier_volte_provisioning_required_bool")) {
            return isVolteProvisioned();
        }
        return DBG;
    }

    public static boolean isWfcProvisionedOnDevice(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isWfcProvisionedOnDevice();
        }
        loge("isWfcProvisionedOnDevice: ImsManager null, returning default value.");
        return DBG;
    }

    public boolean isWfcProvisionedOnDevice() {
        if (getBooleanCarrierConfig("carrier_volte_override_wfc_provisioning_bool") && !isVolteProvisionedOnDevice()) {
            return false;
        }
        if (getBooleanCarrierConfig("carrier_volte_provisioning_required_bool")) {
            return isWfcProvisioned();
        }
        return DBG;
    }

    public static boolean isVtProvisionedOnDevice(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isVtProvisionedOnDevice();
        }
        loge("isVtProvisionedOnDevice: ImsManager null, returning default value.");
        return DBG;
    }

    public boolean isVtProvisionedOnDevice() {
        if (getBooleanCarrierConfig("carrier_volte_provisioning_required_bool")) {
            return isVtProvisioned();
        }
        return DBG;
    }

    public static boolean isVtEnabledByPlatform(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isVtEnabledByPlatform();
        }
        loge("isVtEnabledByPlatform: ImsManager null, returning default value.");
        return false;
    }

    public boolean isVtEnabledByPlatform() {
        if (SystemProperties.getInt(PROPERTY_DBG_VT_AVAIL_OVERRIDE + Integer.toString(this.mPhoneId), -1) == 1 || SystemProperties.getInt(PROPERTY_DBG_VT_AVAIL_OVERRIDE, -1) == 1) {
            return DBG;
        }
        if (!this.mContext.getResources().getBoolean(17956926) || !getBooleanCarrierConfig("carrier_vt_available_bool") || !isGbaValid()) {
            return false;
        }
        return DBG;
    }

    public static boolean isVtEnabledByUser(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isVtEnabledByUser();
        }
        loge("isVtEnabledByUser: ImsManager null, returning default value.");
        return false;
    }

    public boolean isVtEnabledByUser() {
        int setting = SubscriptionManager.getIntegerSubscriptionProperty(getSubId(), "vt_ims_enabled", -1, this.mContext);
        if (setting == -1 || setting == 1) {
            return DBG;
        }
        return false;
    }

    public static void setVtSetting(Context context, boolean enabled) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            mgr.setVtSetting(enabled);
        }
        loge("setVtSetting: ImsManager null, can not set value.");
    }

    public void setVtSetting(boolean enabled) {
        SubscriptionManager.setSubscriptionProperty(getSubId(), "vt_ims_enabled", booleanToPropertyString(enabled));
        try {
            changeMmTelCapability(2, 0, enabled);
            if (enabled) {
                log("setVtSetting(b) : turnOnIms");
                turnOnIms();
            } else if (isTurnOffImsAllowedByPlatform() && (!isVolteEnabledByPlatform() || !isEnhanced4gLteModeSettingEnabledByUser())) {
                log("setVtSetting(b) : imsServiceAllowTurnOff -> turnOffIms");
                turnOffIms();
            }
        } catch (ImsException e) {
            loge("setVtSetting(b): ", e);
        }
    }

    protected static boolean isTurnOffImsAllowedByPlatform(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isTurnOffImsAllowedByPlatform();
        }
        loge("isTurnOffImsAllowedByPlatform: ImsManager null, returning default value.");
        return DBG;
    }

    protected boolean isTurnOffImsAllowedByPlatform() {
        StringBuilder sb = new StringBuilder();
        sb.append(PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE);
        sb.append(Integer.toString(this.mPhoneId));
        return (SystemProperties.getInt(sb.toString(), -1) == 1 || SystemProperties.getInt(PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE, -1) == 1) ? DBG : getBooleanCarrierConfig("carrier_allow_turnoff_ims_bool");
    }

    public static boolean isWfcEnabledByUser(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isWfcEnabledByUser();
        }
        loge("isWfcEnabledByUser: ImsManager null, returning default value.");
        return DBG;
    }

    public boolean isWfcEnabledByUser() {
        int setting = SubscriptionManager.getIntegerSubscriptionProperty(getSubId(), "wfc_ims_enabled", -1, this.mContext);
        if (setting == -1) {
            return getBooleanCarrierConfig("carrier_default_wfc_ims_enabled_bool");
        }
        if (setting == 1) {
            return DBG;
        }
        return false;
    }

    public static void setWfcSetting(Context context, boolean enabled) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            mgr.setWfcSetting(enabled);
        }
        loge("setWfcSetting: ImsManager null, can not set value.");
    }

    public void setWfcSetting(boolean enabled) {
        SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_enabled", booleanToPropertyString(enabled));
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        setWfcNonPersistent(enabled, getWfcMode(tm.isNetworkRoaming(getSubId())));
    }

    public void setWfcNonPersistent(boolean enabled, int wfcMode) {
        int imsWfcModeFeatureValue = enabled ? wfcMode : 1;
        try {
            changeMmTelCapability(1, 1, enabled);
            if (enabled) {
                log("setWfcSetting() : turnOnIms");
                turnOnIms();
            } else if (isTurnOffImsAllowedByPlatform() && (!isVolteEnabledByPlatform() || !isEnhanced4gLteModeSettingEnabledByUser())) {
                log("setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms");
                turnOffIms();
            }
            setWfcModeInternal(imsWfcModeFeatureValue);
        } catch (ImsException e) {
            loge("setWfcSetting(): ", e);
        }
    }

    public static int getWfcMode(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.getWfcMode();
        }
        loge("getWfcMode: ImsManager null, returning default value.");
        return 0;
    }

    public int getWfcMode() {
        return getWfcMode(false);
    }

    public static void setWfcMode(Context context, int wfcMode) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            mgr.setWfcMode(wfcMode);
        }
        loge("setWfcMode: ImsManager null, can not set value.");
    }

    public void setWfcMode(int wfcMode) {
        log("setWfcMode(i) - setting=" + wfcMode);
        SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_mode", Integer.toString(wfcMode));
        setWfcModeInternal(wfcMode);
    }

    public static int getWfcMode(Context context, boolean roaming) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.getWfcMode(roaming);
        }
        loge("getWfcMode: ImsManager null, returning default value.");
        return 0;
    }

    public int getWfcMode(boolean roaming) {
        int setting;
        if (!roaming) {
            if (!getBooleanCarrierConfig("editable_wfc_mode_bool")) {
                setting = getIntCarrierConfig("carrier_default_wfc_ims_mode_int");
            } else {
                setting = getSettingFromSubscriptionManager("wfc_ims_mode", "carrier_default_wfc_ims_mode_int");
            }
            log("getWfcMode - setting=" + setting);
            return setting;
        }
        int setting2 = getSettingFromSubscriptionManager("wfc_ims_roaming_mode", "carrier_default_wfc_ims_roaming_mode_int");
        log("getWfcMode (roaming) - setting=" + setting2);
        return setting2;
    }

    private int getSettingFromSubscriptionManager(String subSetting, String defaultConfigKey) {
        int result = SubscriptionManager.getIntegerSubscriptionProperty(getSubId(), subSetting, -1, this.mContext);
        if (result == -1) {
            return getIntCarrierConfig(defaultConfigKey);
        }
        return result;
    }

    public static void setWfcMode(Context context, int wfcMode, boolean roaming) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            mgr.setWfcMode(wfcMode, roaming);
        }
        loge("setWfcMode: ImsManager null, can not set value.");
    }

    public void setWfcMode(int wfcMode, boolean roaming) {
        if (!roaming) {
            log("setWfcMode(i,b) - setting=" + wfcMode);
            SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_mode", Integer.toString(wfcMode));
        } else {
            log("setWfcMode(i,b) (roaming) - setting=" + wfcMode);
            SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_roaming_mode", Integer.toString(wfcMode));
        }
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        if (roaming == tm.isNetworkRoaming(getSubId())) {
            setWfcModeInternal(wfcMode);
        }
    }

    protected int getSubId() {
        int[] subIds = SubscriptionManager.getSubId(this.mPhoneId);
        if (subIds == null || subIds.length < 1) {
            return -1;
        }
        int subId = subIds[0];
        return subId;
    }

    protected void setWfcModeInternal(final int wfcMode) {
        Thread thread = new Thread(new Runnable() { // from class: com.android.ims.-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA
            @Override // java.lang.Runnable
            public final void run() {
                ImsManager.this.getConfigInterface().setConfig(27, wfcMode);
            }
        });
        thread.start();
    }

    public static boolean isWfcRoamingEnabledByUser(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isWfcRoamingEnabledByUser();
        }
        loge("isWfcRoamingEnabledByUser: ImsManager null, returning default value.");
        return false;
    }

    public boolean isWfcRoamingEnabledByUser() {
        int setting = SubscriptionManager.getIntegerSubscriptionProperty(getSubId(), "wfc_ims_roaming_enabled", -1, this.mContext);
        if (setting == -1) {
            return getBooleanCarrierConfig("carrier_default_wfc_ims_roaming_enabled_bool");
        }
        if (setting == 1) {
            return DBG;
        }
        return false;
    }

    public static void setWfcRoamingSetting(Context context, boolean enabled) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            mgr.setWfcRoamingSetting(enabled);
        }
        loge("setWfcRoamingSetting: ImsManager null, value not set.");
    }

    public void setWfcRoamingSetting(boolean enabled) {
        SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_roaming_enabled", booleanToPropertyString(enabled));
        setWfcRoamingSettingInternal(enabled);
    }

    protected void setWfcRoamingSettingInternal(boolean enabled) {
        final int value;
        if (enabled) {
            value = 1;
        } else {
            value = 0;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.android.ims.-$$Lambda$ImsManager$7h4QYewD4pT0yZmloG4PzRq2ov0
            @Override // java.lang.Runnable
            public final void run() {
                ImsManager.this.getConfigInterface().setConfig(26, value);
            }
        });
        thread.start();
    }

    public static boolean isWfcEnabledByPlatform(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            return mgr.isWfcEnabledByPlatform();
        }
        loge("isWfcEnabledByPlatform: ImsManager null, returning default value.");
        return false;
    }

    public boolean isWfcEnabledByPlatform() {
        if (SystemProperties.getInt(PROPERTY_DBG_WFC_AVAIL_OVERRIDE + Integer.toString(this.mPhoneId), -1) == 1 || SystemProperties.getInt(PROPERTY_DBG_WFC_AVAIL_OVERRIDE, -1) == 1) {
            return DBG;
        }
        if (!this.mContext.getResources().getBoolean(17956927) || !getBooleanCarrierConfig("carrier_wfc_ims_available_bool") || !isGbaValid()) {
            return false;
        }
        return DBG;
    }

    protected boolean isGbaValid() {
        boolean booleanCarrierConfig = getBooleanCarrierConfig("carrier_ims_gba_required_bool");
        boolean result = DBG;
        if (!booleanCarrierConfig) {
            return DBG;
        }
        TelephonyManager telephonyManager = new TelephonyManager(this.mContext, getSubId());
        String efIst = telephonyManager.getIsimIst();
        if (efIst == null) {
            loge("isGbaValid - ISF is NULL");
            return DBG;
        }
        if (efIst == null || efIst.length() <= 1 || (2 & ((byte) efIst.charAt(1))) == 0) {
            result = false;
        }
        log("isGbaValid - GBA capable=" + result + ", ISF=" + efIst);
        return result;
    }

    private boolean getProvisionedBool(ImsConfig config, int item) throws ImsException {
        int value = config.getProvisionedValue(item);
        if (value == -1) {
            throw new ImsException("getProvisionedBool failed with error for item: " + item, (int) VoiceCommandListener.VOICE_ERROR_TRAINING_PASSWORD_DIFF);
        } else if (config.getProvisionedValue(item) == 1) {
            return DBG;
        } else {
            return false;
        }
    }

    private boolean getProvisionedBoolNoException(int item) {
        try {
            ImsConfig config = getConfigInterface();
            return getProvisionedBool(config, item);
        } catch (ImsException e) {
            return false;
        }
    }

    public static void updateImsServiceConfig(Context context, int phoneId, boolean force) {
        ImsManager mgr = getInstance(context, phoneId);
        if (mgr != null) {
            mgr.updateImsServiceConfig(force);
        }
        loge("updateImsServiceConfig: ImsManager null, returning without update.");
    }

    public void updateImsServiceConfig(boolean force) {
        if (!force) {
            TelephonyManager tm = new TelephonyManager(this.mContext, getSubId());
            if (tm.getSimState() != 5) {
                log("updateImsServiceConfig: SIM not ready");
                return;
            }
        }
        if (!this.mConfigUpdated || force) {
            try {
                boolean isImsUsed = updateVolteFeatureValue();
                if ((!(isImsUsed | updateWfcFeatureAndProvisionedValues()) && !updateVideoCallFeatureValue()) && isTurnOffImsAllowedByPlatform()) {
                    log("updateImsServiceConfig: turnOffIms");
                    turnOffIms();
                    this.mConfigUpdated = DBG;
                }
                log("updateImsServiceConfig: turnOnIms");
                turnOnIms();
                this.mConfigUpdated = DBG;
            } catch (ImsException e) {
                loge("updateImsServiceConfig: ", e);
                this.mConfigUpdated = false;
            }
        }
    }

    protected boolean updateVolteFeatureValue() throws ImsException {
        boolean available = isVolteEnabledByPlatform();
        boolean enabled = isEnhanced4gLteModeSettingEnabledByUser();
        boolean isNonTty = isNonTtyOrTtyOnVolteEnabled();
        boolean isFeatureOn = available && enabled && isNonTty;
        log("updateVolteFeatureValue: available = " + available + ", enabled = " + enabled + ", nonTTY = " + isNonTty);
        changeMmTelCapability(1, 0, isFeatureOn);
        return isFeatureOn;
    }

    protected boolean updateVideoCallFeatureValue() throws ImsException {
        boolean available = isVtEnabledByPlatform();
        boolean enabled = isVtEnabledByUser();
        boolean isNonTty = isNonTtyOrTtyOnVolteEnabled();
        boolean isDataEnabled = isDataEnabled();
        boolean ignoreDataEnabledChanged = getBooleanCarrierConfig("ignore_data_enabled_changed_for_video_calls");
        boolean isFeatureOn = (!available || !enabled || !isNonTty || (!ignoreDataEnabledChanged && !isDataEnabled)) ? false : DBG;
        log("updateVideoCallFeatureValue: available = " + available + ", enabled = " + enabled + ", nonTTY = " + isNonTty + ", data enabled = " + isDataEnabled);
        changeMmTelCapability(2, 0, isFeatureOn);
        return isFeatureOn;
    }

    protected boolean updateWfcFeatureAndProvisionedValues() throws ImsException {
        TelephonyManager tm = new TelephonyManager(this.mContext, getSubId());
        boolean isNetworkRoaming = tm.isNetworkRoaming();
        boolean available = isWfcEnabledByPlatform();
        boolean enabled = isWfcEnabledByUser();
        int mode = getWfcMode(isNetworkRoaming);
        boolean roaming = isWfcRoamingEnabledByUser();
        boolean isFeatureOn = available && enabled;
        log("updateWfcFeatureAndProvisionedValues: available = " + available + ", enabled = " + enabled + ", mode = " + mode + ", roaming = " + roaming);
        changeMmTelCapability(1, 1, isFeatureOn);
        if (!isFeatureOn) {
            mode = 1;
            roaming = false;
        }
        setWfcModeInternal(mode);
        setWfcRoamingSettingInternal(roaming);
        return isFeatureOn;
    }

    @VisibleForTesting
    public ImsManager(Context context, int phoneId) {
        this.mContext = context;
        this.mPhoneId = phoneId;
        this.mConfigDynamicBind = this.mContext.getResources().getBoolean(17956945);
        this.mConfigManager = (CarrierConfigManager) context.getSystemService("carrier_config");
        createImsService();
    }

    public boolean isDynamicBinding() {
        return this.mConfigDynamicBind;
    }

    public boolean isServiceAvailable() {
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        if (tm.isResolvingImsBinding()) {
            Log.d(TAG, "isServiceAvailable: resolving IMS binding, returning false");
            return false;
        }
        connectIfServiceIsAvailable();
        return this.mMmTelFeatureConnection.isBinderAlive();
    }

    public boolean isServiceReady() {
        connectIfServiceIsAvailable();
        return this.mMmTelFeatureConnection.isBinderReady();
    }

    public void connectIfServiceIsAvailable() {
        if (this.mMmTelFeatureConnection == null || !this.mMmTelFeatureConnection.isBinderAlive()) {
            createImsService();
        }
    }

    public void setConfigListener(ImsConfigListener listener) {
        this.mImsConfigListener = listener;
    }

    @VisibleForTesting
    public void addNotifyStatusChangedCallbackIfAvailable(MmTelFeatureConnection.IFeatureUpdate c) throws ImsException {
        if (!this.mMmTelFeatureConnection.isBinderAlive()) {
            throw new ImsException("Binder is not active!", 106);
        } else if (c != null) {
            this.mStatusCallbacks.add(c);
        }
    }

    void removeNotifyStatusChangedCallback(MmTelFeatureConnection.IFeatureUpdate c) {
        if (c != null) {
            this.mStatusCallbacks.remove(c);
        } else {
            Log.w(TAG, "removeNotifyStatusChangedCallback: callback is null!");
        }
    }

    public void open(MmTelFeature.Listener listener) throws ImsException {
        checkAndThrowExceptionIfServiceUnavailable();
        if (listener != null) {
            try {
                this.mMmTelFeatureConnection.openConnection(listener);
            } catch (RemoteException e) {
                throw new ImsException("open()", e, 106);
            }
        } else {
            throw new NullPointerException("listener can't be null");
        }
    }

    public void addRegistrationListener(int serviceClass, ImsConnectionStateListener listener) throws ImsException {
        addRegistrationListener(listener);
    }

    public void addRegistrationListener(final ImsConnectionStateListener listener) throws ImsException {
        if (listener != null) {
            addRegistrationCallback(listener);
            addCapabilitiesCallback(new ImsFeature.CapabilityCallback() { // from class: com.android.ims.ImsManager.1
                public void onCapabilitiesStatusChanged(ImsFeature.Capabilities config) {
                    listener.onFeatureCapabilityChangedAdapter(ImsManager.this.getRegistrationTech(), config);
                }
            });
            log("Registration Callback registered.");
            return;
        }
        throw new NullPointerException("listener can't be null");
    }

    public void addRegistrationCallback(ImsRegistrationImplBase.Callback callback) throws ImsException {
        if (callback != null) {
            try {
                this.mMmTelFeatureConnection.addRegistrationCallback(callback);
                log("Registration Callback registered.");
            } catch (RemoteException e) {
                throw new ImsException("addRegistrationCallback(IRIB)", e, 106);
            }
        } else {
            throw new NullPointerException("registration callback can't be null");
        }
    }

    public void removeRegistrationListener(ImsRegistrationImplBase.Callback callback) throws ImsException {
        if (callback != null) {
            try {
                this.mMmTelFeatureConnection.removeRegistrationCallback(callback);
                log("Registration callback removed.");
            } catch (RemoteException e) {
                throw new ImsException("removeRegistrationCallback(IRIB)", e, 106);
            }
        } else {
            throw new NullPointerException("registration callback can't be null");
        }
    }

    public void addCapabilitiesCallback(ImsFeature.CapabilityCallback callback) throws ImsException {
        if (callback != null) {
            checkAndThrowExceptionIfServiceUnavailable();
            try {
                this.mMmTelFeatureConnection.addCapabilityCallback(callback);
                log("Capability Callback registered.");
            } catch (RemoteException e) {
                throw new ImsException("addCapabilitiesCallback(IF)", e, 106);
            }
        } else {
            throw new NullPointerException("capabilities callback can't be null");
        }
    }

    public void removeRegistrationListener(ImsConnectionStateListener listener) throws ImsException {
        if (listener != null) {
            checkAndThrowExceptionIfServiceUnavailable();
            try {
                this.mMmTelFeatureConnection.removeRegistrationCallback(listener);
                log("Registration Callback/Listener registered.");
            } catch (RemoteException e) {
                throw new ImsException("addRegistrationCallback()", e, 106);
            }
        } else {
            throw new NullPointerException("listener can't be null");
        }
    }

    public int getRegistrationTech() {
        try {
            return this.mMmTelFeatureConnection.getRegistrationTech();
        } catch (RemoteException e) {
            Log.w(TAG, "getRegistrationTech: no connection to ImsService.");
            return -1;
        }
    }

    public void close() {
        if (this.mMmTelFeatureConnection != null) {
            this.mMmTelFeatureConnection.closeConnection();
        }
        this.mUt = null;
        this.mEcbm = null;
        this.mMultiEndpoint = null;
    }

    public ImsUtInterface getSupplementaryServiceConfiguration() throws ImsException {
        if (this.mUt != null && this.mUt.isBinderAlive()) {
            return this.mUt;
        }
        checkAndThrowExceptionIfServiceUnavailable();
        try {
            IImsUt iUt = this.mMmTelFeatureConnection.getUtInterface();
            if (iUt != null) {
                this.mUt = new ImsUt(iUt);
                return this.mUt;
            }
            throw new ImsException("getSupplementaryServiceConfiguration()", 801);
        } catch (RemoteException e) {
            throw new ImsException("getSupplementaryServiceConfiguration()", e, 106);
        }
    }

    public ImsCallProfile createCallProfile(int serviceType, int callType) throws ImsException {
        checkAndThrowExceptionIfServiceUnavailable();
        try {
            return this.mMmTelFeatureConnection.createCallProfile(serviceType, callType);
        } catch (RemoteException e) {
            throw new ImsException("createCallProfile()", e, 106);
        }
    }

    public ImsCall makeCall(ImsCallProfile profile, String[] callees, ImsCall.Listener listener) throws ImsException {
        log("makeCall :: profile=" + profile);
        checkAndThrowExceptionIfServiceUnavailable();
        ImsCall call = new ImsCall(this.mContext, profile);
        call.setListener(listener);
        ImsCallSession session = createCallSession(profile);
        if (callees == null || callees.length != 1) {
            call.start(session, callees);
        } else {
            call.start(session, callees[0]);
        }
        return call;
    }

    public ImsCall takeCall(IImsCallSession session, Bundle incomingCallExtras, ImsCall.Listener listener) throws ImsException {
        log("takeCall :: incomingCall=" + incomingCallExtras);
        checkAndThrowExceptionIfServiceUnavailable();
        if (incomingCallExtras != null) {
            String callId = getCallId(incomingCallExtras);
            if (callId != null) {
                try {
                    if (session != null) {
                        ImsCall call = new ImsCall(this.mContext, session.getCallProfile());
                        call.attachSession(new ImsCallSession(session));
                        call.setListener(listener);
                        return call;
                    }
                    throw new ImsException("No pending session for the call", 107);
                } catch (Throwable t) {
                    throw new ImsException("takeCall()", t, 0);
                }
            } else {
                throw new ImsException("Call ID missing in the incoming call intent", 101);
            }
        } else {
            throw new ImsException("Can't retrieve session with null intent", 101);
        }
    }

    public ImsConfig getConfigInterface() throws ImsException {
        checkAndThrowExceptionIfServiceUnavailable();
        try {
            IImsConfig config = this.mMmTelFeatureConnection.getConfigInterface();
            if (config != null) {
                return new ImsConfig(config);
            }
            throw new ImsException("getConfigInterface()", 131);
        } catch (RemoteException e) {
            throw new ImsException("getConfigInterface()", e, 106);
        }
    }

    public void changeMmTelCapability(int capability, int radioTech, boolean isEnabled) throws ImsException {
        checkAndThrowExceptionIfServiceUnavailable();
        CapabilityChangeRequest request = new CapabilityChangeRequest();
        if (isEnabled) {
            request.addCapabilitiesToEnableForTech(capability, radioTech);
        } else {
            request.addCapabilitiesToDisableForTech(capability, radioTech);
        }
        try {
            this.mMmTelFeatureConnection.changeEnabledCapabilities(request, null);
            if (this.mImsConfigListener != null) {
                this.mImsConfigListener.onSetFeatureResponse(capability, this.mMmTelFeatureConnection.getRegistrationTech(), isEnabled ? 1 : 0, -1);
            }
        } catch (RemoteException e) {
            throw new ImsException("changeMmTelCapability()", e, 106);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setRttEnabled(final boolean r5) {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            if (r5 != 0) goto L_0x000f
            boolean r2 = r4.isEnhanced4gLteModeSettingEnabledByUser()     // Catch: ImsException -> 0x000d
            if (r2 == 0) goto L_0x000b
            goto L_0x000f
        L_0x000b:
            r2 = r1
            goto L_0x0010
        L_0x000d:
            r0 = move-exception
            goto L_0x0025
        L_0x000f:
            r2 = r0
        L_0x0010:
            r4.setAdvanced4GMode(r2)     // Catch: ImsException -> 0x000d
            if (r5 == 0) goto L_0x0016
            goto L_0x0017
        L_0x0016:
            r0 = r1
        L_0x0017:
            java.lang.Thread r1 = new java.lang.Thread     // Catch: ImsException -> 0x000d
            com.android.ims.-$$Lambda$ImsManager$jpd4qPKM1aFT_1D7HiZpiM__ddY r2 = new com.android.ims.-$$Lambda$ImsManager$jpd4qPKM1aFT_1D7HiZpiM__ddY     // Catch: ImsException -> 0x000d
            r2.<init>()     // Catch: ImsException -> 0x000d
            r1.<init>(r2)     // Catch: ImsException -> 0x000d
            r1.start()     // Catch: ImsException -> 0x000d
            goto L_0x0048
        L_0x0025:
            java.lang.Class<com.android.ims.ImsManager> r1 = com.android.ims.ImsManager.class
            java.lang.String r1 = r1.getSimpleName()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unable to set RTT enabled to "
            r2.append(r3)
            r2.append(r5)
            java.lang.String r3 = ": "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            android.util.Log.e(r1, r2)
        L_0x0048:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.ims.ImsManager.setRttEnabled(boolean):void");
    }

    public static /* synthetic */ void lambda$setRttEnabled$2(ImsManager imsManager, boolean enabled, int value) {
        try {
            String simpleName = ImsManager.class.getSimpleName();
            Log.i(simpleName, "Setting RTT enabled to " + enabled);
            imsManager.getConfigInterface().setProvisionedValue(66, value);
        } catch (ImsException e) {
            String simpleName2 = ImsManager.class.getSimpleName();
            Log.e(simpleName2, "Unable to set RTT enabled to " + enabled + ": " + e);
        }
    }

    public void setTtyMode(int ttyMode) throws ImsException {
        if (!getBooleanCarrierConfig("carrier_volte_tty_supported_bool")) {
            setAdvanced4GMode((ttyMode != 0 || !isEnhanced4gLteModeSettingEnabledByUser()) ? false : DBG);
        }
    }

    public void setUiTTYMode(Context context, int uiTtyMode, Message onComplete) throws ImsException {
        checkAndThrowExceptionIfServiceUnavailable();
        try {
            this.mMmTelFeatureConnection.setUiTTYMode(uiTtyMode, onComplete);
        } catch (RemoteException e) {
            throw new ImsException("setTTYMode()", e, 106);
        }
    }

    private ImsReasonInfo makeACopy(ImsReasonInfo imsReasonInfo) {
        Parcel p = Parcel.obtain();
        imsReasonInfo.writeToParcel(p, 0);
        p.setDataPosition(0);
        ImsReasonInfo clonedReasonInfo = (ImsReasonInfo) ImsReasonInfo.CREATOR.createFromParcel(p);
        p.recycle();
        return clonedReasonInfo;
    }

    public ArrayList<ImsReasonInfo> getRecentImsDisconnectReasons() {
        ArrayList<ImsReasonInfo> disconnectReasons = new ArrayList<>();
        Iterator<ImsReasonInfo> it = this.mRecentDisconnectReasons.iterator();
        while (it.hasNext()) {
            ImsReasonInfo reason = it.next();
            disconnectReasons.add(makeACopy(reason));
        }
        return disconnectReasons;
    }

    public int getImsServiceState() throws ImsException {
        return this.mMmTelFeatureConnection.getFeatureState();
    }

    public boolean getBooleanCarrierConfig(String key) {
        int[] subIds = SubscriptionManager.getSubId(this.mPhoneId);
        int subId = -1;
        if (subIds != null && subIds.length >= 1) {
            subId = subIds[0];
        }
        PersistableBundle b = null;
        if (this.mConfigManager != null) {
            b = this.mConfigManager.getConfigForSubId(subId);
        }
        if (b != null) {
            return b.getBoolean(key);
        }
        return CarrierConfigManager.getDefaultConfig().getBoolean(key);
    }

    protected int getIntCarrierConfig(String key) {
        int[] subIds = SubscriptionManager.getSubId(this.mPhoneId);
        int subId = -1;
        if (subIds != null && subIds.length >= 1) {
            subId = subIds[0];
        }
        PersistableBundle b = null;
        if (this.mConfigManager != null) {
            b = this.mConfigManager.getConfigForSubId(subId);
        }
        if (b != null) {
            return b.getInt(key);
        }
        return CarrierConfigManager.getDefaultConfig().getInt(key);
    }

    protected static String getCallId(Bundle incomingCallExtras) {
        if (incomingCallExtras == null) {
            return null;
        }
        return incomingCallExtras.getString(EXTRA_CALL_ID);
    }

    private void checkAndThrowExceptionIfServiceUnavailable() throws ImsException {
        if (this.mMmTelFeatureConnection == null || !this.mMmTelFeatureConnection.isBinderAlive()) {
            createImsService();
            if (this.mMmTelFeatureConnection == null) {
                throw new ImsException("Service is unavailable", 106);
            }
        }
    }

    protected void createImsService() {
        Rlog.i(TAG, "Creating ImsService");
        this.mMmTelFeatureConnection = MmTelFeatureConnection.create(this.mContext, this.mPhoneId);
        this.mMmTelFeatureConnection.setStatusCallback(new MmTelFeatureConnection.IFeatureUpdate() { // from class: com.android.ims.ImsManager.2
            @Override // com.android.ims.MmTelFeatureConnection.IFeatureUpdate
            public void notifyStateChanged() {
                ImsManager.this.mStatusCallbacks.forEach($$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0.INSTANCE);
            }

            @Override // com.android.ims.MmTelFeatureConnection.IFeatureUpdate
            public void notifyUnavailable() {
                ImsManager.this.mStatusCallbacks.forEach($$Lambda$VPAygt3Ycyud4AweDbrpru2LJ8.INSTANCE);
            }
        });
    }

    protected ImsCallSession createCallSession(ImsCallProfile profile) throws ImsException {
        try {
            return new ImsCallSession(this.mMmTelFeatureConnection.createCallSession(profile));
        } catch (RemoteException e) {
            Rlog.w(TAG, "CreateCallSession: Error, remote exception: " + e.getMessage());
            throw new ImsException("createCallSession()", e, 106);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String s) {
        Rlog.d(TAG, s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String s) {
        Rlog.e(TAG, s);
    }

    private static void loge(String s, Throwable t) {
        Rlog.e(TAG, s, t);
    }

    protected void turnOnIms() throws ImsException {
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        tm.enableIms(this.mPhoneId);
    }

    private boolean isImsTurnOffAllowed() {
        if (!isTurnOffImsAllowedByPlatform() || (isWfcEnabledByPlatform() && isWfcEnabledByUser())) {
            return false;
        }
        return DBG;
    }

    protected void setLteFeatureValues(boolean turnOn) {
        log("setLteFeatureValues: " + turnOn);
        CapabilityChangeRequest request = new CapabilityChangeRequest();
        boolean enableViLte = DBG;
        if (turnOn) {
            request.addCapabilitiesToEnableForTech(1, 0);
        } else {
            request.addCapabilitiesToDisableForTech(1, 0);
        }
        if (isVolteEnabledByPlatform()) {
            boolean ignoreDataEnabledChanged = getBooleanCarrierConfig("ignore_data_enabled_changed_for_video_calls");
            if (!turnOn || !isVtEnabledByUser() || (!ignoreDataEnabledChanged && !isDataEnabled())) {
                enableViLte = false;
            }
            if (enableViLte) {
                request.addCapabilitiesToEnableForTech(2, 0);
            } else {
                request.addCapabilitiesToDisableForTech(2, 0);
            }
        }
        try {
            this.mMmTelFeatureConnection.changeEnabledCapabilities(request, null);
        } catch (RemoteException e) {
            Log.e(TAG, "setLteFeatureValues: Exception: " + e.getMessage());
        }
    }

    protected void setAdvanced4GMode(boolean turnOn) throws ImsException {
        checkAndThrowExceptionIfServiceUnavailable();
        if (turnOn) {
            setLteFeatureValues(turnOn);
            log("setAdvanced4GMode: turnOnIms");
            turnOnIms();
            return;
        }
        if (isImsTurnOffAllowed()) {
            log("setAdvanced4GMode: turnOffIms");
            turnOffIms();
        }
        setLteFeatureValues(turnOn);
    }

    protected void turnOffIms() throws ImsException {
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        tm.disableIms(this.mPhoneId);
    }

    private void addToRecentDisconnectReasons(ImsReasonInfo reason) {
        if (reason != null) {
            while (this.mRecentDisconnectReasons.size() >= 16) {
                this.mRecentDisconnectReasons.removeFirst();
            }
            this.mRecentDisconnectReasons.addLast(reason);
        }
    }

    public ImsEcbm getEcbmInterface() throws ImsException {
        if (this.mEcbm != null && this.mEcbm.isBinderAlive()) {
            return this.mEcbm;
        }
        checkAndThrowExceptionIfServiceUnavailable();
        try {
            IImsEcbm iEcbm = this.mMmTelFeatureConnection.getEcbmInterface();
            if (iEcbm != null) {
                this.mEcbm = new ImsEcbm(iEcbm);
                return this.mEcbm;
            }
            throw new ImsException("getEcbmInterface()", 901);
        } catch (RemoteException e) {
            throw new ImsException("getEcbmInterface()", e, 106);
        }
    }

    public void sendSms(int token, int messageRef, String format, String smsc, boolean isRetry, byte[] pdu) throws ImsException {
        try {
            this.mMmTelFeatureConnection.sendSms(token, messageRef, format, smsc, isRetry, pdu);
        } catch (RemoteException e) {
            throw new ImsException("sendSms()", e, 106);
        }
    }

    public void acknowledgeSms(int token, int messageRef, int result) throws ImsException {
        try {
            this.mMmTelFeatureConnection.acknowledgeSms(token, messageRef, result);
        } catch (RemoteException e) {
            throw new ImsException("acknowledgeSms()", e, 106);
        }
    }

    public void acknowledgeSmsReport(int token, int messageRef, int result) throws ImsException {
        try {
            this.mMmTelFeatureConnection.acknowledgeSmsReport(token, messageRef, result);
        } catch (RemoteException e) {
            throw new ImsException("acknowledgeSmsReport()", e, 106);
        }
    }

    public String getSmsFormat() throws ImsException {
        try {
            return this.mMmTelFeatureConnection.getSmsFormat();
        } catch (RemoteException e) {
            throw new ImsException("getSmsFormat()", e, 106);
        }
    }

    public void setSmsListener(IImsSmsListener listener) throws ImsException {
        try {
            this.mMmTelFeatureConnection.setSmsListener(listener);
        } catch (RemoteException e) {
            throw new ImsException("setSmsListener()", e, 106);
        }
    }

    public void onSmsReady() throws ImsException {
        try {
            this.mMmTelFeatureConnection.onSmsReady();
        } catch (RemoteException e) {
            throw new ImsException("onSmsReady()", e, 106);
        }
    }

    public int shouldProcessCall(boolean isEmergency, String[] numbers) throws ImsException {
        try {
            return this.mMmTelFeatureConnection.shouldProcessCall(isEmergency, numbers);
        } catch (RemoteException e) {
            throw new ImsException("shouldProcessCall()", e, 106);
        }
    }

    public ImsMultiEndpoint getMultiEndpointInterface() throws ImsException {
        if (this.mMultiEndpoint != null && this.mMultiEndpoint.isBinderAlive()) {
            return this.mMultiEndpoint;
        }
        checkAndThrowExceptionIfServiceUnavailable();
        try {
            IImsMultiEndpoint iImsMultiEndpoint = this.mMmTelFeatureConnection.getMultiEndpointInterface();
            if (iImsMultiEndpoint != null) {
                this.mMultiEndpoint = new ImsMultiEndpoint(iImsMultiEndpoint);
                return this.mMultiEndpoint;
            }
            throw new ImsException("getMultiEndpointInterface()", 902);
        } catch (RemoteException e) {
            throw new ImsException("getMultiEndpointInterface()", e, 106);
        }
    }

    public static void factoryReset(Context context) {
        ImsManager mgr = getInstance(context, SubscriptionManager.getDefaultVoicePhoneId());
        if (mgr != null) {
            mgr.factoryReset();
        }
        loge("factoryReset: ImsManager null.");
    }

    public void factoryReset() {
        SubscriptionManager.setSubscriptionProperty(getSubId(), "volte_vt_enabled", booleanToPropertyString(getBooleanCarrierConfig("enhanced_4g_lte_on_by_default_bool")));
        SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_enabled", booleanToPropertyString(getBooleanCarrierConfig("carrier_default_wfc_ims_enabled_bool")));
        SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_mode", Integer.toString(getIntCarrierConfig("carrier_default_wfc_ims_mode_int")));
        SubscriptionManager.setSubscriptionProperty(getSubId(), "wfc_ims_roaming_enabled", booleanToPropertyString(getBooleanCarrierConfig("carrier_default_wfc_ims_roaming_enabled_bool")));
        SubscriptionManager.setSubscriptionProperty(getSubId(), "vt_ims_enabled", booleanToPropertyString(DBG));
        updateImsServiceConfig(DBG);
    }

    protected boolean isDataEnabled() {
        return new TelephonyManager(this.mContext, getSubId()).isDataCapable();
    }

    private boolean isVolteProvisioned() {
        return getProvisionedBoolNoException(10);
    }

    private boolean isWfcProvisioned() {
        return getProvisionedBoolNoException(28);
    }

    private boolean isVtProvisioned() {
        return getProvisionedBoolNoException(11);
    }

    protected static String booleanToPropertyString(boolean bool) {
        return bool ? RadioCapabilitySwitchUtil.IMSI_READY : "0";
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("ImsManager:");
        pw.println("  mPhoneId = " + this.mPhoneId);
        pw.println("  mConfigUpdated = " + this.mConfigUpdated);
        pw.println("  mImsServiceProxy = " + this.mMmTelFeatureConnection);
        pw.println("  mDataEnabled = " + isDataEnabled());
        pw.println("  ignoreDataEnabledChanged = " + getBooleanCarrierConfig("ignore_data_enabled_changed_for_video_calls"));
        pw.println("  isGbaValid = " + isGbaValid());
        pw.println("  isImsTurnOffAllowed = " + isImsTurnOffAllowed());
        pw.println("  isNonTtyOrTtyOnVolteEnabled = " + isNonTtyOrTtyOnVolteEnabled());
        pw.println("  isVolteEnabledByPlatform = " + isVolteEnabledByPlatform());
        pw.println("  isVolteProvisionedOnDevice = " + isVolteProvisionedOnDevice());
        pw.println("  isEnhanced4gLteModeSettingEnabledByUser = " + isEnhanced4gLteModeSettingEnabledByUser());
        pw.println("  isVtEnabledByPlatform = " + isVtEnabledByPlatform());
        pw.println("  isVtEnabledByUser = " + isVtEnabledByUser());
        pw.println("  isWfcEnabledByPlatform = " + isWfcEnabledByPlatform());
        pw.println("  isWfcEnabledByUser = " + isWfcEnabledByUser());
        pw.println("  getWfcMode = " + getWfcMode());
        pw.println("  isWfcRoamingEnabledByUser = " + isWfcRoamingEnabledByUser());
        pw.println("  isVtProvisionedOnDevice = " + isVtProvisionedOnDevice());
        pw.println("  isWfcProvisionedOnDevice = " + isWfcProvisionedOnDevice());
        pw.flush();
    }

    private static Class<?> getMtkImsManager() {
        try {
            Class<?> mtkImsManagerClass = Class.forName("com.mediatek.ims.internal.MtkImsManager");
            return mtkImsManagerClass;
        } catch (Exception e) {
            loge("MtkImsManager not found!");
            return null;
        }
    }
}
