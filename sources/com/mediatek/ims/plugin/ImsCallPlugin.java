package com.mediatek.ims.plugin;

import com.android.ims.ImsException;
/* loaded from: classes.dex */
public interface ImsCallPlugin {
    int getMainCapabilityPhoneId();

    int getModemMultiImsCount() throws ImsException;

    int getRealRequest(int i);

    int getServiceCategoryFromEcc(String str);

    int getSimApplicationState(int i);

    int getSimCardState(int i);

    int getUpgradeCancelFlag();

    int getUpgradeCancelTimeoutFlag();

    boolean isCapabilitySwitching();

    boolean isImsFwkRequest(int i);

    boolean isSpecialEmergencyNumber(int i, String str);

    boolean isSupportMims();

    int setImsFwkRequest(int i);

    void setSpecificEccCategory(int i);
}
