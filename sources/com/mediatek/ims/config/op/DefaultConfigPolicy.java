package com.mediatek.ims.config.op;

import com.mediatek.ims.config.ImsConfigPolicy;
/* loaded from: classes.dex */
public class DefaultConfigPolicy extends ImsConfigPolicy {
    public DefaultConfigPolicy() {
        super("DefaultConfigPolicy");
    }

    @Override // com.mediatek.ims.config.ImsConfigPolicy
    public boolean onSetDefaultValue(int configId, ImsConfigPolicy.DefaultConfig config) {
        return false;
    }
}
