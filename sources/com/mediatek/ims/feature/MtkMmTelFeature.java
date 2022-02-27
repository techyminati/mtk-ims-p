package com.mediatek.ims.feature;

import android.annotation.SystemApi;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.feature.CapabilityChangeRequest;
import android.telephony.ims.feature.ImsFeature;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import android.telephony.ims.stub.ImsEcbmImplBase;
import android.telephony.ims.stub.ImsMultiEndpointImplBase;
import android.telephony.ims.stub.ImsSmsImplBase;
import android.telephony.ims.stub.ImsUtImplBase;
import android.text.TextUtils;
import com.android.ims.ImsConfigListener;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsUt;
import com.mediatek.ims.ImsCallSessionProxy;
import com.mediatek.ims.ImsCommonUtil;
import com.mediatek.ims.ImsService;
import com.mediatek.ims.ImsUtImpl;
import com.mediatek.ims.plugin.ExtensionFactory;
import com.mediatek.ims.plugin.LegacyComponentFactory;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
@SystemApi
/* loaded from: classes.dex */
public class MtkMmTelFeature extends MmTelFeature {
    private static final boolean DEBUG;
    private static final int DELAY_IMS_SERVICE_IMPL_QUERY_MS = 5000;
    public static final int FEATURE_DISABLED = 0;
    public static final int FEATURE_ENABLED = 1;
    public static final int FEATURE_TYPE_UNKNOWN = -1;
    public static final int FEATURE_TYPE_UT_OVER_LTE = 4;
    public static final int FEATURE_TYPE_UT_OVER_WIFI = 5;
    public static final int FEATURE_TYPE_VIDEO_OVER_LTE = 1;
    public static final int FEATURE_TYPE_VIDEO_OVER_WIFI = 3;
    public static final int FEATURE_TYPE_VOICE_OVER_LTE = 0;
    public static final int FEATURE_TYPE_VOICE_OVER_WIFI = 2;
    public static final int FEATURE_UNKNOWN = -1;
    private static final String LOG_TAG = "MtkMmTelFeature";
    private static final int MAXMUIM_IMS_SERVICE_IMPL_RETRY = 3;
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final Map<Integer, Integer> REG_TECH_TO_NET_TYPE;
    private static final int WAIT_TIMEOUT_MS = 2000;
    private Context mContext;
    private final ImsService.IMtkMmTelFeatureCallback mImsServiceCallback = new ImsService.IMtkMmTelFeatureCallback() { // from class: com.mediatek.ims.feature.MtkMmTelFeature.1
        @Override // com.mediatek.ims.ImsService.IMtkMmTelFeatureCallback
        public void notifyContextChanged(Context context) {
            MtkMmTelFeature.this.mContext = context;
            MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
            mtkMmTelFeature.log("Set context to " + MtkMmTelFeature.this.mContext);
        }

        @Override // com.mediatek.ims.ImsService.IMtkMmTelFeatureCallback
        public void sendSmsRsp(int token, int messageRef, int status, int reason) {
            MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
            mtkMmTelFeature.log("sendSmsRsp, token " + token + ", messageRef " + messageRef + ", status " + status + ", reason " + reason);
            MtkImsSmsImpl smsImpl = MtkMmTelFeature.this.getSmsImplementation();
            if (smsImpl != null) {
                smsImpl.sendSmsRsp(token, messageRef, status, reason);
            }
        }

        @Override // com.mediatek.ims.ImsService.IMtkMmTelFeatureCallback
        public void newStatusReportInd(byte[] pdu, String format) {
            MtkImsSmsImpl smsImpl = MtkMmTelFeature.this.getSmsImplementation();
            if (smsImpl != null) {
                smsImpl.newStatusReportInd(pdu, format);
            }
        }

        @Override // com.mediatek.ims.ImsService.IMtkMmTelFeatureCallback
        public void newImsSmsInd(byte[] pdu, String format) {
            MtkImsSmsImpl smsImpl = MtkMmTelFeature.this.getSmsImplementation();
            if (smsImpl != null) {
                smsImpl.newImsSmsInd(pdu, format);
            }
        }

        @Override // com.mediatek.ims.ImsService.IMtkMmTelFeatureCallback
        public void notifyCapabilitiesChanged(MmTelFeature.MmTelCapabilities c) {
            MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
            mtkMmTelFeature.log("notifyCapabilitiesStatusChanged " + c);
            MtkMmTelFeature.this.onCapabilitiesStatusChanged(c);
        }

        @Override // com.mediatek.ims.ImsService.IMtkMmTelFeatureCallback
        public void notifyIncomingCall(ImsCallSessionImplBase c, Bundle extras) {
            MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
            mtkMmTelFeature.log("notifyIncomingCall ImsCallSessionImplBase " + c + " extras " + extras);
            MtkMmTelFeature.this.onNotifyIncomingCall(c, extras);
        }

        @Override // com.mediatek.ims.ImsService.IMtkMmTelFeatureCallback
        public void notifyIncomingCallSession(IImsCallSession c, Bundle extras) {
            MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
            mtkMmTelFeature.log("notifyIncomingCallSession IImsCallSession " + c + " extras " + extras);
            MtkMmTelFeature.this.onNotifyIncomingCallSession(c, extras);
        }
    };
    private ImsService mImsServiceImpl;
    private int mSlotId;

