package com.mediatek.ims.ril;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes.dex */
public class DefaultOpImsRIL implements OpImsCommandsInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultOpImsRIL(int slotId) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void setRttMode(int mode, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void sendRttModifyRequest(int callId, int newMode, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void sendRttText(int callId, String text, int length, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void setRttModifyRequestResponse(int callId, int result, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void registerForGttCapabilityIndicator(Handler h, int what, Object obj) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void unregisterForGttCapabilityIndicator(Handler h) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void registerForRttModifyResponse(Handler h, int what, Object obj) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void unregisterForRttModifyResponse(Handler h) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void registerForRttTextReceive(Handler h, int what, Object obj) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void unregisterForRttTextReceive(Handler h) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void registerForRttModifyRequestReceive(Handler h, int what, Object obj) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void unregisterForRttModifyRequestReceive(Handler h) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void dialFrom(String address, String fromAddress, int clirMode, boolean isVideoCall, Message result) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void sendUssiFrom(String from, int action, String ussi, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void cancelUssiFrom(String from, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void setEmergencyCallConfig(int category, boolean isForceEcc, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void deviceSwitch(String number, String deviceId, Message response) {
    }

    @Override // com.mediatek.ims.ril.OpImsCommandsInterface
    public void cancelDeviceSwitch(Message response) {
    }
}
