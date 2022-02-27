package com.mediatek.ims;

import android.app.Application;
import android.content.Intent;
import android.os.IBinder;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.telephony.Rlog;
import com.mediatek.ims.config.internal.ImsConfigUtils;
import com.mediatek.ims.internal.ImsVTProviderUtil;
/* loaded from: classes.dex */
public class ImsApp extends Application {
    private static final String IMS_SERVICE = "ims";
    private static final String TAG = "ImsApp";

    /* JADX WARN: Type inference failed for: r4v6, types: [com.android.ims.ImsServiceBase$ImsServiceBinder, android.os.IBinder] */
    @Override // android.app.Application
    public void onCreate() {
        if (SystemProperties.get(ImsConfigUtils.PROPERTY_IMS_SUPPORT).equals("0")) {
            Rlog.w(TAG, "IMS not support, do not init ImsService");
        } else if (UserHandle.myUserId() == 0) {
            Rlog.d(TAG, "ImsApp onCreate begin");
            ImsService imsService = ImsService.getInstance(this);
            Rlog.w(TAG, "isDynamicBinding? true");
            if (1 == 0) {
                ServiceManager.addService(IMS_SERVICE, (IBinder) imsService.getBinder(), true);
            }
            ImsVTProviderUtil.getInstance().setContextAndInitRefVTP(this);
            MtkImsService mtkImsService = new MtkImsService(this, imsService);
            try {
                ServiceManager.addService(MtkImsConstants.MTK_IMS_SERVICE, mtkImsService.asBinder(), true);
            } catch (Throwable t) {
                Rlog.d(TAG, "Tried registering mtkIms system service, but failed. Nevermind.", t);
            }
            Rlog.d(TAG, "ImsApp onCreate end");
            Intent intent = new Intent(MtkImsConstants.ACTION_MTK_IMS_SERVICE_UP);
            getApplicationContext().sendBroadcast(intent);
        }
    }
}
