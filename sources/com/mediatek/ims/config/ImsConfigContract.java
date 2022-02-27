package com.mediatek.ims.config;

import android.content.ContentUris;
import android.net.Uri;
import android.provider.BaseColumns;
/* loaded from: classes.dex */
public class ImsConfigContract {
    public static final String ACTION_CONFIG_LOADED = "com.mediatek.ims.config.action.CONFIG_LOADED";
    public static final String ACTION_CONFIG_UPDATE = "com.mediatek.ims.config.action.CONFIG_UPDATE";
    public static final String ACTION_DYNAMIC_IMS_SWITCH_COMPLETE = "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE";
    public static final String ACTION_DYNAMIC_IMS_SWITCH_TRIGGER = "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_TRIGGER";
    public static final String ACTION_IMS_CONFIG_CHANGED = "com.android.intent.action.IMS_CONFIG_CHANGED";
    public static final String ACTION_IMS_FEATURE_CHANGED = "com.android.intent.action.IMS_FEATURE_CHANGED";
    public static final String AUTHORITY = "com.mediatek.ims.config.provider";
    public static final String EXTRA_CHANGED_ITEM = "item";
    public static final String EXTRA_CONFIG_ID = "config_id";
    public static final String EXTRA_MIMETYPE = "mimetype";
    public static final String EXTRA_NEW_VALUE = "value";
    public static final String EXTRA_PHONE_ID = "phone_id";
    public static final String TABLE_CONFIG_SETTING = "tb_config_setting";
    public static final String TABLE_DEFAULT = "tb_default";
    public static final String TABLE_FEATURE = "tb_feature";
    public static final String TABLE_MASTER = "tb_master";
    public static final String TABLE_PROVISION = "tb_provision";
    public static final String TABLE_RESOURCE = "tb_resource";
    public static final String VALUE_NO_DEFAULT = "n/a";
    public static final Uri CONTENT_URI = Uri.parse("content://com.mediatek.ims.config.provider");
    private static String[] sConfigNames = {"VOCODER_AMRMODESET", "VOCODER_AMRWBMODESET", "SIP_SESSION_TIMER", "MIN_SE", "CANCELLATION_TIMER", "TDELAY", "SILENT_REDIAL_ENABLE", "SIP_T1_TIMER", "SIP_T2_TIMER", "SIP_TF_TIMER", "VLT_SETTING_ENABLED", "LVC_SETTING_ENABLED", "DOMAIN_NAME", "SMS_FORMAT", "SMS_OVER_IP", "PUBLISH_TIMER", "PUBLISH_TIMER_EXTENDED", "CAPABILITY_DISCOVERY_ENABLED", "CAPABILITIES_CACHE_EXPIRATION", "AVAILABILITY_CACHE_EXPIRATION", "CAPABILITIES_POLL_INTERVAL", "SOURCE_THROTTLE_PUBLISH", "MAX_NUMENTRIES_IN_RCL", "CAPAB_POLL_LIST_SUB_EXP", "GZIP_FLAG", "EAB_SETTING_ENABLED", "VOICE_OVER_WIFI_ROAMING", "VOICE_OVER_WIFI_MODE", "VOICE_OVER_WIFI_SETTING_ENABLED", "MOBILE_DATA_ENABLED", "VOLTE_USER_OPT_IN_STATUS", "LBO_PCSCF_ADDRESS", "KEEP_ALIVE_ENABLED", "REGISTRATION_RETRY_BASE_TIME_SEC", "REGISTRATION_RETRY_MAX_TIME_SEC", "SPEECH_START_PORT", "SPEECH_END_PORT", "SIP_INVITE_REQ_RETX_INTERVAL_MSEC", "SIP_INVITE_RSP_WAIT_TIME_MSEC", "SIP_INVITE_RSP_RETX_WAIT_TIME_MSEC", "SIP_NON_INVITE_REQ_RETX_INTERVAL_MSEC", "SIP_NON_INVITE_TXN_TIMEOUT_TIMER_MSEC", "SIP_INVITE_RSP_RETX_INTERVAL_MSEC", "SIP_ACK_RECEIPT_WAIT_TIME_MSEC", "SIP_ACK_RETX_WAIT_TIME_MSEC", "SIP_NON_INVITE_REQ_RETX_WAIT_TIME_MSEC", "SIP_NON_INVITE_RSP_RETX_WAIT_TIME_MSEC", "AMR_WB_OCTET_ALIGNED_PT", "AMR_WB_BANDWIDTH_EFFICIENT_PT", "AMR_OCTET_ALIGNED_PT", "AMR_BANDWIDTH_EFFICIENT_PT", "DTMF_WB_PT", "DTMF_NB_PT", "AMR_DEFAULT_MODE", "SMS_PSI", "VIDEO_QUALITY", "TH_LTE1", "TH_LTE2", "TH_LTE3", "TH_1x", "VOWT_A", "VOWT_B", "T_EPDG_LTE", "T_EPDG_WIFI", "T_EPDG_1X", "VICE_SETTING_ENABLED", "RTT_SETTING_ENABLED"};
    private static String[] sMtkConfigNames = {"EPDG_ADDRESS"};

