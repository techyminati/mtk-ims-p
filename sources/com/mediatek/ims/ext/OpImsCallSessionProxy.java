package com.mediatek.ims.ext;

import android.content.Context;
import android.os.AsyncResult;
import android.os.Bundle;
import android.os.Message;
import android.telephony.ims.ImsReasonInfo;
import com.mediatek.ims.SipMessage;
import com.mediatek.ims.internal.IMtkImsCallSession;
/* loaded from: classes.dex */
public interface OpImsCallSessionProxy {
    void broadcastForNotRingingMtIfRequired(boolean z, int i, int i2, String str, Context context);

    void cancelDeviceSwitch(Object obj);

    void deviceSwitch(Object obj, String str, String str2, Message message);

    ImsReasonInfo getImsReasonInfo(SipMessage sipMessage);

    boolean handleCallStartFailed(IMtkImsCallSession iMtkImsCallSession, Object obj, boolean z);

    void handleDeviceSwitchResponse(IMtkImsCallSession iMtkImsCallSession, AsyncResult asyncResult);

    boolean handleDeviceSwitchResult(String str, IMtkImsCallSession iMtkImsCallSession, AsyncResult asyncResult);

    boolean handleHangup();

    boolean isDeviceSwitching();

    boolean isValidVtDialString(String str);

    String normalizeVtDialString(String str);

    void sendCallEventWithRat(Bundle bundle);

    void setEmergencyCallConfig(Object obj, String str);
}
