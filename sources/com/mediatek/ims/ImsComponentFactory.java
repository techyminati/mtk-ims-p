package com.mediatek.ims;

import android.telephony.Rlog;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Constructor;
/* loaded from: classes.dex */
public class ImsComponentFactory {
    public static final String LOG_TAG = "ImsComponentFactory";
    private static ImsComponentFactory sInstance;

    public static ImsComponentFactory getInstance() {
        if (sInstance == null) {
            PathClassLoader pathClassLoader = new PathClassLoader("/system/framework/mediatek-framework.jar", ClassLoader.getSystemClassLoader());
            Rlog.d(LOG_TAG, "pathClassLoader = " + pathClassLoader);
            try {
                Class<?> clazz = Class.forName("com.mediatek.ims.MtkImsComponentFactory", false, pathClassLoader);
                Rlog.d(LOG_TAG, "class = " + clazz);
                Constructor<?> clazzConstructfunc = clazz.getConstructor(new Class[0]);
                Rlog.d(LOG_TAG, "constructor function = " + clazzConstructfunc);
                sInstance = (ImsComponentFactory) clazzConstructfunc.newInstance(new Object[0]);
            } catch (Exception e) {
                Rlog.e(LOG_TAG, "No MtkImsComponentFactory! Use AOSP for instead!");
                sInstance = new ImsComponentFactory();
            }
        }
        return sInstance;
    }
}
