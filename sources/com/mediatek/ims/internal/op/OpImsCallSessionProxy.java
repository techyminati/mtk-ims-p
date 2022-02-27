package com.mediatek.ims.internal.op;

import android.content.Intent;
import android.os.AsyncResult;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import com.android.ims.internal.IImsCallSession;
import com.mediatek.ims.internal.IMtkImsCallSession;
import com.mediatek.ims.internal.IMtkImsCallSessionListener;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public interface OpImsCallSessionProxy {
    void checkIncomingRttCallType(Intent intent);

    void handleGttCapabilityIndication(AsyncResult asyncResult, IMtkImsCallSession iMtkImsCallSession, String str);

    void handleRttECCRedialEvent(IMtkImsCallSession iMtkImsCallSession);

    void handleRttModifyRequestReceive(AsyncResult asyncResult, IImsCallSession iImsCallSession, String str, ImsCallSessionListener imsCallSessionListener, ImsCommandsInterface imsCommandsInterface);

    void handleRttModifyResponse(AsyncResult asyncResult, String str, ImsCallSessionListener imsCallSessionListener);

    void handleRttTextReceive(AsyncResult asyncResult, String str, ImsCallSessionListener imsCallSessionListener);

    boolean isRttEnabledForCallSession();

    void notifyRttECCRedialEvent(IMtkImsCallSessionListener iMtkImsCallSessionListener, IMtkImsCallSession iMtkImsCallSession);

    void notifyTextCapabilityChanged(IMtkImsCallSessionListener iMtkImsCallSessionListener, IMtkImsCallSession iMtkImsCallSession, int i, int i2, int i3, int i4);

    void sendRttMessage(String str, ImsCommandsInterface imsCommandsInterface, String str2);

    void sendRttModifyRequest(String str, ImsCommandsInterface imsCommandsInterface, ImsCallProfile imsCallProfile);

    void sendRttModifyResponse(String str, ImsCommandsInterface imsCommandsInterface, boolean z);

    void setRttModeForDial(String str, ImsCommandsInterface imsCommandsInterface, boolean z);
}
