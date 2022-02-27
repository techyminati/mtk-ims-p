package com.mediatek.ims;
/* loaded from: classes.dex */
public class MtkSmsResponse {
    String mAckPdu;
    public int mErrorCode;
    public int mMessageRef;

    public MtkSmsResponse(int messageRef, String ackPdu, int errorCode) {
        this.mMessageRef = messageRef;
        this.mAckPdu = ackPdu;
        this.mErrorCode = errorCode;
    }

    public String toString() {
        String ret = "{ mMessageRef = " + this.mMessageRef + ", mErrorCode = " + this.mErrorCode + ", mAckPdu = " + this.mAckPdu + "}";
        return ret;
    }
}
