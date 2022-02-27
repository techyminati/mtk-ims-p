package com.mediatek.ims;

import android.content.Context;
import android.os.Build;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.aidl.IImsCallSessionListener;
import android.telephony.ims.aidl.IImsSmsListener;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsUt;
import com.mediatek.gba.NafSessionKey;
import com.mediatek.ims.internal.IMtkImsCallSession;
import com.mediatek.ims.internal.IMtkImsConfig;
import com.mediatek.ims.internal.IMtkImsService;
import com.mediatek.ims.internal.IMtkImsUt;
import com.mediatek.ims.internal.ImsVTProviderUtil;
/* loaded from: classes.dex */
public class MtkImsService extends IMtkImsService.Stub {
    private static final boolean DBG = true;
    private static final boolean ENGLOAD = "eng".equals(Build.TYPE);
    private static final String LOG_TAG = "MtkImsService";
    private ImsService mImsService;

    public MtkImsService(Context context, ImsService imsService) {
        this.mImsService = null;
        this.mImsService = imsService;
        log("init");
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void setCallIndication(int phoneId, String callId, String callNum, int seqNum, String toNumber, boolean isAllow) {
        this.mImsService.onSetCallIndication(phoneId, callId, callNum, seqNum, toNumber, isAllow);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void UpdateImsState(int phoneId) {
        this.mImsService.onUpdateImsSate(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public int getImsState(int phoneId) {
        return this.mImsService.getImsState(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public int getImsRegUriType(int phoneId) {
        return this.mImsService.getImsRegUriType(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void hangupAllCall(int phoneId) {
        this.mImsService.onHangupAllCall(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void deregisterIms(int phoneId) {
        this.mImsService.deregisterIms(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void updateRadioState(int radioState, int phoneId) {
        this.mImsService.updateRadioState(radioState, phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public IMtkImsConfig getConfigInterfaceEx(int phoneId) {
        this.mImsService.bindAndRegisterWifiOffloadService();
        return this.mImsService.getImsConfigManager().getEx(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public IMtkImsCallSession createMtkCallSession(int phoneId, ImsCallProfile profile, IImsCallSessionListener listener, IImsCallSession aospCallSessionImpl) {
        return this.mImsService.onCreateMtkCallSession(phoneId, profile, listener, aospCallSessionImpl);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public IMtkImsCallSession getPendingMtkCallSession(String callId) {
        return this.mImsService.onGetPendingMtkCallSession(callId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public IImsUt getUtInterface(int phoneId) {
        return this.mImsService.onGetUtInterface(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public IMtkImsUt getMtkUtInterface(int phoneId) {
        return this.mImsService.onGetMtkUtInterface(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public NafSessionKey runGbaAuthentication(String nafFqdn, byte[] nafSecureProtocolId, boolean forceRun, int netId, int phoneId) {
        return this.mImsService.onRunGbaAuthentication(nafFqdn, nafSecureProtocolId, forceRun, netId, phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public int getModemMultiImsCount() {
        return this.mImsService.getModemMultiImsCount();
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public int getCurrentCallCount(int phoneId) {
        return this.mImsService.getCurrentCallCount(phoneId);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public int[] getImsNetworkState(int capability) {
        return this.mImsService.getImsNetworkState(capability);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public boolean isCameraAvailable() {
        return ImsVTProviderUtil.isCameraAvailable();
    }

    private void log(String s) {
        Rlog.d(LOG_TAG, s);
    }

    private void englog(String s) {
        if (ENGLOAD) {
            log(s);
        }
    }

    private void logw(String s) {
        Rlog.w(LOG_TAG, s);
    }

    private void loge(String s) {
        Rlog.e(LOG_TAG, s);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void addImsSmsListener(int phoneId, IImsSmsListener listener) {
        this.mImsService.onAddImsSmsListener(phoneId, listener);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void sendSms(int phoneId, int token, int messageRef, String format, String smsc, boolean isRetry, byte[] pdu) {
        this.mImsService.sendSms(phoneId, token, messageRef, format, smsc, isRetry, pdu);
    }

    @Override // com.mediatek.ims.internal.IMtkImsService
    public void registerProprietaryImsListener(int phoneId, IImsRegistrationListener listener) {
        this.mImsService.onAddRegistrationListener(phoneId, 1, listener);
    }
}
