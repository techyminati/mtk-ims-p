package com.mediatek.ims.common;

import android.telephony.SubscriptionManager;
/* loaded from: classes.dex */
public class SubscriptionManagerHelper {
    private SubscriptionManagerHelper() {
    }

    public static int getSubIdUsingPhoneId(int phoneId) {
        int[] values = SubscriptionManager.getSubId(phoneId);
        if (values == null || values.length <= 0) {
            return SubscriptionManager.getDefaultSubscriptionId();
        }
        return values[0];
    }
}
