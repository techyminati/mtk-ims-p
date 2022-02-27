package com.mediatek.common.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class OperatorCustomizationFactoryLoader {
    private static final String CUSTOM_APK_PATH = "/custom/app/";
    private static final String CUSTOM_JAR_PATH = "/custom/operator/libs/";
    private static final String PROPERTY_OPERATOR_OPTR = "persist.vendor.operator.optr";
    private static final String PROPERTY_OPERATOR_SEG = "persist.vendor.operator.seg";
    private static final String PROPERTY_OPERATOR_SPEC = "persist.vendor.operator.spec";
    private static final String SYSTEM_APK_PATH = "/system/app/";
    private static final String SYSTEM_JAR_PATH = "/system/operator/libs/";
    private static final String TAG = "OperatorCustomizationFactoryLoader";
    private static final String USP_PACKAGE = getSysProperty("ro.vendor.mtk_carrierexpress_pack", "no");
    private static final String RSC_SYSTEM_APK_PATH = getSysProperty("ro.vendor.sys.current_rsc_path", MtkPhoneConstants.MVNO_TYPE_NONE);
    private static final Map<OperatorFactoryInfo, Object> sFactoryMap = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class OperatorInfo {
        private String mOperator;
        private String mSegment;
        private String mSpecification;

        public OperatorInfo(String optr, String spec, String seg) {
            this.mOperator = optr;
            this.mSpecification = spec;
            this.mSegment = seg;
        }

        public String toString() {
            return this.mOperator + "_" + this.mSpecification + "_" + this.mSegment;
        }
    }

    /* loaded from: classes.dex */
    public static class OperatorFactoryInfo {
        String mFactoryName;
        String mLibName;
        String mOperator;
        String mPackageName;
        String mSegment;
        String mSpecification;

        public OperatorFactoryInfo(String libName, String factoryName, String packageName, String operator) {
            this(libName, factoryName, packageName, operator, null, null);
        }

        public OperatorFactoryInfo(String libName, String factoryName, String packageName, String operator, String segment) {
            this(libName, factoryName, packageName, operator, segment, null);
        }

        public OperatorFactoryInfo(String libName, String factoryName, String packageName, String operator, String segment, String specification) {
            this.mLibName = libName;
            this.mFactoryName = factoryName;
            this.mPackageName = packageName;
            this.mOperator = operator;
            this.mSegment = segment;
            this.mSpecification = specification;
        }

        public String toString() {
            return "OperatorFactoryInfo(" + this.mOperator + "_" + this.mSpecification + "_" + this.mSegment + ":" + this.mLibName + ":" + this.mFactoryName + ":" + this.mPackageName + ")";
        }
    }

    private static OperatorInfo getActiveOperatorInfo() {
        OperatorInfo info = new OperatorInfo(getSysProperty(PROPERTY_OPERATOR_OPTR, MtkPhoneConstants.MVNO_TYPE_NONE), getSysProperty(PROPERTY_OPERATOR_SPEC, MtkPhoneConstants.MVNO_TYPE_NONE), getSysProperty(PROPERTY_OPERATOR_SEG, MtkPhoneConstants.MVNO_TYPE_NONE));
        return info;
    }

    private static OperatorInfo getActiveOperatorInfo(int slot) {
        String[] items;
        OperatorInfo info = null;
        if (slot == -1 || "no".equals(USP_PACKAGE)) {
            info = getActiveOperatorInfo();
        } else {
            String optrProperty = getSysProperty("persist.vendor.mtk_usp_optr_slot_" + slot, MtkPhoneConstants.MVNO_TYPE_NONE);
            Log.d(TAG, "usp optr property is " + optrProperty);
            if (!TextUtils.isEmpty(optrProperty) && (items = optrProperty.split("_")) != null) {
                if (items.length == 1) {
                    info = new OperatorInfo(items[0], MtkPhoneConstants.MVNO_TYPE_NONE, MtkPhoneConstants.MVNO_TYPE_NONE);
                } else if (items.length == 3) {
                    info = new OperatorInfo(items[0], items[1], items[2]);
                } else {
                    Log.e(TAG, "usp optr property no content or wrong");
                }
            }
        }
        Log.d(TAG, "Slot " + slot + "'s OperatorInfo is" + info);
        return info;
    }

    public static Object loadFactory(Context context, List<OperatorFactoryInfo> list) {
        return loadFactory(context, list, -1);
    }

    public static synchronized Object loadFactory(Context context, List<OperatorFactoryInfo> list, int slot) {
        synchronized (OperatorCustomizationFactoryLoader.class) {
            if (list == null) {
                Log.e(TAG, "loadFactory failed, because param list is null");
                return null;
            }
            OperatorFactoryInfo factoryInfo = findOpertorFactoryInfo(list, slot);
            if (factoryInfo == null) {
                StringBuilder sb = new StringBuilder();
                for (int index = 0; index < list.size(); index++) {
                    sb.append(index + ": ");
                    sb.append(list.get(index));
                    sb.append("\n");
                }
                Log.e(TAG, "can not find operatorFactoryInfo by slot id " + slot + " from \n" + sb.toString());
                return null;
            }
            Object factory = sFactoryMap.get(factoryInfo);
            if (factory != null) {
                Log.d(TAG, "return " + factory + " from cache by " + factoryInfo);
                return factory;
            }
            String path = searchTargetPath(factoryInfo.mLibName);
            if (TextUtils.isEmpty(path)) {
                return null;
            }
            Object factory2 = loadFactoryInternal(context, path, factoryInfo.mFactoryName, factoryInfo.mPackageName);
            if (factory2 != null) {
                sFactoryMap.put(factoryInfo, factory2);
            }
            return factory2;
        }
    }

    private static Object loadFactoryInternal(Context context, String target, String factoryClassName, String packageName) {
        ClassLoader classLoader;
        Log.d(TAG, "load factory " + factoryClassName + " from " + target + " whose packageName is " + packageName + ", context is " + context);
        try {
            if (context != null) {
                classLoader = new PathClassLoader(target, context.getClassLoader());
            } else {
                classLoader = new PathClassLoader(target, ClassLoader.getSystemClassLoader().getParent());
            }
            Class<?> clazz = classLoader.loadClass(factoryClassName);
            Log.d(TAG, "Load class : " + factoryClassName + " successfully with classLoader:" + classLoader);
            if (!TextUtils.isEmpty(packageName) && context != null) {
                try {
                    try {
                        Constructor<?> constructor = clazz.getConstructor(Context.class);
                        Context opContext = context.createPackageContext(packageName, 3);
                        return constructor.newInstance(opContext);
                    } catch (InvocationTargetException e) {
                        Log.e(TAG, "Exception occurs when execute constructor with Context", e);
                    }
                } catch (NoSuchMethodException e2) {
                    Log.d(TAG, "Exception occurs when using constructor with Context");
                }
            }
            return clazz.newInstance();
        } catch (Exception ex) {
            Log.e(TAG, "Exception when initial instance", ex);
            return null;
        }
    }

    private static String getSysProperty(String prop, String def) {
        try {
            Class<?> systemPropertiesClass = Class.forName("android.os.SystemProperties");
            Method getPropMethod = systemPropertiesClass.getMethod("get", String.class, String.class);
            String propValue = (String) getPropMethod.invoke(null, prop, def);
            return propValue;
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "Get system properties failed! " + e);
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        } catch (IllegalAccessException e2) {
            Log.e(TAG, "Get system properties failed! " + e2);
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        } catch (NoSuchMethodException e3) {
            Log.e(TAG, "Get system properties failed! " + e3);
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        } catch (InvocationTargetException e4) {
            Log.e(TAG, "Get system properties failed! " + e4);
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        }
    }

    private static String searchTargetPath(String target) {
        String[] searchFolders;
        if (TextUtils.isEmpty(target)) {
            Log.e(TAG, "target is null");
            return null;
        }
        String search = target;
        if (target.endsWith(".apk")) {
            search = target.substring(0, target.length() - 4) + '/' + target;
            searchFolders = !TextUtils.isEmpty(RSC_SYSTEM_APK_PATH) ? new String[]{RSC_SYSTEM_APK_PATH + "/app/", SYSTEM_APK_PATH, CUSTOM_APK_PATH} : new String[]{SYSTEM_APK_PATH, CUSTOM_APK_PATH};
        } else {
            searchFolders = new String[]{SYSTEM_JAR_PATH, CUSTOM_JAR_PATH};
        }
        for (String folder : searchFolders) {
            File file = new File(folder + search);
            if (file.exists()) {
                return folder + search;
            }
        }
        Log.v(TAG, "can not find target " + target + " in " + Arrays.toString(searchFolders));
        return null;
    }

    private static OperatorFactoryInfo findOpertorFactoryInfo(List<OperatorFactoryInfo> list, int slot) {
        OperatorFactoryInfo ret = null;
        OperatorInfo optrInfo = getActiveOperatorInfo(slot);
        if (optrInfo == null || TextUtils.isEmpty(optrInfo.mOperator)) {
            Log.d(TAG, "It's OM load or parse failed, because operator is null");
            return null;
        }
        List<OperatorFactoryInfo> unSignedOperatorIdFactoryInfos = new ArrayList<>();
        for (OperatorFactoryInfo factoryInfo : list) {
            if (optrInfo.mOperator.equals(factoryInfo.mOperator)) {
                if (factoryInfo.mSegment != null) {
                    if (factoryInfo.mSegment.equals(optrInfo.mSegment) && (factoryInfo.mSpecification == null || factoryInfo.mSpecification.equals(optrInfo.mSpecification))) {
                        ret = factoryInfo;
                        break;
                    }
                } else if (factoryInfo.mSpecification == null || factoryInfo.mSpecification.equals(optrInfo.mSpecification)) {
                    ret = factoryInfo;
                    break;
                }
            } else if (TextUtils.isEmpty(factoryInfo.mOperator)) {
                unSignedOperatorIdFactoryInfos.add(factoryInfo);
            }
        }
        if (ret != null) {
            return ret;
        }
        for (OperatorFactoryInfo factoryInfo2 : unSignedOperatorIdFactoryInfos) {
            String target = searchTargetPath(factoryInfo2.mLibName);
            if (!TextUtils.isEmpty(target)) {
                return factoryInfo2;
            }
        }
        return ret;
    }
}
