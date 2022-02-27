package com.mediatek.ims.plugin;

import android.content.Context;
/* loaded from: classes.dex */
public interface OemPluginFactory {
    ImsManagerOemPlugin makeImsManagerPlugin(Context context);

    ImsRegistrationOemPlugin makeImsRegistrationPlugin(Context context);
}
