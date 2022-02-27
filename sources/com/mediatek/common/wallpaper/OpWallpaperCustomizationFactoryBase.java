package com.mediatek.common.wallpaper;

import android.content.Context;
import com.mediatek.common.util.OperatorCustomizationFactoryLoader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class OpWallpaperCustomizationFactoryBase {
    private static final List<OperatorCustomizationFactoryLoader.OperatorFactoryInfo> sOpFactoryInfoList = new ArrayList();
    static OpWallpaperCustomizationFactoryBase sFactory = null;

    public IWallpaperPlugin makeWallpaperPlugin(Context context) {
        return new DefaultWallpaperPlugin(context);
    }

    static {
        sOpFactoryInfoList.add(new OperatorCustomizationFactoryLoader.OperatorFactoryInfo("OP03Wallpaper.apk", "com.mediatek.op03.wallpaper.Op03WallpaperCustomizationFactory", "com.mediatek.op03.wallpaper", "OP03", "SEGDEFAULT"));
    }

    public static synchronized OpWallpaperCustomizationFactoryBase getOpFactory(Context context) {
        OpWallpaperCustomizationFactoryBase opWallpaperCustomizationFactoryBase;
        synchronized (OpWallpaperCustomizationFactoryBase.class) {
            if (sFactory == null) {
                sFactory = (OpWallpaperCustomizationFactoryBase) OperatorCustomizationFactoryLoader.loadFactory(context, sOpFactoryInfoList);
                if (sFactory == null) {
                    sFactory = new OpWallpaperCustomizationFactoryBase();
                }
            }
            opWallpaperCustomizationFactoryBase = sFactory;
        }
        return opWallpaperCustomizationFactoryBase;
    }
}