    /* loaded from: classes.dex */
    public static abstract class BasicConfigTable implements BaseColumns {
        public static final String CONFIG_ID = "config_id";
        public static final String DATA = "data";
        public static final String MIMETYPE_ID = "mimetype_id";
        public static final String PHONE_ID = "phone_id";
    }

    /* loaded from: classes.dex */
    public interface MimeType {
        public static final int FLOAT = 2;
        public static final int INTEGER = 0;
        public static final int JSON = 3;
        public static final int STRING = 1;
    }

    /* loaded from: classes.dex */
    public static class Operator {
        public static final int OP_06 = 6;
        public static final int OP_08 = 8;
        public static final int OP_12 = 12;
        public static final int OP_DEFAULT = 0;
        public static final int OP_NONE = -1;
    }

    /* loaded from: classes.dex */
    public interface Unit {
        public static final int DAYS = 6;
        public static final int HOURS = 5;
        public static final int MICROSECONDS = 1;
        public static final int MILLISECONDS = 2;
        public static final int MINUTES = 4;
        public static final int NANOSECONDS = 0;
        public static final int SECONDS = 3;
        public static final int UNIT_NONE = -1;
    }

    /* loaded from: classes.dex */
    public static class ConfigSetting implements BaseColumns {
        public static final Uri CONTENT_URI = Uri.parse("content://com.mediatek.ims.config.provider/tb_config_setting");
        public static final String PHONE_ID = "phone_id";
        public static final String SETTING_ID = "setting_id";
        public static final int SETTING_ID_OPCODE = 0;
        public static final String VALUE = "value";

        public static Uri getUriWithSettingId(int phoneId, int settingId) {
            Uri result = ContentUris.withAppendedId(CONTENT_URI, phoneId);
            return ContentUris.withAppendedId(result, settingId);
        }
    }

    /* loaded from: classes.dex */
    public static class Feature implements BaseColumns {
        public static final Uri CONTENT_URI = Uri.parse("content://com.mediatek.ims.config.provider/tb_feature");
        public static final String FEATURE_ID = "feature_id";
        public static final String NETWORK_ID = "network_id";
        public static final String PHONE_ID = "phone_id";
        public static final String VALUE = "value";

        public static Uri getUriWithFeatureId(int phoneId, int featureId, int network) {
            Uri result = ContentUris.withAppendedId(CONTENT_URI, phoneId);
            return ContentUris.withAppendedId(ContentUris.withAppendedId(result, featureId), network);
        }
    }

    /* loaded from: classes.dex */
    public static class Resource implements BaseColumns {
        public static final Uri CONTENT_URI = Uri.parse("content://com.mediatek.ims.config.provider/tb_resource");
        public static final String FEATURE_ID = "feature_id";
        public static final String PHONE_ID = "phone_id";
        public static final String VALUE = "value";

        public static Uri getUriWithFeatureId(int phoneId, int featureId) {
            Uri result = ContentUris.withAppendedId(CONTENT_URI, phoneId);
            return ContentUris.withAppendedId(result, featureId);
        }
    }

    /* loaded from: classes.dex */
    public static class Provision extends BasicConfigTable {
        public static final Uri CONTENT_URI = Uri.parse("content://com.mediatek.ims.config.provider/tb_provision");
        public static final String DATETIME = "datetime";

        public static Uri getUriWithConfigId(int phoneId, int configId) {
            Uri result = ContentUris.withAppendedId(CONTENT_URI, phoneId);
            return Uri.withAppendedPath(result, ImsConfigContract.configIdToName(configId));
        }
    }

    /* loaded from: classes.dex */
    public static class Default extends BasicConfigTable {
        public static final Uri CONTENT_URI = Uri.parse("content://com.mediatek.ims.config.provider/tb_default");
        public static final String UNIT_ID = "unit_id";

        public static Uri getUriWithConfigId(int phoneId, int configId) {
            Uri result = ContentUris.withAppendedId(CONTENT_URI, phoneId);
            return Uri.withAppendedPath(result, ImsConfigContract.configIdToName(configId));
        }
    }

    /* loaded from: classes.dex */
    public static class Master extends BasicConfigTable {
        public static final Uri CONTENT_URI = Uri.parse("content://com.mediatek.ims.config.provider/tb_master");

        public static Uri getUriWithConfigId(int phoneId, int configId) {
            Uri result = ContentUris.withAppendedId(CONTENT_URI, phoneId);
            return Uri.withAppendedPath(result, ImsConfigContract.configIdToName(configId));
        }
    }

