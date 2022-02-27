package com.mediatek.ims;

import android.content.Context;
import android.content.res.Configuration;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class SuppSrvConfig {
    static final String LOG_TAG = "SuppSrvConfig";
    public static final int MEDIA_TYPE_ONLY_AUDIO = 1;
    public static final int MEDIA_TYPE_SEPERATE = 2;
    public static final int MEDIA_TYPE_STANDARD = 0;
    public static final int MEDIA_TYPE_VIDEO_WITH_AUDIO = 3;
    private static final int PROP_BOOL_IDX_APPEND_COUNTRY_CODE = 6;
    private static final int PROP_BOOL_IDX_ATTR_NEED_QUAOTATION_MARK = 20;
    private static final int PROP_BOOL_IDX_DISABLE_ETAG = 10;
    private static final int PROP_BOOL_IDX_FILL_FORWARD_TO = 3;
    private static final int PROP_BOOL_IDX_FWD_NUM_USE_SIP_URI = 21;
    private static final int PROP_BOOL_IDX_HANDLE_409 = 2;
    private static final int PROP_BOOL_IDX_HTTP_ERR_TO_UNKNOWN_HOST = 11;
    private static final int PROP_BOOL_IDX_IMS_DEREG = 5;
    private static final int PROP_BOOL_IDX_INTERNET_APN = 13;
    private static final int PROP_BOOL_IDX_MEDIA_TAG = 7;
    private static final int PROP_BOOL_IDX_NOREPLYTIMER_INSIDE_CFACTION = 14;
    private static final int PROP_BOOL_IDX_NOT_SUPPORT_CFNL = 18;
    private static final int PROP_BOOL_IDX_NOT_SUPPORT_XCAP = 0;
    private static final int PROP_BOOL_IDX_PUT_WHOLE_CLIR = 8;
    private static final int PROP_BOOL_IDX_QUERY_WHOLE_SIMSERV = 9;
    private static final int PROP_BOOL_IDX_SAVE_WHOLE_NODE = 16;
    private static final int PROP_BOOL_IDX_SET_CFNRC_WITH_CFNL = 17;
    private static final int PROP_BOOL_IDX_SUPPORT_PUT_CF_ROOT = 19;
    private static final int PROP_BOOL_IDX_SUPPORT_TIME_SLOT = 15;
    private static final int PROP_BOOL_IDX_USE_HTTP_PROTOCOL = 1;
    private static final int PROP_BOOL_IDX_XCAP_APN = 12;
    private static final int PROP_BOOL_IDX_XCAP_PREFIX_SS = 4;
    private static final int PROP_INT_IDX_DATA_COOL_DOWN_TIMER = 4;
    private static final int PROP_INT_IDX_DATA_KEEP_ALIVE_TIMER = 2;
    private static final int PROP_INT_IDX_MEDIA_TYPE = 1;
    private static final int PROP_INT_IDX_REQUEST_DATA_TIMER = 3;
    private static final int PROP_INT_IDX_XCAP_PORT = 0;
    private static final int PROP_LONG_IDX_CACHE_VALID_TIME = 0;
    private static final int PROP_STR_IDX_AUID = 1;
    private static final int PROP_STR_IDX_DIGEST_ID = 8;
    private static final int PROP_STR_IDX_DIGEST_PWD = 9;
    private static final int PROP_STR_IDX_ELEMENT_CONTENT_TYPE = 0;
    private static final int PROP_STR_IDX_PHONE_CONTEXT = 10;
    private static final int PROP_STR_IDX_RULEID_CFB = 4;
    private static final int PROP_STR_IDX_RULEID_CFNL = 7;
    private static final int PROP_STR_IDX_RULEID_CFNRC = 6;
    private static final int PROP_STR_IDX_RULEID_CFNRY = 5;
    private static final int PROP_STR_IDX_RULEID_CFU = 3;
    private static final int PROP_STR_IDX_XCAP_ROOT = 2;
    public static final String RULEID_CFB = "CFB";
    public static final String RULEID_CFNL = "CFNL";
    public static final String RULEID_CFNRc = "CFNRc";
    public static final String RULEID_CFNRy = "CFNRy";
    public static final String RULEID_CFU = "CFU";
    private static final String SYS_PROP_AUID = "persist.vendor.ss.auid";
    private static final String SYS_PROP_BOOL_CONFIG = "persist.vendor.ss.boolconfig";
    private static final String SYS_PROP_BOOL_VALUE = "persist.vendor.ss.boolvalue";
    private static final String SYS_PROP_CACHE_VALID_TIME = "persist.vendor.ss.cachetime";
    private static final String SYS_PROP_CONTENT_TYPE = "persist.vendor.ss.contenttype";
    private static final String SYS_PROP_DATA_COOL_DOWN_TIMER = "persist.vendor.ss.cdtimer";
    private static final String SYS_PROP_DATA_KEEP_ALIVE_TIMER = "persist.vendor.ss.alivetimer";
    private static final String SYS_PROP_DIGEST_ID = "persist.vendor.ss.digest.id";
    private static final String SYS_PROP_DIGEST_PWD = "persist.vendor.ss.digest.pwd";
    private static final String SYS_PROP_MEDIA_TYPE = "persist.vendor.ss.mediatype";
    private static final String SYS_PROP_REQUEST_DATA_TIMER = "persist.vendor.ss.reqtimer";
    private static final String SYS_PROP_RULEID_CFB = "persist.vendor.ss.ruleid.cfb";
    private static final String SYS_PROP_RULEID_CFNL = "persist.vendor.ss.ruleid.cfnl";
    private static final String SYS_PROP_RULEID_CFNRC = "persist.vendor.ss.ruleid.cfnrc";
    private static final String SYS_PROP_RULEID_CFNRY = "persist.vendor.ss.ruleid.cfnry";
    private static final String SYS_PROP_RULEID_CFU = "persist.vendor.ss.ruleid.cfu";
    private static final String SYS_PROP_XCAP_PORT = "persist.vendor.ss.xcapport";
    private static final String SYS_PROP_XCAP_ROOT = "persist.vendor.ss.xcaproot";
    private static SuppSrvConfig sInstance = null;
    private Context mContext;
    private boolean mNotSupportXcap = false;
    private boolean mHttpProtocolScheme = true;
    private boolean mHandleError409 = false;
    private boolean mFillCompleteForwardTo = false;
    private boolean mXcapNsPrefixSS = false;
    private boolean mNeedIMSDereg = false;
    private boolean mAppendCountryCode = false;
    private boolean mSupportMediaTag = true;
    private boolean mPutWholeCLIR = false;
    private boolean mQueryWholeSimServ = false;
    private boolean mDisableEtag = false;
    private boolean mHttpErrToUnknownHostErr = false;
    private boolean mUseXCAPTypeApn = true;
    private boolean mUseInternetTypeApn = false;
    private boolean mNoReplyTimeInsideCFAction = false;
    private boolean mTimeSlot = false;
    private boolean mSaveWholeNode = false;
    private boolean mSetCFNRcWithCFNL = false;
    private boolean mNotSupportCFNotRegistered = false;
    private boolean mSupportPutCfRoot = true;
    private boolean mAttrNeedQuotationMark = false;
    private boolean mFwdNumUseSipUri = false;
    private String mElementContentType = null;
    private String mAUID = null;
    private String mXcapRoot = null;
    private Map mRuleId = null;
    private String mDigestId = null;
    private String mDigestPwd = null;
    private String mPhoneContext = null;
    private int mPort = 0;
    private int mMediaTagType = -1;
    private int mDataKeepAliveTimer = 0;
    private int mRequestDataTimer = 0;
    private int mDataCoolDownTimer = 0;
    private long mCacheValidTime = 0;

    private String propBoolIdxToString(int idx) {
        switch (idx) {
            case 0:
                return "PROP_BOOL_IDX_NOT_SUPPORT_XCAP";
            case 1:
                return "PROP_BOOL_IDX_USE_HTTP_PROTOCOL";
            case 2:
                return "PROP_BOOL_IDX_HANDLE_409";
            case 3:
                return "PROP_BOOL_IDX_FILL_FORWARD_TO";
            case 4:
                return "PROP_BOOL_IDX_XCAP_PREFIX_SS";
            case 5:
                return "PROP_BOOL_IDX_IMS_DEREG";
            case 6:
                return "PROP_BOOL_IDX_APPEND_COUNTRY_CODE";
            case 7:
                return "PROP_BOOL_IDX_MEDIA_TAG";
            case 8:
                return "PROP_BOOL_IDX_PUT_WHOLE_CLIR";
            case 9:
                return "PROP_BOOL_IDX_QUERY_WHOLE_SIMSERV";
            case 10:
                return "PROP_BOOL_IDX_DISABLE_ETAG";
            case 11:
                return "PROP_BOOL_IDX_HTTP_ERR_TO_UNKNOWN_HOST";
            case 12:
                return "PROP_BOOL_IDX_XCAP_APN";
            case 13:
                return "PROP_BOOL_IDX_INTERNET_APN";
            case 14:
                return "PROP_BOOL_IDX_NOREPLYTIMER_INSIDE_CFACTION";
            case 15:
                return "PROP_BOOL_IDX_SUPPORT_TIME_SLOT";
            case 16:
                return "PROP_BOOL_IDX_SAVE_WHOLE_NODE";
            case 17:
                return "PROP_BOOL_IDX_SET_CFNRC_WITH_CFNL";
            case 18:
                return "PROP_BOOL_IDX_NOT_SUPPORT_CFNL";
            case 19:
            default:
                return "NOT_FOUND";
            case 20:
                return "PROP_BOOL_IDX_ATTR_NEED_QUAOTATION_MARK";
            case 21:
                return "PROP_BOOL_IDX_FWD_NUM_USE_SIP_URI";
        }
    }

    private String propStrIdxToString(int idx) {
        switch (idx) {
            case 0:
                return "PROP_STR_IDX_ELEMENT_CONTENT_TYPE";
            case 1:
                return "PROP_STR_IDX_AUID";
            case 2:
                return "PROP_STR_IDX_XCAP_ROOT";
            case 3:
                return "PROP_STR_IDX_RULEID_CFU";
            case 4:
                return "PROP_STR_IDX_RULEID_CFB";
            case 5:
                return "PROP_STR_IDX_RULEID_CFNRY";
            case 6:
                return "PROP_STR_IDX_RULEID_CFNRC";
            case 7:
                return "PROP_STR_IDX_RULEID_CFNL";
            case 8:
                return "PROP_STR_IDX_DIGEST_ID";
            case 9:
                return "PROP_STR_IDX_DIGEST_PWD";
            case 10:
                return "PROP_STR_IDX_PHONE_CONTEXT";
            default:
                return "NOT_FOUND";
        }
    }

    private String propIntIdxToString(int idx) {
        switch (idx) {
            case 0:
                return "PROP_INT_IDX_XCAP_PORT";
            case 1:
                return "PROP_INT_IDX_MEDIA_TYPE";
            case 2:
                return "PROP_INT_IDX_DATA_KEEP_ALIVE_TIMER";
            case 3:
                return "PROP_INT_IDX_REQUEST_DATA_TIMER";
            case 4:
                return "PROP_INT_IDX_DATA_COOL_DOWN_TIMER";
            default:
                return "NOT_FOUND";
        }
    }

    private String propLongIdxToString(int idx) {
        if (idx != 0) {
            return "NOT_FOUND";
        }
        return "PROP_LONG_IDX_CACHE_VALID_TIME";
    }

    private SuppSrvConfig(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public static SuppSrvConfig getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new SuppSrvConfig(context);
        }
        return sInstance;
    }

    public void update(int phoneId) {
        updateResourceBySim(getMccMnc(phoneId));
        initAllPara();
    }

    private void initAllPara() {
        this.mNotSupportXcap = initParaBool(0, R.bool.conf_not_support_xcap);
        this.mHttpProtocolScheme = initParaBool(1, R.bool.conf_xcap_http);
        this.mHandleError409 = initParaBool(2, R.bool.conf_handle409);
        this.mFillCompleteForwardTo = initParaBool(3, R.bool.conf_fill_complete_forward_to);
        this.mXcapNsPrefixSS = initParaBool(4, R.bool.conf_xcap_nsprefixss);
        this.mNeedIMSDereg = initParaBool(5, R.bool.conf_imsdereg);
        this.mAppendCountryCode = initParaBool(6, R.bool.conf_append_countrycode);
        this.mSupportMediaTag = initParaBool(7, R.bool.conf_mediatag);
        this.mPutWholeCLIR = initParaBool(8, R.bool.conf_putwholeclir);
        this.mQueryWholeSimServ = initParaBool(9, R.bool.conf_querywholesimserv);
        this.mDisableEtag = initParaBool(10, R.bool.conf_disable_etag);
        this.mHttpErrToUnknownHostErr = initParaBool(11, R.bool.conf_httperr_to_unknownhost);
        this.mUseXCAPTypeApn = initParaBool(12, R.bool.conf_use_xcap_apn);
        this.mUseInternetTypeApn = initParaBool(13, R.bool.conf_use_internet_apn);
        this.mNoReplyTimeInsideCFAction = initParaBool(14, R.bool.conf_noreplytimer_inside_cf);
        this.mTimeSlot = initParaBool(15, R.bool.conf_support_time_slot);
        this.mSaveWholeNode = initParaBool(16, R.bool.conf_save_whole_node);
        this.mSetCFNRcWithCFNL = initParaBool(17, R.bool.conf_set_cfnrc_with_cfnl);
        this.mNotSupportCFNotRegistered = initParaBool(18, R.bool.conf_not_support_cfnl);
        this.mSupportPutCfRoot = initParaBool(19, R.bool.conf_support_put_cf_root);
        this.mAttrNeedQuotationMark = initParaBool(20, R.bool.conf_attr_need_quaotation_mark);
        this.mFwdNumUseSipUri = initParaBool(21, R.bool.conf_fwd_num_use_sip_uri);
        this.mElementContentType = initParaString(0, R.string.conf_eleupdatetype);
        this.mAUID = initParaString(1, R.string.conf_auid);
        this.mXcapRoot = initParaString(2, R.string.conf_xcap_root);
        initRuleId();
        this.mDigestId = initParaString(8, R.string.conf_digest_id);
        this.mDigestPwd = initParaString(9, R.string.conf_digest_pwd);
        this.mPhoneContext = initParaString(10, R.string.conf_phone_context);
        this.mPort = initParaInteger(0, R.integer.conf_xcap_port);
        this.mMediaTagType = initParaInteger(1, R.integer.conf_mediatag_type);
        this.mDataKeepAliveTimer = initParaInteger(2, R.integer.conf_data_keep_alive_timer);
        this.mRequestDataTimer = initParaInteger(3, R.integer.conf_request_data_timer);
        this.mDataCoolDownTimer = initParaInteger(4, R.integer.conf_data_cool_down_timer);
        this.mCacheValidTime = initParaLong(0, R.string.conf_cache_value_time);
    }

    private boolean initParaBool(int idx, int res) {
        boolean r;
        int prop = getSysPropForBool(idx);
        if (prop != -1) {
            r = true;
            if (prop != 1) {
                r = false;
            }
        } else {
            r = this.mContext.getResources().getBoolean(res);
        }
        Rlog.i(LOG_TAG, "initParaBool: " + propBoolIdxToString(idx) + " = " + r);
        return r;
    }

    private String initParaString(int idx, int res) {
        String r = getSysPropForString(idx);
        if (r == null || r.isEmpty()) {
            r = this.mContext.getResources().getString(res);
        }
        Rlog.i(LOG_TAG, "initParaString: " + propStrIdxToString(idx) + " = " + r);
        return r;
    }

    private int initParaInteger(int idx, int res) {
        int r = getSysPropForInteger(idx);
        if (r == -1) {
            r = this.mContext.getResources().getInteger(res);
        }
        Rlog.i(LOG_TAG, "initParaInteger: " + propIntIdxToString(idx) + " = " + r);
        return r;
    }

    private long initParaLong(int idx, int res) {
        long r = getSysPropForLong(idx);
        if (r == -1) {
            String longString = this.mContext.getResources().getString(res);
            r = Long.parseLong(longString);
        }
        Rlog.i(LOG_TAG, "initParaLong: " + propLongIdxToString(idx) + " = " + r);
        return r;
    }

    private void updateResourceBySim(String mncmcc) {
        Rlog.d(LOG_TAG, "updateResourceBySim: " + mncmcc);
        if (mncmcc != null && !mncmcc.isEmpty()) {
            Configuration config = this.mContext.getResources().getConfiguration();
            int mcc = Integer.valueOf(mncmcc.substring(0, 3)).intValue();
            int mnc = Integer.valueOf(mncmcc.substring(3)).intValue();
            config.mcc = mcc;
            config.mnc = mnc == 0 ? 65535 : mnc;
            Rlog.d(LOG_TAG, "Config mcc : " + config.mcc + ", mnc = " + config.mnc);
            this.mContext.getResources().updateConfiguration(config, this.mContext.getResources().getDisplayMetrics());
        }
    }

    private int getSysPropForBool(int idx) {
        int r = -1;
        if (idx > -1) {
            r = 0;
            int which = SystemProperties.getInt(SYS_PROP_BOOL_CONFIG, 0);
            if (which > 0 && ((1 << idx) & which) != 0) {
                int value = SystemProperties.getInt(SYS_PROP_BOOL_VALUE, 0);
                if (((1 << idx) & value) != 0) {
                    r = 1;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("getSysPropForBool: ");
                sb.append(propBoolIdxToString(idx));
                sb.append("=");
                sb.append(r == 1 ? "TRUE" : "FALSE");
                Rlog.i(LOG_TAG, sb.toString());
            }
        }
        return r;
    }

    private String getSysPropForString(int idx) {
        String r = null;
        switch (idx) {
            case 0:
                r = SystemProperties.get(SYS_PROP_CONTENT_TYPE);
                break;
            case 1:
                r = SystemProperties.get(SYS_PROP_AUID);
                break;
            case 2:
                r = SystemProperties.get(SYS_PROP_XCAP_ROOT);
                break;
            case 3:
                r = SystemProperties.get(SYS_PROP_RULEID_CFU);
                break;
            case 4:
                r = SystemProperties.get(SYS_PROP_RULEID_CFB);
                break;
            case 5:
                r = SystemProperties.get(SYS_PROP_RULEID_CFNRY);
                break;
            case 6:
                r = SystemProperties.get(SYS_PROP_RULEID_CFNRC);
                break;
            case 7:
                r = SystemProperties.get(SYS_PROP_RULEID_CFNL);
                break;
        }
        Rlog.i(LOG_TAG, "getSysPropForString: " + propStrIdxToString(idx) + "=" + r);
        return r;
    }

    private int getSysPropForInteger(int idx) {
        int r = -1;
        switch (idx) {
            case 0:
                r = SystemProperties.getInt(SYS_PROP_XCAP_PORT, -1);
                break;
            case 1:
                r = SystemProperties.getInt(SYS_PROP_MEDIA_TYPE, -1);
                break;
            case 2:
                r = SystemProperties.getInt(SYS_PROP_DATA_KEEP_ALIVE_TIMER, -1);
                break;
            case 3:
                r = SystemProperties.getInt(SYS_PROP_REQUEST_DATA_TIMER, -1);
                break;
            case 4:
                r = SystemProperties.getInt(SYS_PROP_DATA_COOL_DOWN_TIMER, -1);
                break;
        }
        Rlog.i(LOG_TAG, "getSysPropForInteger: " + propIntIdxToString(idx) + "=" + r);
        return r;
    }

    private long getSysPropForLong(int idx) {
        long r = -1;
        if (idx == 0) {
            r = SystemProperties.getLong(SYS_PROP_CACHE_VALID_TIME, -1L);
        }
        Rlog.i(LOG_TAG, "getSysPropForInteger: " + propLongIdxToString(idx) + "=" + r);
        return r;
    }

    private String getMccMnc(int phoneId) {
        return TelephonyManager.getDefault().getSimOperatorNumericForPhone(phoneId);
    }

    public boolean isNotSupportXcap() {
        return this.mNotSupportXcap;
    }

    public boolean isUseHttpProtocolScheme() {
        return this.mHttpProtocolScheme;
    }

    public String getElementContentType() {
        return this.mElementContentType;
    }

    public boolean isHandleError409() {
        return this.mHandleError409;
    }

    public boolean isFillCompleteForwardTo() {
        return this.mFillCompleteForwardTo;
    }

    public boolean isXcapNsPrefixSS() {
        return this.mXcapNsPrefixSS;
    }

    public String getAUID() {
        return this.mAUID;
    }

    public String getXcapRoot() {
        return this.mXcapRoot;
    }

    public int getPort() {
        return this.mPort;
    }

    public boolean isNeedIMSDereg() {
        return this.mNeedIMSDereg;
    }

    public boolean isAppendCountryCode() {
        return this.mAppendCountryCode;
    }

    private void initRuleId() {
        String cfu = initParaString(3, R.string.conf_ruleid_cfu);
        String cfb = initParaString(4, R.string.conf_ruleid_cfb);
        String cfnry = initParaString(5, R.string.conf_ruleid_cfnry);
        String cfnrc = initParaString(6, R.string.conf_ruleid_cfnrc);
        String cfnl = initParaString(7, R.string.conf_ruleid_cfnl);
        this.mRuleId = new HashMap();
        this.mRuleId.put(RULEID_CFU, cfu);
        this.mRuleId.put(RULEID_CFB, cfb);
        this.mRuleId.put(RULEID_CFNRy, cfnry);
        this.mRuleId.put(RULEID_CFNRc, cfnrc);
        this.mRuleId.put(RULEID_CFNL, cfnl);
    }

    public Map getRuleId() {
        return this.mRuleId;
    }

    public String getDigestId() {
        return this.mDigestId;
    }

    public String getDigestPwd() {
        return this.mDigestPwd;
    }

    public String getPhoneContext() {
        return this.mPhoneContext;
    }

    public int getMediaTagType() {
        return this.mMediaTagType;
    }

    public boolean isSupportMediaTag() {
        return this.mSupportMediaTag;
    }

    public boolean isPutWholeCLIR() {
        return this.mPutWholeCLIR;
    }

    public boolean isQueryWholeSimServ() {
        return this.mQueryWholeSimServ;
    }

    public boolean isDisableEtag() {
        return this.mDisableEtag;
    }

    public boolean isSaveWholeNode() {
        return this.mSaveWholeNode;
    }

    public boolean isSetCFNRcWithCFNL() {
        return this.mSetCFNRcWithCFNL;
    }

    public int getDataKeepAliveTimer() {
        return this.mDataKeepAliveTimer;
    }

    public int getRequestDataTimer() {
        return this.mRequestDataTimer;
    }

    public int getDataCoolDownTimer() {
        return this.mDataCoolDownTimer;
    }

    public long getCacheValidTime() {
        return this.mCacheValidTime;
    }

    public boolean isHttpErrToUnknownHostErr() {
        return this.mHttpErrToUnknownHostErr;
    }

    public boolean isUseXCAPTypeApn() {
        return this.mUseXCAPTypeApn;
    }

    public boolean isUseInternetTypeApn() {
        return this.mUseInternetTypeApn;
    }

    public boolean isNoReplyTimeInsideCFAction() {
        return this.mNoReplyTimeInsideCFAction;
    }

    public boolean isSupportTimeSlot() {
        return this.mTimeSlot;
    }

    public boolean isNotSupportCFNotRegistered() {
        return this.mNotSupportCFNotRegistered;
    }

    public boolean isSupportPutCfRoot() {
        return this.mSupportPutCfRoot;
    }

    public boolean isAttrNeedQuotationMark() {
        return this.mAttrNeedQuotationMark;
    }

    public boolean isFwdNumUseSipUri() {
        return this.mFwdNumUseSipUri;
    }
}