    static {
        DEBUG = TextUtils.equals(Build.TYPE, "eng") || SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1;
        REG_TECH_TO_NET_TYPE = new HashMap(2);
        REG_TECH_TO_NET_TYPE.put(0, 13);
        REG_TECH_TO_NET_TYPE.put(1, 18);
    }

    public MtkMmTelFeature(int slotId) {
        this.mImsServiceImpl = null;
        this.mSlotId = slotId;
        int retry = 0;
        while (this.mImsServiceImpl == null && retry < 3) {
            this.mImsServiceImpl = ImsService.getInstance(null);
            try {
                if (this.mImsServiceImpl == null) {
                    log("ImsService is not initialized yet. Query later - " + retry);
                    Thread.sleep(5000L);
                    retry++;
                }
            } catch (InterruptedException er) {
                loge("Fail to get ImsService " + er);
            }
        }
        if (this.mImsServiceImpl != null) {
            this.mImsServiceImpl.setMmTelFeatureCallback(slotId, this.mImsServiceCallback);
            log("initialize mContext " + this.mContext + " slotId " + slotId);
            initialize(this.mContext, slotId);
            setFeatureState(2);
        }
        log("[" + this.mSlotId + "] MtkMmTelFeature created");
    }

    /* loaded from: classes.dex */
    private static class ConfigListener extends ImsConfigListener.Stub {
        private final int mCapability;
        private final CountDownLatch mLatch;
        private final int mTech;

        public ConfigListener(int capability, int tech, CountDownLatch latch) {
            this.mCapability = capability;
            this.mTech = tech;
            this.mLatch = latch;
        }

        public void onGetFeatureResponse(int feature, int network, int value, int status) throws RemoteException {
            if (feature == this.mCapability && network == this.mTech) {
                this.mLatch.countDown();
                getFeatureValueReceived(value);
                return;
            }
            Rlog.e(MtkMmTelFeature.LOG_TAG, "onGetFeatureResponse: response different than requested: feature=" + feature + " and network=" + network);
        }

        public void onSetFeatureResponse(int feature, int network, int value, int status) throws RemoteException {
            if (feature == this.mCapability && network == this.mTech) {
                this.mLatch.countDown();
                setFeatureValueReceived(value);
                return;
            }
            Rlog.e(MtkMmTelFeature.LOG_TAG, "onSetFeatureResponse: response different than requested: feature=" + feature + " and network=" + network);
        }

        public void onGetVideoQuality(int status, int quality) throws RemoteException {
        }

        public void onSetVideoQuality(int status) throws RemoteException {
        }

        public void getFeatureValueReceived(int value) {
        }

        public void setFeatureValueReceived(int value) {
        }
    }

    public final void onCapabilitiesStatusChanged(MmTelFeature.MmTelCapabilities c) {
        try {
            super.notifyCapabilitiesStatusChanged(c);
        } catch (IllegalStateException e) {
            loge("onCapabilitiesStatusChanged error. msg " + e.getMessage());
        }
    }

    public void onNotifyIncomingCall(ImsCallSessionImplBase c, Bundle extras) {
        super.notifyIncomingCall(c, extras);
    }

    public void onNotifyIncomingCallSession(IImsCallSession c, Bundle extras) {
        super.notifyIncomingCallSession(c, extras);
    }

    private MmTelFeature.MmTelCapabilities convertCapabilities(int[] enabledFeatures) {
        boolean[] featuresEnabled = new boolean[enabledFeatures.length];
        for (int i = 0; i <= 5 && i < enabledFeatures.length; i++) {
            if (enabledFeatures[i] == i) {
                featuresEnabled[i] = true;
            } else if (enabledFeatures[i] == -1) {
                featuresEnabled[i] = false;
            }
        }
        MmTelFeature.MmTelCapabilities capabilities = new MmTelFeature.MmTelCapabilities();
        if (featuresEnabled[0] || featuresEnabled[2]) {
            capabilities.addCapabilities(1);
        }
        if (featuresEnabled[1] || featuresEnabled[3]) {
            capabilities.addCapabilities(2);
        }
        if (featuresEnabled[4] || featuresEnabled[5]) {
            capabilities.addCapabilities(4);
        }
        log("convertCapabilities - capabilities: " + capabilities);
        return capabilities;
    }

