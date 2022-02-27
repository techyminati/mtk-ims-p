package com.mediatek.ims.plugin;

import android.content.Context;
/* loaded from: classes.dex */
public interface ImsManagerOemPlugin {
    boolean hasPlugin();

    void updateImsServiceConfig(Context context, int i, boolean z);
}