    public static Uri getTableUri(String table) {
        if (Validator.isValidTable(table)) {
            char c = 65535;
            int hashCode = table.hashCode();
            if (hashCode != -2133078972) {
                if (hashCode != 45084740) {
                    if (hashCode != 1412604243) {
                        if (hashCode == 1545420144 && table.equals(TABLE_DEFAULT)) {
                            c = 1;
                        }
                    } else if (table.equals(TABLE_MASTER)) {
                        c = 3;
                    }
                } else if (table.equals(TABLE_PROVISION)) {
                    c = 2;
                }
            } else if (table.equals(TABLE_CONFIG_SETTING)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    Uri result = ConfigSetting.CONTENT_URI;
                    return result;
                case 1:
                    Uri result2 = Default.CONTENT_URI;
                    return result2;
                case 2:
                    Uri result3 = Provision.CONTENT_URI;
                    return result3;
                case 3:
                    Uri result4 = Master.CONTENT_URI;
                    return result4;
                default:
                    return null;
            }
        } else {
            throw new IllegalArgumentException("Invalid table: " + table);
        }
    }

    public static Uri getConfigUri(String table, int phoneId, int itemId) {
        if (Validator.isValidTable(table)) {
            char c = 65535;
            int hashCode = table.hashCode();
            if (hashCode != -2133078972) {
                if (hashCode != 45084740) {
                    if (hashCode != 1412604243) {
                        if (hashCode == 1545420144 && table.equals(TABLE_DEFAULT)) {
                            c = 1;
                        }
                    } else if (table.equals(TABLE_MASTER)) {
                        c = 3;
                    }
                } else if (table.equals(TABLE_PROVISION)) {
                    c = 2;
                }
            } else if (table.equals(TABLE_CONFIG_SETTING)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    Uri result = ConfigSetting.getUriWithSettingId(phoneId, itemId);
                    return result;
                case 1:
                    Uri result2 = Default.getUriWithConfigId(phoneId, itemId);
                    return result2;
                case 2:
                    Uri result3 = Provision.getUriWithConfigId(phoneId, itemId);
                    return result3;
                case 3:
                    Uri result4 = Master.getUriWithConfigId(phoneId, itemId);
                    return result4;
                default:
                    return null;
            }
        } else {
            throw new IllegalArgumentException("Invalid table: " + table);
        }
    }

    public static String configIdToName(int configId) {
        if (configId >= 1000 && configId <= 1000) {
            return sMtkConfigNames[configId - 1000];
        }
        if (configId < sConfigNames.length) {
            return sConfigNames[configId];
        }
        throw new IllegalArgumentException("Invalid config id: " + configId);
    }

    public static int configNameToId(String configName) {
        for (int i = 0; i < sConfigNames.length; i++) {
            if (sConfigNames[i].equals(configName)) {
                return i;
            }
        }
        for (int i2 = 0; i2 < sMtkConfigNames.length; i2++) {
            if (sMtkConfigNames[i2].equals(configName)) {
                return i2 + 1000;
            }
        }
        throw new IllegalArgumentException("Unknown config: " + configName);
    }

    /* loaded from: classes.dex */
    public static class Validator {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static boolean isValidTable(String table) {
            char c;
            switch (table.hashCode()) {
                case -2133078972:
                    if (table.equals(ImsConfigContract.TABLE_CONFIG_SETTING)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -978591195:
                    if (table.equals(ImsConfigContract.TABLE_FEATURE)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -321961281:
                    if (table.equals(ImsConfigContract.TABLE_RESOURCE)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 45084740:
                    if (table.equals(ImsConfigContract.TABLE_PROVISION)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1412604243:
                    if (table.equals(ImsConfigContract.TABLE_MASTER)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1545420144:
                    if (table.equals(ImsConfigContract.TABLE_DEFAULT)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    return true;
                default:
                    return false;
            }
        }

        public static boolean isValidSettingId(int settingId) {
            if (settingId != 0) {
                return false;
            }
            return true;
        }

        public static boolean isValidFeatureId(int featureId) {
            switch (featureId) {
                case 0:
                case 1:
                case 2:
                case 3:
                    return true;
                default:
                    return false;
            }
        }

        public static boolean isValidFeatureValue(int featureVal) {
            switch (featureVal) {
                case 0:
                case 1:
                    return true;
                default:
                    return false;
            }
        }

        public static boolean isValidNetwork(int network) {
            return network != 0;
        }

        public static boolean isValidConfigId(int configId) {
            if (configId < 0 || configId > 1000) {
                return false;
            }
            if (configId <= 66 || configId >= 1000) {
                return true;
            }
            return false;
        }

        public static boolean isValidMimeTypeId(int mimeTypeId) {
            switch (mimeTypeId) {
                case 0:
                case 1:
                case 2:
                case 3:
                    return true;
                default:
                    return false;
            }
        }

        public static boolean isValidUnitId(int unitId) {
            switch (unitId) {
                case -1:
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    return true;
                default:
                    return false;
            }
        }
    }

    public static int getNetworkTypeByFeature(int imsFeatureType) {
        switch (imsFeatureType) {
            case 0:
                return 13;
            case 1:
                return 13;
            case 2:
                return 18;
            default:
                return 0;
        }
    }
}
