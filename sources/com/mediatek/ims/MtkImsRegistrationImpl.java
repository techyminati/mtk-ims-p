package com.mediatek.ims;

import android.annotation.SystemApi;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@SystemApi
/* loaded from: classes.dex */
public class MtkImsRegistrationImpl extends ImsRegistrationImplBase {
    private static final int DELAY_IMS_SERVICE_IMPL_QUERY_MS = 5000;
    private static final String LOG_TAG = "MtkImsRegImpl";
    private static final int MAXMUIM_IMS_SERVICE_IMPL_RETRY = 3;
    public static final int REGISTRATION_STATE_DEREGISTERED = 3;
    public static final int REGISTRATION_STATE_REGISTERED = 2;
    public static final int REGISTRATION_STATE_REGISTERING = 1;
    public static final int REGISTRATION_STATE_UNKNOWN = 0;
    private ImsService mImsServiceImpl;
    private int mSlotId;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ImsRegistrationState {
    }

    public MtkImsRegistrationImpl(int slotId) {
        this.mSlotId = -1;
        this.mImsServiceImpl = null;
        this.mSlotId = slotId;
        int retry = 0;
        while (this.mImsServiceImpl == null && retry < 3) {
            this.mImsServiceImpl = ImsService.getInstance(null);
            try {
                if (this.mImsServiceImpl == null) {
                    log("ImsService is not initialized yet. Query later - " + retry);
                    Thread.sleep(5000L);
                    retry++;
                }
            } catch (InterruptedException er) {
                loge("Fail to get ImsService " + er);
            }
        }
        if (this.mImsServiceImpl != null) {
            this.mImsServiceImpl.setImsRegistration(this.mSlotId, this);
        }
        log("[" + this.mSlotId + "] MtkImsRegistrationImpl created");
    }

    public void close() {
        if (this.mImsServiceImpl != null) {
            this.mImsServiceImpl.setImsRegistration(this.mSlotId, null);
        }
        logi("[" + this.mSlotId + "] MtkImsRegistrationImpl closed");
    }

    private static void log(String msg) {
        Rlog.d(LOG_TAG, msg);
    }

    private void logi(String msg) {
        Rlog.i(LOG_TAG, msg);
    }

    private static void loge(String msg) {
        Rlog.e(LOG_TAG, msg);
    }
}
