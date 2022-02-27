package com.mediatek.ims.internal;

import android.net.Uri;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class ImsXuiManager {
    private static final String LOG_TAG = "ImsXuiManager";
    static ImsXuiManager sInstance;
    public String[] mXui;

    private ImsXuiManager() {
        int numPhones = TelephonyManager.getDefault().getPhoneCount();
        this.mXui = new String[numPhones];
    }

    public static ImsXuiManager getInstance() {
        if (sInstance == null) {
            sInstance = new ImsXuiManager();
            sInstance.loadXui();
        }
        return sInstance;
    }

    public String getXui() {
        return this.mXui[0];
    }

    public String getXui(int phoneId) {
        return this.mXui[phoneId];
    }

    public void clearStoredXui() {
        this.mXui = null;
    }

    public void setXui(String xui) {
        this.mXui[0] = xui;
    }

    public void setXui(int phoneId, String xui) {
        this.mXui[phoneId] = xui;
    }

    private void loadXui() {
    }

    public Uri[] getSelfIdentifyUri(int phoneId) {
        if (phoneId < 0 || phoneId >= this.mXui.length) {
            Rlog.d(LOG_TAG, "IMS: getSelfIdentifyUri() invalid phone Id: " + phoneId);
            return null;
        }
        String xui = this.mXui[phoneId];
        if (xui == null) {
            return null;
        }
        String[] ids = xui.split(",");
        int len = ids.length;
        Uri[] uris = new Uri[len];
        for (int i = 0; i < len; i++) {
            Uri uri = Uri.parse(ids[i]);
            String number = uri.getSchemeSpecificPart();
            if (TextUtils.isEmpty(number)) {
                Rlog.d(LOG_TAG, "empty XUI");
            } else {
                String[] numberParts = number.split("[@;:]");
                if (numberParts.length == 0) {
                    Rlog.d(LOG_TAG, "no number in XUI handle");
                } else {
                    uris[i] = Uri.parse(numberParts[0]);
                    Rlog.d(LOG_TAG, "IMS: getSelfIdentifyUri() uri = " + uris[i]);
                }
            }
        }
        return uris;
    }
}
