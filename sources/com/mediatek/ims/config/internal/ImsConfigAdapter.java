package com.mediatek.ims.config.internal;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import android.text.TextUtils;
import com.android.ims.ImsException;
import com.mediatek.ims.ImsCommonUtil;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public class ImsConfigAdapter {
    private static final boolean DEBUG;
    public static final int ISLAST_FALSE = 0;
    public static final int ISLAST_NULL = -1;
    public static final int ISLAST_TRUE = 1;
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final String TAG = "ImsConfigAdapter";
    private static final boolean TELDBG;
    private Context mContext;
    ImsConfigController mController;
    private int mPhoneId;
    ImsConfigStorage mStorage;

    static {
        boolean z = true;
        DEBUG = TextUtils.equals(Build.TYPE, "eng") || SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) == 1;
        if (SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        TELDBG = z;
    }

    private ImsConfigAdapter() {
        this.mPhoneId = -1;
        this.mContext = null;
    }

    public ImsConfigAdapter(Context context, ImsCommandsInterface imsRilAdapter, int phoneId) {
        this.mPhoneId = -1;
        this.mContext = null;
        this.mContext = context;
        this.mPhoneId = phoneId;
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mController = new ImsConfigController(context, phoneId, imsRilAdapter);
        } else {
            this.mStorage = new ImsConfigStorage(context, phoneId, imsRilAdapter);
        }
    }

    public int getFeatureValue(int featureId, int network) throws ImsException {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            return this.mController.getFeatureValue(featureId, network);
        }
        return this.mStorage.getFeatureValue(featureId, network);
    }

    public void setFeatureValue(int featureId, int network, int value, int isLast) throws ImsException {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mController.setFeatureValue(featureId, network, value, isLast);
        } else {
            this.mStorage.setFeatureValue(featureId, network, value);
        }
    }

    public void setProvisionedValue(int configId, int value) throws ImsException {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mController.setProvisionedValue(configId, String.valueOf(value));
        } else {
            this.mStorage.setProvisionedValue(configId, value);
        }
    }

    public void setProvisionedStringValue(int configId, String value) throws ImsException {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mController.setProvisionedValue(configId, value);
        } else {
            this.mStorage.setProvisionedStringValue(configId, value);
        }
    }

    public int getProvisionedValue(int configId) throws ImsException {
        if (!ImsCommonUtil.supportMdAutoSetupIms()) {
            return this.mStorage.getProvisionedValue(configId);
        }
        String stringValue = this.mController.getProvisionedValue(configId);
        try {
            int value = Integer.parseInt(stringValue);
            return value;
        } catch (NumberFormatException e) {
            throw new ImsException("getProvisionedValue wrong, reason: return string while expecting int, result:" + stringValue, 101);
        }
    }

    public void setImsResCapability(int featureId, int value) throws ImsException {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mController.setImsResCapability(featureId, value);
        } else {
            this.mStorage.setImsResCapability(featureId, value);
        }
    }

    public int getImsResCapability(int featureId) throws ImsException {
        if (featureId == 3) {
            featureId = 1;
        }
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            return this.mController.getImsResCapability(featureId);
        }
        return this.mStorage.getImsResCapability(featureId);
    }

    public String getProvisionedStringValue(int configId) throws ImsException {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            return this.mController.getProvisionedValue(configId);
        }
        return this.mStorage.getProvisionedStringValue(configId);
    }

    public void sendWfcProfileInfo(int rilWfcMode) {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mController.sendWfcProfileInfo(rilWfcMode);
        } else {
            this.mStorage.sendWfcProfileInfo(rilWfcMode);
        }
    }

    public void setVoltePreference(int mode) {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            this.mController.setVoltePreference(mode);
        } else {
            this.mStorage.setVoltePreference(mode);
        }
    }

    public int[] setModemImsCfg(String[] keys, String[] values, int type) {
        if (ImsCommonUtil.supportMdAutoSetupIms()) {
            return this.mController.setModemImsCfg(keys, values, type);
        }
        return this.mStorage.setModemImsCfg(keys, values, type);
    }
}
