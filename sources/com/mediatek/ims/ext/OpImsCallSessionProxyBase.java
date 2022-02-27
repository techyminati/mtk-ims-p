package com.mediatek.ims.ext;

import android.content.Context;
import android.os.AsyncResult;
import android.os.Bundle;
import android.os.Message;
import android.telephony.ims.ImsReasonInfo;
import com.mediatek.ims.SipMessage;
import com.mediatek.ims.internal.IMtkImsCallSession;
/* loaded from: classes.dex */
public class OpImsCallSessionProxyBase implements OpImsCallSessionProxy {
    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public void broadcastForNotRingingMtIfRequired(boolean sipSessionProgress, int state, int serviceId, String callNumber, Context context) {
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public void setEmergencyCallConfig(Object imsRILAdapter, String dialString) {
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public void deviceSwitch(Object imsRILAdapter, String number, String deviceId, Message response) {
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public void cancelDeviceSwitch(Object imsRILAdapter) {
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public void handleDeviceSwitchResponse(IMtkImsCallSession imsCallSession, AsyncResult result) {
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public boolean handleDeviceSwitchResult(String callId, IMtkImsCallSession imsCallSession, AsyncResult result) {
        return false;
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public boolean isValidVtDialString(String number) {
        return true;
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public String normalizeVtDialString(String number) {
        return number;
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public boolean isDeviceSwitching() {
        return false;
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public ImsReasonInfo getImsReasonInfo(SipMessage sipMsg) {
        return null;
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public boolean handleCallStartFailed(IMtkImsCallSession imsCallSession, Object imsRILAdapter, boolean hasHoldingCall) {
        return false;
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public boolean handleHangup() {
        return false;
    }

    @Override // com.mediatek.ims.ext.OpImsCallSessionProxy
    public void sendCallEventWithRat(Bundle extras) {
    }
}
