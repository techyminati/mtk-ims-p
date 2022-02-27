package com.mediatek.ims.config.internal;

import java.util.HashMap;
/* loaded from: classes.dex */
public class ImsFeatureMap {
    private HashMap<Integer, Boolean> mFeatureMap = new HashMap<>();
    private int mPhoneId;

    public ImsFeatureMap(int phoneId) {
        this.mPhoneId = phoneId;
    }

    public HashMap<Integer, Boolean> getFeatureMap() {
        return this.mFeatureMap;
    }
}
