package com.mediatek.ims.config;

import android.os.RemoteException;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsConfigImplBase;
import com.android.ims.internal.IImsConfig;
/* loaded from: classes.dex */
public class MtkImsConfigImpl extends ImsConfigImplBase {
    public static final int FAILED = 1;
    public static final int SUCCESS = 0;
    private static final String TAG = "MtkImsConfigImpl";
    public static final int UNKNOWN = -1;
    private final IImsConfig mOldConfigInterface;

    public MtkImsConfigImpl(IImsConfig config) {
        this.mOldConfigInterface = config;
    }

    public int setConfig(int item, int value) {
        try {
            if (this.mOldConfigInterface.setProvisionedValue(item, value) == 0) {
                return 0;
            }
            return 1;
        } catch (RemoteException e) {
            loge("setConfig: item=" + item + " value=" + value + "failed: " + e.getMessage());
            return 1;
        }
    }

    public int setConfig(int item, String value) {
        try {
            if (this.mOldConfigInterface.setProvisionedStringValue(item, value) == 0) {
                return 0;
            }
            return 1;
        } catch (RemoteException e) {
            loge("setConfig: item=" + item + " value=" + value + "failed: " + e.getMessage());
            return 1;
        }
    }

    public int getConfigInt(int item) {
        int value;
        try {
            value = this.mOldConfigInterface.getProvisionedValue(item);
        } catch (RemoteException e) {
            loge("getConfigInt: item=" + item + "failed: " + e.getMessage());
        }
        if (value != -1) {
            return value;
        }
        return -1;
    }

    public String getConfigString(int item) {
        try {
            return this.mOldConfigInterface.getProvisionedStringValue(item);
        } catch (RemoteException e) {
            loge("getConfigInt: item=" + item + "failed: " + e.getMessage());
            return null;
        }
    }

    private static void log(String msg) {
        Rlog.d(TAG, msg);
    }

    private static void loge(String msg) {
        Rlog.e(TAG, msg);
    }
}
