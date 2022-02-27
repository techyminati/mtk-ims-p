package com.mediatek.internal.telephony;

import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.internal.telephony.IPhoneSubInfo;
import com.mediatek.internal.telephony.ratconfiguration.RatConfiguration;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public class RadioCapabilitySwitchUtil {
    public static final String CN_MCC = "460";
    public static final int ENHANCEMENT_T_PLUS_C = 2;
    public static final int ENHANCEMENT_T_PLUS_T = 0;
    public static final int ENHANCEMENT_T_PLUS_W = 1;
    public static final int ENHANCEMENT_W_PLUS_C = 3;
    public static final int ENHANCEMENT_W_PLUS_NA = 5;
    public static final int ENHANCEMENT_W_PLUS_W = 4;
    public static final int ICCID_ERROR = 3;
    public static final String IMSI_NOT_READY = "0";
    public static final int IMSI_NOT_READY_OR_SIM_LOCKED = 2;
    public static final String IMSI_READY = "1";
    private static final String LOG_TAG = "RadioCapabilitySwitchUtil";
    public static final int NOT_SHOW_DIALOG = 1;
    private static final String NO_SIM_VALUE = "N/A";
    public static final int OP01_6M_PRIORITY_OP01_SIM = 1;
    public static final int OP01_6M_PRIORITY_OP01_USIM = 0;
    public static final int OP01_6M_PRIORITY_OTHER = 2;
    private static final String PROPERTY_CAPABILITY_SWITCH = "persist.vendor.radio.simswitch";
    private static final String PROPERTY_ICCID = "vendor.ril.iccid.sim";
    public static final int SHOW_DIALOG = 0;
    public static final int SIM_OP_INFO_OP01 = 2;
    public static final int SIM_OP_INFO_OP02 = 3;
    public static final int SIM_OP_INFO_OP09 = 4;
    public static final int SIM_OP_INFO_OP18 = 4;
    public static final int SIM_OP_INFO_OVERSEA = 1;
    public static final int SIM_OP_INFO_UNKNOWN = 0;
    public static final int SIM_SWITCH_MODE_DUAL_TALK = 3;
    public static final int SIM_SWITCH_MODE_DUAL_TALK_SWAP = 4;
    public static final int SIM_SWITCH_MODE_SINGLE_TALK_MDSYS = 1;
    public static final int SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE = 2;
    public static final int SIM_TYPE_OTHER = 2;
    public static final int SIM_TYPE_SIM = 0;
    public static final int SIM_TYPE_USIM = 1;
    private static final String[] PLMN_TABLE_OP01 = {"46000", "46002", "46007", "46008", "45412", "45413", "00101", "00211", "00321", "00431", "00541", "00651", "00761", "00871", "00902", "01012", "01122", "01232", "46004", "46602", "50270"};
    private static final String[] PLMN_TABLE_OP02 = {"46001", "46006", "46009", "45407"};
    private static final String[] PLMN_TABLE_OP09 = {"46005", "45502", "46003", "46011"};
    private static final String[] PLMN_TABLE_OP18 = {"405840", "405854", "405855", "405856", "405857", "405858", "405855", "405856", "405857", "405858", "405859", "405860", "405861", "405862", "405863", "405864", "405865", "405866", "405867", "405868", "405869", "405870", "405871", "405872", "405873", "405874"};
    private static final String[] PROPERTY_SIM_ICCID = {"vendor.ril.iccid.sim1", "vendor.ril.iccid.sim2", "vendor.ril.iccid.sim3", "vendor.ril.iccid.sim4"};
    private static final String[] PROPERTY_SIM_IMSI_STATUS = {"vendor.ril.imsi.status.sim1", "vendor.ril.imsi.status.sim2", "vendor.ril.imsi.status.sim3", "vendor.ril.imsi.status.sim4"};
    private static final String[] PROPERTY_RIL_FULL_UICC_TYPE = {"vendor.gsm.ril.fulluicctype", "vendor.gsm.ril.fulluicctype.2", "vendor.gsm.ril.fulluicctype.3", "vendor.gsm.ril.fulluicctype.4"};
    private static final String[] PROPERTY_RIL_CT3G = {"vendor.gsm.ril.ct3g", "vendor.gsm.ril.ct3g.2", "vendor.gsm.ril.ct3g.3", "vendor.gsm.ril.ct3g.4"};

    public static boolean getSimInfo(int[] simOpInfo, int[] simType, int insertedStatus) {
        IPhoneSubInfo subInfo;
        String[] strMnc = new String[simOpInfo.length];
        String[] strSimType = new String[simOpInfo.length];
        for (int i = 0; i < simOpInfo.length; i++) {
            String propStr = i == 0 ? "vendor.gsm.ril.uicctype" : "vendor.gsm.ril.uicctype." + (i + 1);
            strSimType[i] = SystemProperties.get(propStr, MtkPhoneConstants.MVNO_TYPE_NONE);
            if (strSimType[i].equals("SIM")) {
                simType[i] = 0;
            } else if (strSimType[i].equals("USIM")) {
                simType[i] = 1;
            } else {
                simType[i] = 2;
            }
            logd("SimType[" + i + "]= " + strSimType[i] + ", simType[" + i + "]=" + simType[i]);
            try {
                subInfo = IPhoneSubInfo.Stub.asInterface(ServiceManager.getService("iphonesubinfo"));
            } catch (RemoteException e) {
                logd("get subInfo stub fail");
                strMnc[i] = "error";
            }
            if (subInfo == null) {
                logd("subInfo stub is null");
                return false;
            }
            int[] subIdList = SubscriptionManager.getSubId(i);
            if (subIdList == null) {
                logd("subIdList is null");
                return false;
            }
            strMnc[i] = subInfo.getSubscriberIdForSubscriber(subIdList[0], "com.mediatek.internal.telephony");
            if (strMnc[i] == null) {
                logd("strMnc[" + i + "] is null, get mnc by ril.uim.subscriberid");
                StringBuilder sb = new StringBuilder();
                sb.append("vendor.ril.uim.subscriberid.");
                sb.append(i + 1);
                String propStr2 = sb.toString();
                strMnc[i] = SystemProperties.get(propStr2, MtkPhoneConstants.MVNO_TYPE_NONE);
            }
            if (strMnc[i].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                logd("strMnc[" + i + "] is null, get mnc by vendor.gsm.ril.uicc.mccmnc");
                String propStr3 = i == 0 ? "vendor.gsm.ril.uicc.mccmnc" : "vendor.gsm.ril.uicc.mccmnc." + i;
                strMnc[i] = SystemProperties.get(propStr3, MtkPhoneConstants.MVNO_TYPE_NONE);
            }
            if (strMnc[i] == null) {
                logd("strMnc[" + i + "] is null");
                strMnc[i] = MtkPhoneConstants.MVNO_TYPE_NONE;
            }
            if (strMnc[i].length() >= 6) {
                strMnc[i] = strMnc[i].substring(0, 6);
            } else if (strMnc[i].length() >= 5) {
                strMnc[i] = strMnc[i].substring(0, 5);
            }
            logd("insertedStatus:" + insertedStatus + "imsi status:" + getSimImsiStatus(i));
            if (insertedStatus >= 0 && ((1 << i) & insertedStatus) > 0) {
                if (strMnc[i].equals(MtkPhoneConstants.MVNO_TYPE_NONE) || strMnc[i].equals("error")) {
                    logd("SIM is inserted but no imsi");
                    return false;
                } else if (strMnc[i].equals("sim_lock")) {
                    logd("SIM is lock, wait pin unlock");
                    return false;
                } else if (strMnc[i].equals(NO_SIM_VALUE) || strMnc[i].equals("sim_absent")) {
                    logd("strMnc have invalid value, return false");
                    return false;
                }
            }
            String[] strArr = PLMN_TABLE_OP01;
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                String mccmnc = strArr[i2];
                if (strMnc[i].startsWith(mccmnc)) {
                    simOpInfo[i] = 2;
                    break;
                }
                i2++;
            }
            if (simOpInfo[i] == 0) {
                String[] strArr2 = PLMN_TABLE_OP02;
                int length2 = strArr2.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        break;
                    }
                    String mccmnc2 = strArr2[i3];
                    if (strMnc[i].startsWith(mccmnc2)) {
                        simOpInfo[i] = 3;
                        break;
                    }
                    i3++;
                }
            }
            if (simOpInfo[i] == 0) {
                String[] strArr3 = PLMN_TABLE_OP09;
                int length3 = strArr3.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length3) {
                        break;
                    }
                    String mccmnc3 = strArr3[i4];
                    if (strMnc[i].startsWith(mccmnc3)) {
                        simOpInfo[i] = 4;
                        break;
                    }
                    i4++;
                }
            }
            if (SystemProperties.get("persist.vendor.operator.optr", MtkPhoneConstants.MVNO_TYPE_NONE).equals("OP18") && simOpInfo[i] == 0) {
                String[] strArr4 = PLMN_TABLE_OP18;
                int length4 = strArr4.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length4) {
                        break;
                    }
                    String mccmnc4 = strArr4[i5];
                    if (strMnc[i].startsWith(mccmnc4)) {
                        simOpInfo[i] = 4;
                        break;
                    }
                    i5++;
                }
            }
            if (simOpInfo[i] == 0 && !strMnc[i].equals(MtkPhoneConstants.MVNO_TYPE_NONE) && !strMnc[i].equals(NO_SIM_VALUE)) {
                simOpInfo[i] = 1;
            }
            logd("strMnc[" + i + "]= " + strMnc[i] + ", simOpInfo[" + i + "]=" + simOpInfo[i]);
        }
        logd("getSimInfo(simOpInfo): " + Arrays.toString(simOpInfo));
        logd("getSimInfo(simType): " + Arrays.toString(simType));
        return true;
    }

    public static boolean isCdmaCard(int phoneId, int opInfo) {
        if (phoneId < 0 || phoneId >= TelephonyManager.getDefault().getPhoneCount()) {
            logd("isCdmaCard invalid phoneId:" + phoneId);
            return false;
        }
        boolean isCdmaSim = true;
        if (opInfo == 4) {
            return true;
        }
        String cardType = SystemProperties.get(PROPERTY_RIL_FULL_UICC_TYPE[phoneId]);
        if (cardType.indexOf("CSIM") < 0 && cardType.indexOf("RUIM") < 0) {
            isCdmaSim = false;
        }
        if (isCdmaSim || !"SIM".equals(cardType)) {
            return isCdmaSim;
        }
        String uimDualMode = SystemProperties.get(PROPERTY_RIL_CT3G[phoneId]);
        if (IMSI_READY.equals(uimDualMode)) {
            return true;
        }
        return isCdmaSim;
    }

    public static boolean isSupportSimSwitchEnhancement(int simType) {
        switch (simType) {
            case 0:
                return true;
            case 1:
                return true;
            case 2:
                return false;
            case 3:
                return false;
            case 4:
                return true;
            case 5:
                return true;
            default:
                return false;
        }
    }

    public static boolean isSkipCapabilitySwitch(int majorPhoneId, int phoneNum) {
        int i;
        int[] simOpInfo = new int[phoneNum];
        int[] simType = new int[phoneNum];
        int insertedSimCount = 0;
        int tSimCount = 0;
        int wSimCount = 0;
        int cSimCount = 0;
        String[] currIccId = new String[phoneNum];
        String opSpec = SystemProperties.get("persist.vendor.operator.optr", "OM");
        if (!isPS2SupportLTE()) {
            return false;
        }
        if (phoneNum > 2) {
            return majorPhoneId < 2 && getMainCapabilityPhoneId() < 2 && !RatConfiguration.isC2kSupported() && !RatConfiguration.isTdscdmaSupported();
        }
        int insertedState = 0;
        for (int insertedState2 = 0; insertedState2 < phoneNum; insertedState2++) {
            currIccId[insertedState2] = SystemProperties.get("vendor.ril.iccid.sim" + (insertedState2 + 1));
            if (currIccId[insertedState2] == null || MtkPhoneConstants.MVNO_TYPE_NONE.equals(currIccId[insertedState2])) {
                logd("iccid not found, do capability switch");
                return false;
            }
            if (!NO_SIM_VALUE.equals(currIccId[insertedState2])) {
                insertedSimCount++;
                insertedState = (1 << insertedState2) | insertedState;
            }
        }
        if (insertedSimCount == 0) {
            logd("no sim card, skip capability switch");
            return true;
        } else if (!getSimInfo(simOpInfo, simType, insertedState)) {
            logd("cannot get sim operator info, do capability switch");
            return false;
        } else {
            for (int i2 = 0; i2 < phoneNum; i2++) {
                if (2 == simOpInfo[i2]) {
                    tSimCount++;
                } else if (isCdmaCard(i2, simOpInfo[i2])) {
                    cSimCount++;
                } else if (simOpInfo[i2] != 0) {
                    wSimCount++;
                }
            }
            logd("isSkipCapabilitySwitch : Inserted SIM count: " + insertedSimCount + ", insertedStatus: " + insertedState + ", tSimCount: " + tSimCount + ", wSimCount: " + wSimCount + ", cSimCount: " + cSimCount);
            if ("OM".equals(opSpec)) {
                if (isSupportSimSwitchEnhancement(0)) {
                    i = 2;
                    if (insertedSimCount == 2 && tSimCount == 2) {
                        return true;
                    }
                } else {
                    i = 2;
                }
                if (isSupportSimSwitchEnhancement(1) && insertedSimCount == i && tSimCount == 1 && wSimCount == 1 && isTPlusWSupport() && simOpInfo[majorPhoneId] != i) {
                    return true;
                }
                if (isSupportSimSwitchEnhancement(i) && insertedSimCount == i && tSimCount == 1 && cSimCount == 1 && !isCdmaCard(majorPhoneId, simOpInfo[majorPhoneId])) {
                    return true;
                }
                if (isSupportSimSwitchEnhancement(3) && insertedSimCount == 2 && wSimCount == 1 && cSimCount == 1 && !isCdmaCard(majorPhoneId, simOpInfo[majorPhoneId])) {
                    return true;
                }
            }
            if (isSupportSimSwitchEnhancement(4) && insertedSimCount == 2 && wSimCount == 2) {
                return true;
            }
            return isSupportSimSwitchEnhancement(5) && insertedSimCount == 1 && wSimCount == 1;
        }
    }

    public static int getHigherPrioritySimForOp01(int curId, boolean[] op01Usim, boolean[] op01Sim, boolean[] overseaUsim, boolean[] overseaSim) {
        int phoneNum = op01Usim.length;
        if (op01Usim[curId]) {
            return curId;
        }
        int targetSim = -1;
        for (int targetSim2 = 0; targetSim2 < phoneNum; targetSim2++) {
            if (op01Usim[targetSim2]) {
                targetSim = targetSim2;
            }
        }
        if (targetSim != -1 || op01Sim[curId]) {
            return targetSim;
        }
        int targetSim3 = targetSim;
        for (int targetSim4 = 0; targetSim4 < phoneNum; targetSim4++) {
            if (op01Sim[targetSim4]) {
                targetSim3 = targetSim4;
            }
        }
        if (targetSim3 != -1 || overseaUsim[curId]) {
            return targetSim3;
        }
        for (int i = 0; i < phoneNum; i++) {
            if (overseaUsim[i]) {
                targetSim3 = i;
            }
        }
        if (targetSim3 != -1 || overseaSim[curId]) {
            return targetSim3;
        }
        for (int targetSim5 = 0; targetSim5 < phoneNum; targetSim5++) {
            if (overseaSim[targetSim5]) {
                targetSim3 = targetSim5;
            }
        }
        return targetSim3;
    }

    public static int getHighestPriorityPhone(int capPhoneId, int[] priority) {
        int targetPhone = 0;
        int phoneNum = priority.length;
        int highestPriorityCount = 0;
        int highestPriorityBitMap = 0;
        for (int i = 0; i < phoneNum; i++) {
            if (priority[i] < priority[targetPhone]) {
                targetPhone = i;
                highestPriorityCount = 1;
                highestPriorityBitMap = 1 << i;
            } else if (priority[i] == priority[targetPhone]) {
                highestPriorityCount++;
                highestPriorityBitMap |= 1 << i;
            }
        }
        if (highestPriorityCount == 1) {
            return targetPhone;
        }
        if (capPhoneId == -1 || ((1 << capPhoneId) & highestPriorityBitMap) == 0) {
            return -1;
        }
        return capPhoneId;
    }

    public static int getMainCapabilityPhoneId() {
        int phoneId = SystemProperties.getInt("persist.vendor.radio.simswitch", 1) - 1;
        logd("[RadioCapSwitchUtil] getMainCapabilityPhoneId " + phoneId);
        return phoneId;
    }

    private static void logd(String s) {
        Rlog.d(LOG_TAG, "[RadioCapSwitchUtil] " + s);
    }

    public static int isNeedShowSimDialog() {
        if (SystemProperties.getBoolean("ro.vendor.mtk_disable_cap_switch", false)) {
            logd("mtk_disable_cap_switch is true");
            return 0;
        }
        logd("isNeedShowSimDialog start");
        int phoneCount = TelephonyManager.getDefault().getPhoneCount();
        int[] simOpInfo = new int[phoneCount];
        int[] simType = new int[phoneCount];
        String[] currIccId = new String[phoneCount];
        int op02CardCount = 0;
        ArrayList<Integer> usimIndexList = new ArrayList<>();
        ArrayList<Integer> simIndexList = new ArrayList<>();
        ArrayList<Integer> op02IndexList = new ArrayList<>();
        ArrayList<Integer> otherIndexList = new ArrayList<>();
        int insertedStatus = 0;
        int insertedSimCount = 0;
        for (int insertedSimCount2 = 0; insertedSimCount2 < phoneCount; insertedSimCount2++) {
            currIccId[insertedSimCount2] = SystemProperties.get(PROPERTY_SIM_ICCID[insertedSimCount2]);
            logd("currIccid[" + insertedSimCount2 + "] : " + currIccId[insertedSimCount2]);
            if (currIccId[insertedSimCount2] == null || MtkPhoneConstants.MVNO_TYPE_NONE.equals(currIccId[insertedSimCount2])) {
                Log.e(LOG_TAG, "iccid not found, wait for next sim state change");
                return 3;
            }
            if (!NO_SIM_VALUE.equals(currIccId[insertedSimCount2])) {
                insertedSimCount++;
                insertedStatus = (1 << insertedSimCount2) | insertedStatus;
            }
        }
        if (insertedSimCount < 2) {
            logd("isNeedShowSimDialog: insert sim count < 2, do not show dialog");
            return 1;
        } else if (!getSimInfo(simOpInfo, simType, insertedStatus)) {
            Log.e(LOG_TAG, "isNeedShowSimDialog: Can't get SIM information");
            return 2;
        } else {
            for (int i = 0; i < phoneCount; i++) {
                if (1 == simType[i]) {
                    usimIndexList.add(Integer.valueOf(i));
                } else if (simType[i] == 0) {
                    simIndexList.add(Integer.valueOf(i));
                }
                if (3 == simOpInfo[i]) {
                    op02IndexList.add(Integer.valueOf(i));
                } else {
                    otherIndexList.add(Integer.valueOf(i));
                }
            }
            logd("usimIndexList size = " + usimIndexList.size());
            logd("op02IndexList size = " + op02IndexList.size());
            if (usimIndexList.size() >= 2) {
                for (int i2 = 0; i2 < usimIndexList.size(); i2++) {
                    if (op02IndexList.contains(usimIndexList.get(i2))) {
                        op02CardCount++;
                    }
                }
                if (op02CardCount == 1) {
                    logd("isNeedShowSimDialog: One OP02Usim inserted, not show dialog");
                    return 1;
                }
            } else if (usimIndexList.size() == 1) {
                logd("isNeedShowSimDialog: One Usim inserted, not show dialog");
                return 1;
            } else {
                for (int i3 = 0; i3 < simIndexList.size(); i3++) {
                    if (op02IndexList.contains(simIndexList.get(i3))) {
                        op02CardCount++;
                    }
                }
                if (op02CardCount == 1) {
                    logd("isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog");
                    return 1;
                }
            }
            logd("isNeedShowSimDialog: Show dialog");
            return 0;
        }
    }

    public static boolean isAnySimLocked(int phoneNum) {
        if (RatConfiguration.isC2kSupported()) {
            logd("isAnySimLocked always returns false in C2K");
            return false;
        }
        String[] mnc = new String[phoneNum];
        String[] iccid = new String[phoneNum];
        for (int i = 0; i < phoneNum; i++) {
            iccid[i] = SystemProperties.get(PROPERTY_SIM_ICCID[i]);
            if (!iccid[i].equals(NO_SIM_VALUE)) {
                mnc[i] = TelephonyManager.getTelephonyProperty(i, "vendor.gsm.sim.operator.numeric", MtkPhoneConstants.MVNO_TYPE_NONE);
                if (mnc[i].length() >= 6) {
                    mnc[i] = mnc[i].substring(0, 6);
                } else if (mnc[i].length() >= 5) {
                    mnc[i] = mnc[i].substring(0, 5);
                }
                if (!mnc[i].equals(MtkPhoneConstants.MVNO_TYPE_NONE)) {
                    logd("i = " + i + " from gsm.sim.operator.numeric:" + mnc[i] + " ,iccid = " + iccid[i]);
                }
            }
            if (!iccid[i].equals(NO_SIM_VALUE) && (mnc[i].equals(MtkPhoneConstants.MVNO_TYPE_NONE) || mnc[i].equals("sim_lock"))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isPS2SupportLTE() {
        if (SystemProperties.get("persist.vendor.radio.mtk_ps2_rat").indexOf(76) != -1) {
            logd("isPS2SupportLTE = true");
            return true;
        }
        logd("isPS2SupportLTE = false");
        return false;
    }

    public static boolean isTPlusWSupport() {
        if (!SystemProperties.get("vendor.ril.simswitch.tpluswsupport").equals(IMSI_READY)) {
            return false;
        }
        logd("return true for T+W support");
        return true;
    }

    public static void updateSimImsiStatus(int slot, String value) {
        logd("updateSimImsiStatus slot = " + slot + ", value = " + value);
        String propStr = PROPERTY_SIM_IMSI_STATUS[slot];
        SystemProperties.set(propStr, value);
    }

    private static String getSimImsiStatus(int slot) {
        String propStr = PROPERTY_SIM_IMSI_STATUS[slot];
        return SystemProperties.get(propStr, "0");
    }

    public static void clearAllSimImsiStatus() {
        logd("clearAllSimImsiStatus");
        for (int i = 0; i < PROPERTY_SIM_IMSI_STATUS.length; i++) {
            updateSimImsiStatus(i, "0");
        }
    }

    public static boolean isDssNoResetSupport() {
        if (SystemProperties.get("vendor.ril.simswitch.no_reset_support").equals(IMSI_READY)) {
            logd("return true for isDssNoResetSupport");
            return true;
        }
        logd("return false for isDssNoResetSupport");
        return false;
    }

    public static int getProtocolStackId(int slot) {
        int majorSlot = getMainCapabilityPhoneId();
        if (slot == majorSlot) {
            return 1;
        }
        if (isDssNoResetSupport()) {
            if (slot < majorSlot) {
                return slot + 2;
            }
        } else if (slot == 0) {
            return majorSlot + 1;
        }
        return slot + 1;
    }

    public static String getHashCode(String iccid) {
        try {
            MessageDigest alga = MessageDigest.getInstance("SHA-256");
            alga.update(iccid.getBytes());
            byte[] hashCode = alga.digest();
            String strIccid = new String(hashCode);
            return strIccid;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("RadioCapabilitySwitchUtil SHA-256 must exist");
        }
    }
}
