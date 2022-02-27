package com.mediatek.ims.config.op;

import com.mediatek.ims.config.ImsConfigPolicy;
import com.mediatek.internal.telephony.MtkPhoneConstants;
/* loaded from: classes.dex */
public class Op06ConfigPolicy extends ImsConfigPolicy {
    public Op06ConfigPolicy() {
        super("Op06ConfigPolicy");
    }

    @Override // com.mediatek.ims.config.ImsConfigPolicy
    public boolean onSetDefaultValue(int configId, ImsConfigPolicy.DefaultConfig config) {
        if (configId == 28) {
            config.defVal = "0";
            return true;
        } else if (configId != 1000) {
            return false;
        } else {
            config.defVal = MtkPhoneConstants.MVNO_TYPE_NONE;
            return true;
        }
    }
}
