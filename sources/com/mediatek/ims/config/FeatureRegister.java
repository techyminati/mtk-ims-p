package com.mediatek.ims.config;

import android.content.Context;
import android.os.Handler;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.config.Register;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class FeatureRegister extends Register {
    private int mNetworkType;

    public FeatureRegister(Context context, int phoneId, int networkType) {
        this(context, phoneId, networkType, null);
    }

    public FeatureRegister(Context context, int phoneId, int networkType, Handler handler) {
        super(context, phoneId, handler);
        this.argType = "feature";
        this.mNetworkType = networkType;
    }

    @Override // com.mediatek.ims.config.Register
    public Register addArg(int argId) {
        if (ImsConfigContract.Validator.isValidFeatureId(argId)) {
            super.addArg(argId);
            return this;
        }
        throw new IllegalArgumentException("Invalid feature id " + argId + " to register");
    }

    @Override // com.mediatek.ims.config.Register
    public void register(Register.IArgsChangeListener listener) {
        super.register(listener);
        Iterator<Integer> it = this.mRegArgs.iterator();
        while (it.hasNext()) {
            Integer argId = it.next();
            this.mContext.getContentResolver().registerContentObserver(ImsConfigContract.Feature.getUriWithFeatureId(this.mPhoneId, argId.intValue(), this.mNetworkType), false, this.mArgsObserver);
        }
    }

    @Override // com.mediatek.ims.config.Register
    public void unregister() {
        super.unregister();
    }
}
