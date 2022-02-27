package com.mediatek.ims.internal.op;

import android.telephony.Rlog;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public class OpImsServiceBase implements OpImsService {
    private static final String TAG = "OpImsServiceBase";

    protected void printDefaultLog(String funcName) {
        Rlog.d(TAG, funcName + " call to OP base");
    }

    @Override // com.mediatek.ims.internal.op.OpImsService
    public void setRttModeForIncomingCall(ImsCommandsInterface imsRILAdapter) {
        printDefaultLog("setRttModeForIncomingCall");
    }
}
