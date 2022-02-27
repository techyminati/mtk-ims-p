package com.mediatek.ims;

import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.mediatek.ims.common.SubscriptionManagerHelper;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class OperatorUtils {
    private static final String LOG_TAG = "OperatorUtils";
    private static final String PROPERTY_MTK_CT_VOLTE_SUPPORT = "persist.vendor.mtk_ct_volte_support";
    private static final String PROPERTY_MTK_DYNAMIC_IMS_SWITCH = "persist.vendor.mtk_dynamic_ims_switch";
    private static final String PROPERTY_MTK_UIM_SUBSCRIBERID = "vendor.ril.uim.subscriberid";
    private static final Map<OPID, List> mOPMap = new HashMap<OPID, List>() { // from class: com.mediatek.ims.OperatorUtils.1
        {
            put(OPID.OP01, Arrays.asList("46000", "46002", "46004", "46007", "46008"));
            put(OPID.OP02, Arrays.asList("46001", "46006", "46009", "45407"));
            put(OPID.OP03, Arrays.asList("20801", "20802"));
            put(OPID.OP05, Arrays.asList("23203", "23204", "21901", "23001", "21630", "29702", "20416", "20420", "26002", "22004", "23430", "26201", "26206", "26278"));
            put(OPID.OP06, Arrays.asList("21401", "21406", "20404", "28602", "23415", "27602", "23003", "23099", "60202", "28802", "54201", "26202", "26204", "26209", "62002", "20205", "21670", "27402", "27403", "27201", "22210", "27801", "53001", "26801", "22601", "42702"));
            put(OPID.OP07, Arrays.asList("31030", "31070", "31080", "31090", "310150", "310170", "310280", "310380", "310410", "310560", "310680", "311180"));
            put(OPID.OP08, Arrays.asList("310160", "310260", "310490", "310580", "310660"));
            put(OPID.OP09, Arrays.asList("46003", "46011", "46012", "45502", "45507"));
            put(OPID.OP11, Arrays.asList("23420"));
            put(OPID.OP15, Arrays.asList("26203", "26207", "26208", "26211", "26277"));
            put(OPID.OP16, Arrays.asList("23430", "23431", "23432", "23433", "23434"));
            put(OPID.OP18, Arrays.asList("405854", "405855", "405856", "405872", "405857", "405858", "405859", "405860", "405861", "405862", "405873", "405863", "405864", "405874", "405865", "405866", "405867", "405868", "405869", "405871", "405870", "405840"));
            put(OPID.OP156, Arrays.asList("23802"));
        }
    };

    /* loaded from: classes.dex */
    public enum OPID {
        OP01,
        OP02,
        OP03,
        OP05,
        OP06,
        OP07,
        OP08,
        OP09,
        OP11,
        OP15,
        OP16,
        OP18,
        OP156
    }

    public static boolean isMainCapabilitySimOperator(OPID id) {
        int phoneId = getMainCapabilityPhoneId();
        return isMatched(id, phoneId);
    }

    public static boolean isMatched(OPID id, int phoneId) {
        String mccMnc = getSimOperatorNumericForPhone(phoneId);
        List mccMncList = mOPMap.get(id);
        if (mccMncList == null || !mccMncList.contains(mccMnc)) {
            return false;
        }
        return true;
    }

    private static int getMainCapabilityPhoneId() {
        int phoneId = SystemProperties.getInt("persist.vendor.radio.simswitch", 1) - 1;
        if (phoneId < 0 || phoneId >= TelephonyManager.getDefault().getPhoneCount()) {
            phoneId = -1;
        }
        Rlog.d(LOG_TAG, "getMainCapabilityPhoneId = " + phoneId);
        return phoneId;
    }

    public static String getSimOperatorNumericForPhone(int phoneId) {
        String mccMncPropertyName;
        int subId = SubscriptionManagerHelper.getSubIdUsingPhoneId(phoneId);
        int phoneType = TelephonyManager.getDefault().getCurrentPhoneType(subId);
        if (phoneType == 2) {
            if (phoneId == 0) {
                mccMncPropertyName = "vendor.cdma.ril.uicc.mccmnc";
            } else {
                mccMncPropertyName = "vendor.cdma.ril.uicc.mccmnc." + phoneId;
            }
        } else if (phoneId == 0) {
            mccMncPropertyName = "vendor.gsm.ril.uicc.mccmnc";
        } else {
            mccMncPropertyName = "vendor.gsm.ril.uicc.mccmnc." + phoneId;
        }
        String mccMnc = SystemProperties.get(mccMncPropertyName, MtkPhoneConstants.MVNO_TYPE_NONE);
        Log.w(LOG_TAG, "getMccMnc, mccMnc value:" + mccMnc);
        return mccMnc;
    }

    public static boolean isCTVolteDisabled(int phoneId) {
        if (!RadioCapabilitySwitchUtil.IMSI_READY.equals(SystemProperties.get(PROPERTY_MTK_DYNAMIC_IMS_SWITCH)) || SystemProperties.getInt(PROPERTY_MTK_CT_VOLTE_SUPPORT, 0) != 0 || !isMatched(OPID.OP09, phoneId)) {
            return false;
        }
        Log.d(LOG_TAG, "SIM loaded, but CT VoLTE shall not support");
        return true;
    }

    public static boolean isOperator(String mccMnc, OPID id) {
        boolean r = false;
        if (mOPMap.get(id).contains(mccMnc)) {
            r = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(MtkPhoneConstants.MVNO_TYPE_NONE);
        sb.append(mccMnc);
        sb.append(r ? " = " : " != ");
        Log.d(LOG_TAG, sb.toString());
        return r;
    }
}
