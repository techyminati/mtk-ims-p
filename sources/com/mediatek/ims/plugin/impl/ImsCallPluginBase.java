package com.mediatek.ims.plugin.impl;

import android.content.Context;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.ims.ImsException;
import com.mediatek.ims.plugin.ImsCallPlugin;
/* loaded from: classes.dex */
public class ImsCallPluginBase implements ImsCallPlugin {
    private static final String MULTI_IMS_SUPPORT = "persist.vendor.mims_support";
    private static final String PROPERTY_CAPABILITY_SWITCH = "persist.vendor.radio.simswitch";
    private static final String TAG = "ImsConfigPluginBase";
    private Context mContext;

    public ImsCallPluginBase(Context context) {
        this.mContext = context;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getModemMultiImsCount() throws ImsException {
        return 2;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public boolean isSupportMims() {
        return SystemProperties.getInt("persist.vendor.mims_support", 1) > 1;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int setImsFwkRequest(int request) {
        return request;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getRealRequest(int request) {
        return request;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public boolean isImsFwkRequest(int request) {
        return false;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getUpgradeCancelFlag() {
        return 0;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getUpgradeCancelTimeoutFlag() {
        return 0;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public boolean isSpecialEmergencyNumber(int subId, String dialString) {
        return false;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public void setSpecificEccCategory(int eccCat) {
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getServiceCategoryFromEcc(String number) {
        return 0;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getMainCapabilityPhoneId() {
        int phoneId = SystemProperties.getInt("persist.vendor.radio.simswitch", 1) - 1;
        Log.d(TAG, "getMainCapabilityPhoneId " + phoneId);
        return phoneId;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public boolean isCapabilitySwitching() {
        return false;
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getSimCardState(int slotId) {
        return TelephonyManager.getDefault().getSimCardState();
    }

    @Override // com.mediatek.ims.plugin.ImsCallPlugin
    public int getSimApplicationState(int slotId) {
        return TelephonyManager.getDefault().getSimApplicationState();
    }
}
