package com.mediatek.internal.telephony;

import com.android.internal.telephony.CallFailCause;
/* loaded from: classes.dex */
public interface MtkCallFailCause extends CallFailCause {
    public static final int ACCESS_INFORMATION_DISCARDED = 43;
    public static final int BEARER_NOT_AUTHORIZED = 57;
    public static final int BEARER_NOT_IMPLEMENT = 65;
    public static final int CALL_REJECTED = 21;
    public static final int CHANNEL_UNACCEPTABLE = 6;
    public static final int CM_MM_RR_CONNECTION_RELEASE = 2165;
    public static final int CONDITIONAL_IE_ERROR = 100;
    public static final int DESTINATION_OUT_OF_ORDER = 27;
    public static final int FACILITY_NOT_IMPLEMENT = 69;
    public static final int FACILITY_REJECTED = 29;
    public static final int IE_NON_EXISTENT_OR_NOT_IMPLEMENTED = 99;
    public static final int IMEI_NOT_ACCEPTED = 243;
    public static final int IMS_EMERGENCY_REREG = 380;
    public static final int INCOMING_CALL_BARRED_WITHIN_CUG = 55;
    public static final int INCOMPATIBLE_DESTINATION = 88;
    public static final int INTERWORKING_UNSPECIFIED = 127;
    public static final int INVALID_MANDATORY_INFORMATION = 96;
    public static final int INVALID_NUMBER_FORMAT = 28;
    public static final int INVALID_TRANSACTION_ID_VALUE = 81;
    public static final int INVALID_TRANSIT_NETWORK_SELECTION = 91;
    public static final int MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE = 101;
    public static final int MESSAGE_TYPE_NON_EXISTENT = 97;
    public static final int MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROT_STATE = 98;
    public static final int NETWORK_OUT_OF_ORDER = 38;
    public static final int NON_SELECTED_USER_CLEARING = 26;
    public static final int NO_ROUTE_TO_DESTINATION = 3;
    public static final int NO_USER_RESPONDING = 18;
    public static final int OPERATOR_DETERMINED_BARRING = 8;
    public static final int OPTION_NOT_AVAILABLE = 79;
    public static final int PRE_EMPTION = 25;
    public static final int PROTOCOL_ERROR_UNSPECIFIED = 111;
    public static final int RECOVERY_ON_TIMER_EXPIRY = 102;
    public static final int REQUESTED_FACILITY_NOT_SUBSCRIBED = 50;
    public static final int RESOURCE_UNAVAILABLE = 47;
    public static final int RESTRICTED_BEARER_AVAILABLE = 70;
    public static final int SEMANTICALLY_INCORRECT_MESSAGE = 95;
    public static final int SERVICE_NOT_AVAILABLE = 63;
    public static final int USER_ALERTING_NO_ANSWER = 19;
    public static final int USER_NOT_MEMBER_OF_CUG = 87;
}
