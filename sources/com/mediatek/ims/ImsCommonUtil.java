package com.mediatek.ims;

import android.os.Build;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
/* loaded from: classes.dex */
public class ImsCommonUtil {
    public static final boolean ENGLOAD = "eng".equals(Build.TYPE);
    private static final String LOG_TAG = "ImsCommonUtil";

    public static String bytesToHex(byte[] bytes) {
        char[] hexArray = "0123456789abcdef".toCharArray();
        char[] hexChars = new char[bytes.length * 2];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[(j * 2) + 1] = hexArray[v & 15];
        }
        return new String(hexChars);
    }

    public static byte[] hexToBytes(String inputString) {
        if (inputString == null) {
            return null;
        }
        int len = inputString.length();
        Rlog.d(LOG_TAG, "hexToBytes: inputLen = " + len);
        byte[] result = new byte[len / 2];
        int[] temp = new int[2];
        for (int i = 0; i < len / 2; i++) {
            temp[0] = inputString.charAt(i * 2);
            temp[1] = inputString.charAt((i * 2) + 1);
            for (int j = 0; j < 2; j++) {
                if (temp[j] >= 65 && temp[j] <= 70) {
                    temp[j] = (temp[j] - 65) + 10;
                } else if (temp[j] >= 97 && temp[j] <= 102) {
                    temp[j] = (temp[j] - 97) + 10;
                } else if (temp[j] < 48 || temp[j] > 57) {
                    return null;
                } else {
                    temp[j] = temp[j] - 48;
                }
            }
            int j2 = temp[0];
            result[i] = (byte) (j2 << 4);
            result[i] = (byte) (result[i] | temp[1]);
        }
        return result;
    }

    public static int getMainCapabilityPhoneId() {
        int phoneId = SystemProperties.getInt("persist.vendor.radio.simswitch", 1) - 1;
        if (phoneId < 0 || phoneId >= TelephonyManager.getDefault().getPhoneCount()) {
            phoneId = -1;
        }
        if (ENGLOAD) {
            Rlog.d(LOG_TAG, "getMainCapabilityPhoneId = " + phoneId);
        }
        return phoneId;
    }

    public static boolean supportMdAutoSetupIms() {
        if (SystemProperties.get(ImsConstants.SYS_PROP_MD_AUTO_SETUP_IMS).equals(RadioCapabilitySwitchUtil.IMSI_READY)) {
            return true;
        }
        return false;
    }

    public static boolean supportMims() {
        return SystemProperties.getInt(MtkImsConstants.MULTI_IMS_SUPPORT, 1) > 1;
    }

    public static int getMainPhoneIdForSingleIms() {
        int phoneId = SystemProperties.getInt("persist.vendor.radio.simswitch", 1) - 1;
        Rlog.d(LOG_TAG, "[getMainPhoneIdForSingleIms] : " + phoneId);
        return phoneId;
    }
}
