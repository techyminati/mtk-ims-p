package com.mediatek.ims.config;

import android.content.Context;
import android.os.Handler;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.config.Register;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class ConfigRegister extends Register {
    public ConfigRegister(Context context, int phoneId) {
        this(context, phoneId, null);
    }

    public ConfigRegister(Context context, int phoneId, Handler handler) {
        super(context, phoneId, handler);
        this.argType = "config";
    }

    @Override // com.mediatek.ims.config.Register
    public Register addArg(int argId) {
        if (ImsConfigContract.Validator.isValidConfigId(argId)) {
            super.addArg(argId);
            return this;
        }
        throw new IllegalArgumentException("Invalid config id " + argId + " to register");
    }

    @Override // com.mediatek.ims.config.Register
    public void register(Register.IArgsChangeListener listener) {
        super.register(listener);
        Iterator<Integer> it = this.mRegArgs.iterator();
        while (it.hasNext()) {
            Integer argId = it.next();
            this.mContext.getContentResolver().registerContentObserver(ImsConfigContract.Master.getUriWithConfigId(this.mPhoneId, argId.intValue()), false, this.mArgsObserver);
        }
    }

    @Override // com.mediatek.ims.config.Register
    public void unregister() {
        super.unregister();
    }
}