    private int convertCapability(int capability, int radioTech) {
        if (radioTech == 0) {
            if (capability == 4) {
                return 4;
            }
            switch (capability) {
                case 1:
                    return 0;
                case 2:
                    return 1;
                default:
                    return -1;
            }
        } else if (radioTech != 1) {
            return -1;
        } else {
            if (capability == 4) {
                return 5;
            }
            switch (capability) {
                case 1:
                    return 2;
                case 2:
                    return 3;
                default:
                    return -1;
            }
        }
    }

    public boolean queryCapabilityConfiguration(final int capability, final int radioTech) {
        int capConverted = convertCapability(capability, radioTech);
        CountDownLatch latch = new CountDownLatch(1);
        final int[] returnValue = {-1};
        int regTech = REG_TECH_TO_NET_TYPE.getOrDefault(Integer.valueOf(radioTech), -1).intValue();
        try {
            getConfigInterface().getFeatureValue(capConverted, regTech, new ConfigListener(capConverted, regTech, latch) { // from class: com.mediatek.ims.feature.MtkMmTelFeature.2
                @Override // com.mediatek.ims.feature.MtkMmTelFeature.ConfigListener
                public void getFeatureValueReceived(int value) {
                    returnValue[0] = value;
                    MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
                    mtkMmTelFeature.log("Feature " + capability + " tech " + radioTech + "enable? " + returnValue[0]);
                }
            });
        } catch (RemoteException e) {
            loge("Fail to queryCapabilityConfiguration " + e.getMessage());
        }
        try {
            latch.await(2000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            loge("queryCapabilityConfiguration - error waiting: " + e2.getMessage());
        }
        return returnValue[0] == 1;
    }

    public void changeEnabledCapabilities(CapabilityChangeRequest request, final ImsFeature.CapabilityCallbackProxy c) {
        int i;
        int i2;
        if (request != null) {
            try {
                IImsConfig imsConfig = getConfigInterface();
                Iterator it = request.getCapabilitiesToDisable().iterator();
                while (true) {
                    i = -1;
                    i2 = 1;
                    if (!it.hasNext()) {
                        break;
                    }
                    final CapabilityChangeRequest.CapabilityPair cap = (CapabilityChangeRequest.CapabilityPair) it.next();
                    CountDownLatch latch = new CountDownLatch(1);
                    int capConverted = convertCapability(cap.getCapability(), cap.getRadioTech());
                    int radioTechConverted = REG_TECH_TO_NET_TYPE.getOrDefault(Integer.valueOf(cap.getRadioTech()), -1).intValue();
                    if (DEBUG) {
                        log("changeEnabledCapabilities - cap: " + capConverted + " radioTech: " + radioTechConverted + " disabled");
                    }
                    imsConfig.setFeatureValue(capConverted, radioTechConverted, 0, new ConfigListener(capConverted, radioTechConverted, latch) { // from class: com.mediatek.ims.feature.MtkMmTelFeature.3
                        @Override // com.mediatek.ims.feature.MtkMmTelFeature.ConfigListener
                        public void setFeatureValueReceived(int value) {
                            if (value != 0) {
                                if (c != null) {
                                    c.onChangeCapabilityConfigurationError(cap.getCapability(), cap.getRadioTech(), -1);
                                } else {
                                    return;
                                }
                            }
                            if (MtkMmTelFeature.DEBUG) {
                                MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
                                mtkMmTelFeature.log("changeEnabledCapabilities - setFeatureValueReceived with value " + value);
                            }
                        }
                    });
                    latch.await(2000L, TimeUnit.MILLISECONDS);
                }
                for (final CapabilityChangeRequest.CapabilityPair cap2 : request.getCapabilitiesToEnable()) {
                    CountDownLatch latch2 = new CountDownLatch(i2);
                    int capConverted2 = convertCapability(cap2.getCapability(), cap2.getRadioTech());
                    int radioTechConverted2 = REG_TECH_TO_NET_TYPE.getOrDefault(Integer.valueOf(cap2.getRadioTech()), Integer.valueOf(i)).intValue();
                    if (DEBUG) {
                        log("changeEnabledCapabilities - cap: " + capConverted2 + " radioTech: " + radioTechConverted2 + " enabled");
                    }
                    imsConfig.setFeatureValue(capConverted2, radioTechConverted2, 1, new ConfigListener(capConverted2, radioTechConverted2, latch2) { // from class: com.mediatek.ims.feature.MtkMmTelFeature.4
                        @Override // com.mediatek.ims.feature.MtkMmTelFeature.ConfigListener
                        public void setFeatureValueReceived(int value) {
                            if (value != 1) {
                                if (c != null) {
                                    c.onChangeCapabilityConfigurationError(cap2.getCapability(), cap2.getRadioTech(), -1);
                                } else {
                                    return;
                                }
                            }
                            if (MtkMmTelFeature.DEBUG) {
                                MtkMmTelFeature mtkMmTelFeature = MtkMmTelFeature.this;
                                mtkMmTelFeature.log("changeEnabledCapabilities - setFeatureValueReceived with value " + value);
                            }
                        }
                    });
                    latch2.await(2000L, TimeUnit.MILLISECONDS);
                    i2 = 1;
                    i = -1;
                }
            } catch (RemoteException | InterruptedException e) {
                log("changeEnabledCapabilities: Error processing: " + e.getMessage());
            }
        }
    }

    public ImsCallProfile createCallProfile(int callSessionType, int callType) {
        log("createCallProfile: callSessionType = " + callSessionType + ",  callType = " + callType);
        if (this.mImsServiceImpl == null) {
            return null;
        }
        ImsCallProfile profile = this.mImsServiceImpl.onCreateCallProfile(this.mSlotId, callSessionType, callType);
        return profile;
    }

    public ImsCallSessionImplBase createCallSession(ImsCallProfile profile) {
        log("createCallSession");
        if (this.mImsServiceImpl == null) {
            return null;
        }
        ImsCallSessionProxy callSessionProxy = this.mImsServiceImpl.onCreateCallSessionProxy(this.mSlotId, profile, null);
        return callSessionProxy;
    }

    public int shouldProcessCall(String[] numbers) {
        log("shouldProcessCall");
        return 0;
    }

    protected IImsUt getUtInterface() throws RemoteException {
        ImsUtImplBase utImpl = getUt();
        if (utImpl != null) {
            return utImpl.getInterface();
        }
        return null;
    }

    protected IImsEcbm getEcbmInterface() throws RemoteException {
        log("getEcbmInterface");
        ImsEcbmImplBase ecbm = getEcbm();
        if (ecbm != null) {
            return ecbm.getImsEcbm();
        }
        return null;
    }

    public IImsMultiEndpoint getMultiEndpointInterface() throws RemoteException {
        log("getMultiEndpointInterface");
        ImsMultiEndpointImplBase multiendpoint = getMultiEndpoint();
        if (multiendpoint != null) {
            return multiendpoint.getIImsMultiEndpoint();
        }
        return null;
    }

    public ImsUtImplBase getUt() {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            return ImsUtImpl.getInstance(this.mContext, this.mSlotId, this.mImsServiceImpl);
        }
        LegacyComponentFactory factory = ExtensionFactory.makeLegacyComponentFactory();
        ImsUtImplBase inst = factory.makeImsUt(this.mContext, this.mSlotId, this.mImsServiceImpl);
        return inst;
    }

