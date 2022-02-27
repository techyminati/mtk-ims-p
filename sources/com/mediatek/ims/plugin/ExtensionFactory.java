package com.mediatek.ims.plugin;

import android.os.SystemProperties;
import android.util.Log;
import com.mediatek.ims.ImsConstants;
import com.mediatek.ims.plugin.impl.ExtensionPluginFactoryBase;
import com.mediatek.ims.plugin.impl.LegacyComponentFactoryBase;
import com.mediatek.ims.plugin.impl.OemPluginFactoryBase;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.lang.reflect.Constructor;
/* loaded from: classes.dex */
public class ExtensionFactory {
    private static final String EXTENSION_PLUG_IN_NAME = "com.mediatek.imsplugin.ExtensionPluginFactoryImpl";
    private static final String LEGACY_COMPONENT_NAME = "com.mediatek.ims.legacy.LegacyComponentFactoryImpl";
    public static final String LOG_TAG = "ImsExtensionFactory";
    private static final String OEM_PLUG_IN_NAME = "com.mediatek.imsplugin.OemPluginFactoryImpl";
    private static ExtensionPluginFactory sExtensionPluginFactory;
    private static LegacyComponentFactory sLegacyComponentFactory;
    private static OemPluginFactory sOemPluginFactory;

    public static OemPluginFactory makeOemPluginFactory() {
        if (sOemPluginFactory == null) {
            try {
                Class<?> clazz = Class.forName(OEM_PLUG_IN_NAME);
                Constructor<?> constructor = clazz.getConstructor(new Class[0]);
                OemPluginFactory instance = (OemPluginFactory) constructor.newInstance(new Object[0]);
                sOemPluginFactory = instance;
                Log.d(LOG_TAG, "Use customer's OemPluginFactory");
            } catch (Exception e) {
                Log.d(LOG_TAG, "Use default OemPluginFactory");
            }
            if (sOemPluginFactory == null) {
                sOemPluginFactory = new OemPluginFactoryBase();
            }
        }
        return sOemPluginFactory;
    }

    public static ExtensionPluginFactory makeExtensionPluginFactory() {
        if (sExtensionPluginFactory == null) {
            try {
                Class<?> clazz = Class.forName(EXTENSION_PLUG_IN_NAME);
                Constructor<?> constructor = clazz.getConstructor(new Class[0]);
                ExtensionPluginFactory inst = (ExtensionPluginFactory) constructor.newInstance(new Object[0]);
                sExtensionPluginFactory = inst;
                Log.d(LOG_TAG, "Use MTK's ExtensionPluginFactory");
            } catch (Exception e) {
                Log.d(LOG_TAG, "Use default ExtensionPluginFactory");
            }
            if (sExtensionPluginFactory == null) {
                sExtensionPluginFactory = new ExtensionPluginFactoryBase();
            }
        }
        return sExtensionPluginFactory;
    }

    public static LegacyComponentFactory makeLegacyComponentFactory() {
        if (sLegacyComponentFactory == null) {
            if (SystemProperties.get(ImsConstants.SYS_PROP_MD_AUTO_SETUP_IMS).equals(RadioCapabilitySwitchUtil.IMSI_READY)) {
                Log.d(LOG_TAG, "Gen93 detected !");
            } else {
                try {
                    Class<?> clazz = Class.forName(LEGACY_COMPONENT_NAME);
                    Constructor<?> constructor = clazz.getConstructor(new Class[0]);
                    sLegacyComponentFactory = (LegacyComponentFactory) constructor.newInstance(new Object[0]);
                    Log.d(LOG_TAG, "Use Legacy's LegacyComponentFactory");
                } catch (Exception e) {
                    Log.d(LOG_TAG, "Cannot load legacy factory");
                }
            }
            if (sLegacyComponentFactory == null) {
                sLegacyComponentFactory = new LegacyComponentFactoryBase();
            }
        }
        return sLegacyComponentFactory;
    }
}
