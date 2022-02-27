package com.mediatek.ims.plugin.impl;

import android.content.Context;
import com.mediatek.ims.plugin.ImsManagerOemPlugin;
import com.mediatek.ims.plugin.ImsRegistrationOemPlugin;
import com.mediatek.ims.plugin.OemPluginFactory;
/* loaded from: classes.dex */
public class OemPluginFactoryBase implements OemPluginFactory {
    @Override // com.mediatek.ims.plugin.OemPluginFactory
    public ImsManagerOemPlugin makeImsManagerPlugin(Context context) {
        return new ImsManagerOemPluginBase();
    }

    @Override // com.mediatek.ims.plugin.OemPluginFactory
    public ImsRegistrationOemPlugin makeImsRegistrationPlugin(Context context) {
        return new ImsRegistrationOemPluginBase();
    }
}
