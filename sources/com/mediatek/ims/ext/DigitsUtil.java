package com.mediatek.ims.ext;

import android.os.Message;
import android.telephony.ims.ImsCallProfile;
import com.mediatek.ims.SipMessage;
/* loaded from: classes.dex */
public interface DigitsUtil {
    void cancelUssiFrom(Object obj, ImsCallProfile imsCallProfile, Message message);

    boolean hasDialFrom(ImsCallProfile imsCallProfile);

    boolean isRejectedByOthers(SipMessage sipMessage);

    void putMtToNumber(String str, ImsCallProfile imsCallProfile);

    void sendUssiFrom(Object obj, ImsCallProfile imsCallProfile, int i, String str, Message message);

    void startFrom(String str, ImsCallProfile imsCallProfile, int i, boolean z, Object obj, Message message);

    void updateCallExtras(ImsCallProfile imsCallProfile, ImsCallProfile imsCallProfile2);
}
