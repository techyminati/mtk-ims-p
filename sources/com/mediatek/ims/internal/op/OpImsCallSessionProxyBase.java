package com.mediatek.ims.internal.op;

import android.content.Intent;
import android.os.AsyncResult;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import com.android.ims.internal.IImsCallSession;
import com.mediatek.ims.internal.IMtkImsCallSession;
import com.mediatek.ims.internal.IMtkImsCallSessionListener;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public class OpImsCallSessionProxyBase implements OpImsCallSessionProxy {
    private static final String TAG = "OpImsCallSessionProxyBase";

    protected void printDefaultLog(String funcName) {
        Rlog.d(TAG, funcName + " call to OP base");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void handleGttCapabilityIndication(AsyncResult ar, IMtkImsCallSession proxy, String callId) {
        printDefaultLog("handleGttCapabilityIndication");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void handleRttECCRedialEvent(IMtkImsCallSession proxy) {
        printDefaultLog("handleRttECCRedialEvent");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void handleRttTextReceive(AsyncResult ar, String callId, ImsCallSessionListener listener) {
        printDefaultLog("handleRttTextReceive");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void handleRttModifyResponse(AsyncResult ar, String callId, ImsCallSessionListener listener) {
        printDefaultLog("handleRttModifyResponse");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void handleRttModifyRequestReceive(AsyncResult ar, IImsCallSession proxy, String callId, ImsCallSessionListener listener, ImsCommandsInterface imsRILAdapter) {
        printDefaultLog("handleRttModifyRequestReceive");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void notifyTextCapabilityChanged(IMtkImsCallSessionListener mtkListener, IMtkImsCallSession mtkImsCallSessionProxy, int localCapability, int remoteCapability, int localTextStatus, int realRemoteCapability) {
        printDefaultLog("notifyTextCapabilityChanged");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void notifyRttECCRedialEvent(IMtkImsCallSessionListener mtkListener, IMtkImsCallSession mtkImsCallSessionProxy) {
        printDefaultLog("notifyRttECCRedialEvent");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void sendRttMessage(String callIdString, ImsCommandsInterface ci, String rttMessage) {
        printDefaultLog("sendRttMessage");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void sendRttModifyRequest(String callIdString, ImsCommandsInterface ci, ImsCallProfile to) {
        printDefaultLog("sendRttModifyRequest");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void sendRttModifyResponse(String callIdString, ImsCommandsInterface ci, boolean response) {
        printDefaultLog("sendRttModifyResponse");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void setRttModeForDial(String callIdString, ImsCommandsInterface ci, boolean isRtt) {
        printDefaultLog("setRttModeForDial + isRtt: " + isRtt);
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public void checkIncomingRttCallType(Intent intent) {
        printDefaultLog("checkIncomingRttCallType");
    }

    @Override // com.mediatek.ims.internal.op.OpImsCallSessionProxy
    public boolean isRttEnabledForCallSession() {
        printDefaultLog("isRttEnabledForCallSession");
        return false;
    }
}
