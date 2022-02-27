package com.mediatek.ims.config.op;

import com.mediatek.ims.config.ImsConfigPolicy;
/* loaded from: classes.dex */
public class Op08ConfigPolicy extends ImsConfigPolicy {
    public Op08ConfigPolicy() {
        super("Op08ConfigPolicy");
    }

    @Override // com.mediatek.ims.config.ImsConfigPolicy
    public boolean onSetDefaultValue(int configId, ImsConfigPolicy.DefaultConfig config) {
        if (configId != 10) {
            return false;
        }
        config.defVal = "0";
        return true;
    }
}
