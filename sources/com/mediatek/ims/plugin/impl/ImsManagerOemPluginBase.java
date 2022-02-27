package com.mediatek.ims.plugin.impl;

import android.content.Context;
import com.android.ims.ImsManager;
import com.mediatek.ims.plugin.ImsManagerOemPlugin;
/* loaded from: classes.dex */
public class ImsManagerOemPluginBase implements ImsManagerOemPlugin {
    private static final String TAG = "ImsManagerOemPluginBase";

    @Override // com.mediatek.ims.plugin.ImsManagerOemPlugin
    public boolean hasPlugin() {
        return false;
    }

    @Override // com.mediatek.ims.plugin.ImsManagerOemPlugin
    public void updateImsServiceConfig(Context context, int phoneId, boolean force) {
        ImsManager.updateImsServiceConfig(context, phoneId, force);
    }
}
