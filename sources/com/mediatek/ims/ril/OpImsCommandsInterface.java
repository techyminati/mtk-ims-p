package com.mediatek.ims.ril;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes.dex */
public interface OpImsCommandsInterface {
    void cancelDeviceSwitch(Message message);

    void cancelUssiFrom(String str, Message message);

    void deviceSwitch(String str, String str2, Message message);

    void dialFrom(String str, String str2, int i, boolean z, Message message);

    void registerForGttCapabilityIndicator(Handler handler, int i, Object obj);

    void registerForRttModifyRequestReceive(Handler handler, int i, Object obj);

    void registerForRttModifyResponse(Handler handler, int i, Object obj);

    void registerForRttTextReceive(Handler handler, int i, Object obj);

    void sendRttModifyRequest(int i, int i2, Message message);

    void sendRttText(int i, String str, int i2, Message message);

    void sendUssiFrom(String str, int i, String str2, Message message);

    void setEmergencyCallConfig(int i, boolean z, Message message);

    void setRttMode(int i, Message message);

    void setRttModifyRequestResponse(int i, int i2, Message message);

    void unregisterForGttCapabilityIndicator(Handler handler);

    void unregisterForRttModifyRequestReceive(Handler handler);

    void unregisterForRttModifyResponse(Handler handler);

    void unregisterForRttTextReceive(Handler handler);
}
