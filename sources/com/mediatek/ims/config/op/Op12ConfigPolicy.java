package com.mediatek.ims.config.op;

import com.mediatek.ims.config.ImsConfigPolicy;
import com.mediatek.internal.telephony.RadioCapabilitySwitchUtil;
/* loaded from: classes.dex */
public class Op12ConfigPolicy extends ImsConfigPolicy {
    public Op12ConfigPolicy() {
        super("Op12ConfigPolicy");
    }

    @Override // com.mediatek.ims.config.ImsConfigPolicy
    public boolean onSetDefaultValue(int configId, ImsConfigPolicy.DefaultConfig config) {
        switch (configId) {
            case 0:
                config.defVal = "7";
                return true;
            case 1:
                config.defVal = "2";
                return true;
            case 2:
                config.defVal = "300";
                config.unitId = 3;
                return true;
            case 3:
                config.defVal = "300";
                config.unitId = 3;
                return true;
            case 4:
                config.defVal = "6";
                config.unitId = 3;
                return true;
            case 5:
                config.defVal = "5";
                config.unitId = 3;
                return true;
            case 6:
                config.defVal = RadioCapabilitySwitchUtil.IMSI_READY;
                return true;
            case 7:
                config.defVal = "3";
                config.unitId = 3;
                return true;
            case 8:
                config.defVal = "16";
                config.unitId = 3;
                return true;
            case 9:
                config.defVal = "30";
                config.unitId = 3;
                return true;
            case 10:
                config.defVal = "0";
                return true;
            case 11:
                config.defVal = RadioCapabilitySwitchUtil.IMSI_READY;
                return true;
            case 12:
                config.defVal = "vzims.com";
                return true;
            case 13:
                config.defVal = RadioCapabilitySwitchUtil.IMSI_READY;
                return true;
            case 14:
                config.defVal = RadioCapabilitySwitchUtil.IMSI_READY;
                return true;
            case 15:
                config.defVal = "1200";
                config.unitId = 3;
                return true;
            case 16:
                config.defVal = "86400";
                config.unitId = 3;
                return true;
            case 17:
            default:
                return false;
            case 18:
                config.defVal = "7776000";
                config.unitId = 3;
                return true;
            case 19:
                config.defVal = "60";
                config.unitId = 3;
                return true;
            case 20:
                config.defVal = "625000";
                config.unitId = 3;
                return true;
            case 21:
                config.defVal = "60";
                config.unitId = 3;
                return true;
            case 22:
                config.defVal = "100";
                return true;
            case 23:
                config.defVal = "30";
                config.unitId = 3;
                return true;
            case 24:
                config.defVal = RadioCapabilitySwitchUtil.IMSI_READY;
                return true;
            case 25:
                config.defVal = "0";
                return true;
            case 26:
                config.defVal = "0";
                return true;
            case 27:
                config.defVal = String.valueOf(2);
                return true;
        }
    }
}