    public ImsEcbmImplBase getEcbm() {
        log("getEcbm");
        if (this.mImsServiceImpl == null) {
            return null;
        }
        ImsEcbmImplBase ecbm = this.mImsServiceImpl.onGetEcbmProxy(this.mSlotId);
        return ecbm;
    }

    public ImsMultiEndpointImplBase getMultiEndpoint() {
        log("getMultiEndpoint");
        if (this.mImsServiceImpl == null) {
            return null;
        }
        ImsMultiEndpointImplBase multiendpoint = this.mImsServiceImpl.onGetMultiEndpointProxy(this.mSlotId);
        return multiendpoint;
    }

    public void setUiTtyMode(int mode, Message onCompleteMessage) {
    }

    public IImsConfig getConfigInterface() {
        if (this.mImsServiceImpl == null) {
            return null;
        }
        IImsConfig configInterface = this.mImsServiceImpl.onGetConfigInterface(this.mSlotId);
        return configInterface;
    }

    public ImsSmsImplBase getSmsImplementation() {
        return MtkImsSmsImpl.getInstance(this.mContext, this.mSlotId, this.mImsServiceImpl);
    }

    private String getSmsFormat() {
        return getSmsImplementation().getSmsFormat();
    }

    public void onFeatureRemoved() {
    }

    public void onFeatureReady() {
        log("onFeatureReady called!");
    }

    public void enableIms(int slotId) {
        if (this.mImsServiceImpl != null) {
            this.mImsServiceImpl.enableIms(slotId);
        }
    }

    public void disableIms(int slotId) {
        if (this.mImsServiceImpl != null) {
            this.mImsServiceImpl.disableIms(slotId);
        }
    }

    public void close() {
        if (this.mImsServiceImpl != null) {
            this.mImsServiceImpl.setMmTelFeatureCallback(this.mSlotId, null);
            logi("Unregister callback from ImsService");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String msg) {
        Rlog.d(LOG_TAG, "[" + this.mSlotId + "] " + msg);
    }

    private void logi(String msg) {
        Rlog.i(LOG_TAG, "[" + this.mSlotId + "] " + msg);
    }

    private void loge(String msg) {
        Rlog.e(LOG_TAG, "[" + this.mSlotId + "] " + msg);
    }
}
