package com.mediatek.ims;

import android.telephony.Rlog;
/* loaded from: classes.dex */
public class MtkImsComponentFactory extends ImsComponentFactory {
    public static final String LOG_TAG = "MtkImsComponentFactory";
    private static MtkImsComponentFactory sInstance;

    public static MtkImsComponentFactory getInstance() {
        if (sInstance == null) {
            Rlog.d(LOG_TAG, "init");
            sInstance = new MtkImsComponentFactory();
        }
        return sInstance;
    }
}
