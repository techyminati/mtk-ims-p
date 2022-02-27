package com.mediatek.ims.internal.op;

import android.content.Context;
import android.telephony.Rlog;
/* loaded from: classes.dex */
public class OpImsServiceFactoryBase implements OpImsServiceFactory {
    private static final String TAG = "OpImsServiceFactoryBase";
    private static OpImsServiceFactory sInstance;

    public static synchronized OpImsServiceFactory getInstance() {
        synchronized (OpImsServiceFactoryBase.class) {
            if (sInstance == null) {
                try {
                    Class<?> clazz = Class.forName("com.mediatek.op.imsservice.OpImsServiceFactoryImpl");
                    sInstance = (OpImsServiceFactory) clazz.newInstance();
                    Rlog.d(TAG, "Load OP packages successfully");
                    return sInstance;
                } catch (ClassNotFoundException e) {
                    Rlog.d(TAG, "OP packages classes are not found");
                    sInstance = new OpImsServiceFactoryBase();
                    return sInstance;
                } catch (Exception e2) {
                    Rlog.d(TAG, "Load OP packages fail due to some reason");
                    sInstance = new OpImsServiceFactoryBase();
                    return sInstance;
                }
            }
            return sInstance;
        }
    }

    @Override // com.mediatek.ims.internal.op.OpImsServiceFactory
    public OpImsServiceCall makeOpImsServiceCall(Context context, int phoneId) {
        return new OpImsServiceCallBase(context, phoneId);
    }

    @Override // com.mediatek.ims.internal.op.OpImsServiceFactory
    public OpImsCallSessionProxy makeOpImsCallSessionProxy() {
        return new OpImsCallSessionProxyBase();
    }

    @Override // com.mediatek.ims.internal.op.OpImsServiceFactory
    public OpImsService makeOpImsService() {
        return new OpImsServiceBase();
    }
}
