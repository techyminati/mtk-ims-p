package com.mediatek.ims.ext;

import android.os.Message;
import android.telephony.ims.ImsCallProfile;
import com.mediatek.ims.SipMessage;
/* loaded from: classes.dex */
public class DigitsUtilBase implements DigitsUtil {
    @Override // com.mediatek.ims.ext.DigitsUtil
    public boolean hasDialFrom(ImsCallProfile profile) {
        return false;
    }

    @Override // com.mediatek.ims.ext.DigitsUtil
    public void startFrom(String callee, ImsCallProfile profile, int clirMode, boolean isVideoCall, Object imsRILAdapter, Message response) {
    }

    @Override // com.mediatek.ims.ext.DigitsUtil
    public void putMtToNumber(String toNumber, ImsCallProfile imsCallProfile) {
    }

    @Override // com.mediatek.ims.ext.DigitsUtil
    public void sendUssiFrom(Object imsRILAdapter, ImsCallProfile profile, int action, String ussi, Message response) {
    }

    @Override // com.mediatek.ims.ext.DigitsUtil
    public void cancelUssiFrom(Object imsRILAdapter, ImsCallProfile profile, Message response) {
    }

    @Override // com.mediatek.ims.ext.DigitsUtil
    public void updateCallExtras(ImsCallProfile destCallProfile, ImsCallProfile srcCallProfile) {
    }

    @Override // com.mediatek.ims.ext.DigitsUtil
    public boolean isRejectedByOthers(SipMessage msg) {
        return false;
    }
}
