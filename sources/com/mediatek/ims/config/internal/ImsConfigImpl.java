package com.mediatek.ims.config.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.ims.compat.stub.ImsConfigImplBase;
import android.text.TextUtils;
import com.android.ims.ImsConfigListener;
import com.android.ims.ImsException;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public class ImsConfigImpl extends ImsConfigImplBase {
    private static final boolean DEBUG;
    private static final String PROPERTY_IMSCONFIG_FORCE_NOTIFY = "vendor.ril.imsconfig.force.notify";
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final String TAG = "ImsConfigImpl";
    private ImsConfigAdapter mConfigAdapter;
    private Context mContext;
    private String mLogTag;
    private int mPhoneId;
    private ImsCommandsInterface mRilAdapter;

    static {
        boolean z = true;
        if (!TextUtils.equals(Build.TYPE, "eng") && SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        DEBUG = z;
    }

    public ImsConfigImpl(Context context, ImsCommandsInterface imsRilAdapter, ImsConfigAdapter configAdapter, int phoneId) {
        super(context);
        this.mConfigAdapter = null;
        this.mContext = context;
        this.mPhoneId = phoneId;
        this.mRilAdapter = imsRilAdapter;
        this.mConfigAdapter = configAdapter;
        this.mLogTag = "ImsConfigImpl[" + phoneId + "]";
    }

    public int getProvisionedValue(int item) {
        try {
            int result = this.mConfigAdapter.getProvisionedValue(item);
            String str = this.mLogTag;
            Rlog.i(str, "getProvisionedValue(" + item + ") : " + result + " on phone" + this.mPhoneId + " from binder pid " + Binder.getCallingPid() + ", binder uid " + Binder.getCallingUid() + ", process pid " + Process.myPid() + ", process uid " + Process.myUid());
            return result;
        } catch (ImsException e) {
            String str2 = this.mLogTag;
            Rlog.e(str2, "getProvisionedValue(" + item + ") failed, code: " + e.getCode());
            if (Binder.getCallingPid() == Process.myPid()) {
                return 0;
            }
            return -1;
        }
    }

    public String getProvisionedStringValue(int item) {
        try {
            String result = this.mConfigAdapter.getProvisionedStringValue(item);
            String str = this.mLogTag;
            Rlog.i(str, "getProvisionedStringValue(" + item + ") : " + result + " on phone " + this.mPhoneId + " from binder pid " + Binder.getCallingPid() + ", binder uid " + Binder.getCallingUid() + ", process pid " + Process.myPid() + ", process uid " + Process.myUid());
            return result;
        } catch (ImsException e) {
            String str2 = this.mLogTag;
            Rlog.e(str2, "getProvisionedStringValue(" + item + ") failed, code: " + e.getCode());
            if (Binder.getCallingPid() == Process.myPid()) {
                return "Unknown";
            }
            return null;
        }
    }

    public int setProvisionedValue(int item, int value) {
        try {
            this.mConfigAdapter.setProvisionedValue(item, value);
            if (DEBUG) {
                String str = this.mLogTag;
                Rlog.i(str, "setProvisionedValue(" + item + ", " + value + ") on phone " + this.mPhoneId + " from pid " + Binder.getCallingPid() + ", uid " + Binder.getCallingUid() + " ,retVal:0");
            }
            return 0;
        } catch (ImsException e) {
            String str2 = this.mLogTag;
            Rlog.e(str2, "setProvisionedValue(" + item + ") failed, code: " + e.getCode());
            return 1;
        }
    }

    public int setProvisionedStringValue(int item, String value) {
        try {
            this.mConfigAdapter.setProvisionedStringValue(item, value);
            String str = this.mLogTag;
            Rlog.i(str, "setProvisionedStringValue(" + item + ", " + value + ") on phone " + this.mPhoneId + " from pid " + Binder.getCallingPid() + ", uid " + Binder.getCallingUid() + " ,retVal:0");
            return 0;
        } catch (ImsException e) {
            String str2 = this.mLogTag;
            Rlog.e(str2, "setProvisionedValue(" + item + ") failed, code: " + e.getCode());
            return 1;
        }
    }

    public void getFeatureValue(int feature, int network, ImsConfigListener listener) {
        try {
            try {
                int value = this.mConfigAdapter.getFeatureValue(feature, network);
                String str = this.mLogTag;
                Rlog.i(str, "getFeatureValue(" + feature + ", " + network + ") : " + value + " on phone " + this.mPhoneId);
                listener.onGetFeatureResponse(feature, network, value, 0);
            } catch (ImsException e) {
                String str2 = this.mLogTag;
                Rlog.e(str2, "getFeatureValue(" + feature + ") failed, code: " + e.getCode());
                listener.onGetFeatureResponse(feature, network, 0, 1);
            }
        } catch (RemoteException e2) {
            String str3 = this.mLogTag;
            Rlog.e(str3, "getFeatureValue(" + feature + ") remote failed!");
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ab, code lost:
        if (com.mediatek.internal.telephony.RadioCapabilitySwitchUtil.IMSI_READY.equals(android.os.SystemProperties.get("persist.vendor.mtk_dynamic_ims_switch")) == false) goto L_0x00bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ad, code lost:
        r2 = r6.mConfigAdapter.getImsResCapability(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b3, code lost:
        if (r2 == 1) goto L_0x00bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b5, code lost:
        android.telephony.Rlog.i(r6.mLogTag, "setFeatureValue, modify the value in ImsConfig.");
        r9 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setFeatureValue(int r7, int r8, int r9, com.android.ims.ImsConfigListener r10) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.config.internal.ImsConfigImpl.setFeatureValue(int, int, int, com.android.ims.ImsConfigListener):void");
    }

    public boolean getVolteProvisioned() {
        return true;
    }
}
