package com.mediatek.common.wallpaper;

import android.content.Context;
import android.content.res.Resources;
/* loaded from: classes.dex */
public interface IWallpaperPlugin {
    int getPluginDefaultImage();

    Resources getPluginResources(Context context);
}
