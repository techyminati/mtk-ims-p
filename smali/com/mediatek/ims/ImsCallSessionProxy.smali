.class public Lcom/mediatek/ims/ImsCallSessionProxy;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;,
        Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;,
        Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;,
        Lcom/mediatek/ims/ImsCallSessionProxy$User;,
        Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallLogLevel;,
        Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallProfileEx;,
        Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    }
.end annotation


# static fields
.field private static final AMR_NB:I = 0x6

.field private static final AMR_WB:I = 0x7

.field public static final CALL_INFO_MSG_TYPE_ACTIVE:I = 0x84

.field public static final CALL_INFO_MSG_TYPE_ALERT:I = 0x2

.field public static final CALL_INFO_MSG_TYPE_CONNECTED:I = 0x6

.field public static final CALL_INFO_MSG_TYPE_DISCONNECTED:I = 0x85

.field public static final CALL_INFO_MSG_TYPE_HELD:I = 0x83

.field public static final CALL_INFO_MSG_TYPE_MO_CALL_ID_ASSIGN:I = 0x82

.field public static final CALL_INFO_MSG_TYPE_REMOTE_HOLD:I = 0x87

.field public static final CALL_INFO_MSG_TYPE_REMOTE_RESUME:I = 0x88

.field public static final CALL_INFO_MSG_TYPE_SETUP:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_ACCEPT_RESULT:I = 0xca

.field private static final EVENT_ADD_CONFERENCE_RESULT:I = 0xce

.field private static final EVENT_CALL_INFO_INDICATION:I = 0x66

.field private static final EVENT_CALL_MODE_CHANGE_INDICATION:I = 0x6a

.field private static final EVENT_CANCEL_USSI_COMPLETE:I = 0xd6

.field private static final EVENT_DEVICE_SWITCH_REPONSE:I = 0xde

.field private static final EVENT_DIAL_CONFERENCE_RESULT:I = 0xd1

.field private static final EVENT_DIAL_FROM_RESULT:I = 0xdd

.field private static final EVENT_DIAL_RESULT:I = 0xc9

.field private static final EVENT_DTMF_DONE:I = 0xd4

.field private static final EVENT_ECONF_RESULT_INDICATION:I = 0x68

.field private static final EVENT_ECT_RESULT:I = 0xd7

.field private static final EVENT_ECT_RESULT_INDICATION:I = 0x6d

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x69

.field private static final EVENT_GTT_CAPABILITY_INDICATION:I = 0x6e

.field private static final EVENT_HOLD_RESULT:I = 0xcb

.field private static final EVENT_IMS_CONFERENCE_INDICATION:I = 0x6f

.field private static final EVENT_MERGE_RESULT:I = 0xcd

.field private static final EVENT_ON_USSI:I = 0x6c

.field private static final EVENT_POLL_CALLS_RESULT:I = 0x65

.field private static final EVENT_PULL_CALL_RESULT:I = 0xd8

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd9

.field private static final EVENT_REDIAL_ECC_INDICATION:I = 0xe0

.field private static final EVENT_REMOVE_CONFERENCE_RESULT:I = 0xcf

.field private static final EVENT_RESUME_RESULT:I = 0xcc

.field private static final EVENT_RETRIEVE_MERGE_FAIL_RESULT:I = 0xd3

.field private static final EVENT_RTT_MODIFY_REQUEST_RECEIVE:I = 0xdc

.field private static final EVENT_RTT_MODIFY_RESPONSE:I = 0xdb

.field private static final EVENT_RTT_TEXT_RECEIVE_INDICATION:I = 0xda

.field private static final EVENT_SEND_USSI_COMPLETE:I = 0xd5

.field private static final EVENT_SIP_CODE_INDICATION:I = 0xd0

.field private static final EVENT_SPEECH_CODEC_INFO:I = 0xdf

.field private static final EVENT_SWAP_BEFORE_MERGE_RESULT:I = 0xd2

.field private static final EVENT_VIDEO_CAPABILITY_INDICATION:I = 0x6b

.field private static final EVRC:I = 0x2

.field private static final EVRC_B:I = 0x3

.field private static final EVRC_NW:I = 0x5

.field private static final EVRC_WB:I = 0x4

.field private static final EVS_AWB:I = 0x21

.field private static final EVS_FB:I = 0x20

.field private static final EVS_NB:I = 0x17

.field private static final EVS_SW:I = 0x19

.field private static final EVS_WB:I = 0x18

.field public static final EXTRA_CALL_INFO_MESSAGE_TYPE:Ljava/lang/String; = "mediatek:callInfoMessageType"

.field public static final EXTRA_CALL_TYPE:Ljava/lang/String; = "mediatek:callType"

.field public static final EXTRA_EMERGENCY_CALL:Ljava/lang/String; = "mediatek:emergencyCall"

.field public static final EXTRA_INCOMING_CALL:Ljava/lang/String; = "mediatek:incomingCall"

.field public static final EXTRA_RAT_TYPE:Ljava/lang/String; = "mediatek:ratType"

.field private static final GSM_EFR:I = 0x8

.field private static final GSM_FR:I = 0x9

.field private static final GSM_HR:I = 0xa

.field private static final IMS_CALL_TYPE_LTE:I = 0x1

.field private static final IMS_CALL_TYPE_WIFI:I = 0x2

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionProxy"

.field private static final NA_PRIOR_CLIR_PREFIX:Ljava/lang/String; = "*82"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final QCELP13K:I = 0x1

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field private static final USER_ENTITY:Ljava/lang/String; = "user-entity"

.field private static final USSI_REQUEST:I = 0x1

.field private static final USSI_RESPONSE:I = 0x2

.field private static final VDBG:Z = false

.field private static final VIDEO_STATE_PAUSE:I = 0x0

.field private static final VIDEO_STATE_RECV_ONLY:I = 0x2

.field private static final VIDEO_STATE_SEND_ONLY:I = 0x1

.field private static final VIDEO_STATE_SEND_RECV:I = 0x3

.field private static final VT_PROVIDER_ID:Ljava/lang/String; = "video_provider_id"

.field private static final WFC_GET_CAUSE_FAILED:I = -0x1


# instance fields
.field private mBadRssiThreshould:I

.field private mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

.field private mCallId:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

.field private mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mContext:Landroid/content/Context;

.field private mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

.field private mDtmfMsg:Landroid/os/Message;

.field private mDtmfTarget:Landroid/os/Messenger;

.field private mEconfCount:I

.field private mEctMsg:Landroid/os/Message;

.field private mEctTarget:Landroid/os/Messenger;

.field private final mHandler:Landroid/os/Handler;

.field private mHangupCount:I

.field private mHasPendingDisconnect:Z

.field private mHasPendingMo:Z

.field private mHasTriedSelfActivation:Z

.field private mHaveUpdateConferenceWithMember:Z

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

.field private mIsAddRemoveParticipantsCommandOK:Z

.field private mIsEmergencyCall:Z

.field private mIsHideHoldDuringECT:Z

.field private mIsHideHoldEventDuringMerging:Z

.field private mIsIncomingCall:Z

.field private mIsMerging:Z

.field private mIsOnTerminated:Z

.field private mIsOneKeyConf:Z

.field private mLastSIPReasonHeader:Ljava/lang/String;

.field private mLastSipCode:I

.field private mLastSipMethod:I

.field private mListener:Landroid/telephony/ims/ImsCallSessionListener;

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMergeCallId:Ljava/lang/String;

.field private mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mMergedCallId:Ljava/lang/String;

.field private mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field public mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field private mNormalCallsMerge:Z

.field private mOneKeyparticipants:[Ljava/lang/String;

.field private mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

.field private mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

.field private mParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDisconnectReason:I

.field private mPendingParticipantInfo:[Ljava/lang/String;

.field private mPendingParticipantInfoIndex:I

.field private mPendingParticipantStatistics:I

.field private mPhoneId:I

.field private mRadioUnavailable:Z

.field private mRatType:I

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field protected mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

.field private mSelfAddressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceHandler:Landroid/os/Handler;

.field private mShouldUpdateAddressByPau:Z

.field private mSipSessionProgress:Z

.field private mState:I

.field private mTerminateReason:I

.field private mThreeWayMergeSucceeded:Z

.field private mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

.field private mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field private mVideoState:I

.field private mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

.field private mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

.field mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 129
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->SENLOG:Z

    .line 130
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "phoneId"    # I

    move-object v9, p0

    .line 529
    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 531
    const-string v0, "ImsCallSessionProxy() : ImsCallSessionProxy MO constructor"

    const/4 v1, 0x2

    invoke-direct {v9, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    .line 534
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 406
    move/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 142
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 145
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 146
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 147
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    .line 149
    iput v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 150
    iput v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 151
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 152
    const-string v1, ""

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 154
    const-string v1, ""

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 155
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 157
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 159
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    .line 161
    iput v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    .line 164
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHaveUpdateConferenceWithMember:Z

    .line 166
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    .line 172
    const/4 v1, 0x1

    iput v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 177
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v2

    iput-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 187
    const/4 v2, -0x1

    iput v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    .line 190
    iput v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    .line 192
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    .line 194
    const/4 v14, 0x0

    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 200
    sget-object v2, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 202
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 203
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    .line 209
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 212
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    .line 213
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    .line 215
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 216
    iput-boolean v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    .line 221
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    .line 222
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    .line 223
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    .line 225
    const/16 v2, -0x5a

    iput v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mBadRssiThreshould:I

    .line 227
    const/4 v15, 0x3

    iput v15, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    .line 240
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    .line 242
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    .line 246
    iput-boolean v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    .line 247
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 356
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    .line 390
    new-instance v1, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-direct {v1, v8, v14}, Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$1;)V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    .line 408
    iput v13, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 409
    iget v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 410
    move-object/from16 v7, p5

    iput-object v7, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    .line 411
    new-instance v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    .line 412
    move-object/from16 v6, p1

    iput-object v6, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 413
    iput-object v9, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 414
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    iget v2, v9, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v3, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 415
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    iget v2, v9, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v3, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 416
    move-object/from16 v5, p3

    iput-object v5, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 417
    iput-object v10, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 418
    iput-object v11, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 419
    iput-object v12, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSessionProxy() : RILAdapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "imsService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v8, v1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 427
    invoke-static {}, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->getInstance()Lcom/mediatek/ims/internal/op/OpImsServiceFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/internal/op/OpImsServiceFactory;->makeOpImsCallSessionProxy()Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    .line 428
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeDigitsUtil()Lcom/mediatek/ims/ext/DigitsUtil;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    .line 429
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeOpImsCallSessionProxy()Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    .line 432
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 435
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd0

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6d

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForEctResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6f

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsConfInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 443
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd9

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xdf

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 445
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe0

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsRedialEccInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    move-object v1, v8

    move-object v2, v6

    move-object v3, v7

    move v15, v4

    move-object v4, v8

    move-object v5, v11

    move-object v6, v10

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsExtSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    .line 451
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v1

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->registerForGttCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 453
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v1

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xdc

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->registerForRttModifyRequestReceive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 455
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v1

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xda

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->registerForRttTextReceive(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 457
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v1

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xdb

    invoke-interface {v1, v2, v3, v14}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->registerForRttModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 461
    const-string v1, "persist.vendor.vilte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    const-string v1, "ImsCallSessionProxy() : start new VTProvider"

    invoke-direct {v8, v1, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 465
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 468
    invoke-static {v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVtProvider()Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 469
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v3, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v4, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->bind(Lcom/mediatek/ims/internal/ImsVTProvider;II)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 473
    invoke-static {v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVtProvider()Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v1

    iput-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 475
    :goto_0
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V

    .line 477
    const-string v1, "ImsCallSessionProxy() : end new VTProvider"

    invoke-direct {v8, v1, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 479
    :cond_1
    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 480
    iput-boolean v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    .line 483
    :cond_2
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-interface {v0, v1, v2, v14}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setOnUSSI(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 488
    const-string v0, "wfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 489
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x5

    if-eqz v0, :cond_3

    .line 490
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v2

    iput-object v2, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 503
    move-object v2, v0

    goto :goto_3

    .line 492
    :cond_3
    const-string v2, "mwis"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 494
    .end local v0    # "b":Landroid/os/IBinder;
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_4

    .line 495
    :try_start_0
    invoke-static {v2}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_1

    .line 499
    :catch_0
    move-exception v0

    goto :goto_2

    .line 497
    :cond_4
    const-string v0, "ImsCallSessionProxy() : No MwiService exist"

    invoke-direct {v8, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_1
    goto :goto_3

    .line 499
    :goto_2
    nop

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsCallSessionProxy() : can\'t get MwiService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_7

    .line 505
    :try_start_1
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    if-nez v0, :cond_5

    .line 506
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-direct {v0, v8, v14}, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$1;)V

    iput-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    .line 508
    :cond_5
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v3, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-interface {v0, v3}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 511
    if-eqz v12, :cond_6

    .line 512
    const/4 v3, 0x3

    invoke-direct {v8, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 516
    :cond_6
    goto :goto_4

    .line 514
    :catch_1
    move-exception v0

    .line 515
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "ImsCallSessionProxy() : RemoteException ImsCallSessionProxy()"

    invoke-direct {v8, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 518
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_4
    iget-object v0, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(I)Z

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsCallSessionProxy() : [WFC]mRatType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 521
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 522
    iput-object v14, v8, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 523
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;ILcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I
    .param p9, "mtkImsCallSessionProxy"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 399
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 400
    iput-object p9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/DigitsUtil;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isAnsweredElsewhere(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->shouldNotifyCallDropByBadWifiQuality()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getWifiRssi()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mBadRssiThreshould:I

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVideoState:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallType(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->removeRemoteCallVideoCapability()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->event2String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendCallEventWithRat(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "x2"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method static synthetic access$3702(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return p1
.end method

.method static synthetic access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateIsIbt([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateVideoRingtone(II)V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyRemoteHeld()V

    return-void
.end method

.method static synthetic access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyRemoteResumed()V

    return-void
.end method

.method static synthetic access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingDisconnectReason:I

    return v0
.end method

.method static synthetic access$5400(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logEventResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return v0
.end method

.method static synthetic access$5708(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return v0
.end method

.method static synthetic access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    return v0
.end method

.method static synthetic access$5900(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    return v0
.end method

.method static synthetic access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    return v0
.end method

.method static synthetic access$6002(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    return p1
.end method

.method static synthetic access$6100(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->correctRemoteVideoCapabilityForVideoConference()V

    return-void
.end method

.method static synthetic access$6500(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/telephony/ims/ImsCallProfile;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Message;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    return v0
.end method

.method static synthetic access$7000(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleSpeechCodecInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->handleRedialEccIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return v0
.end method

.method static synthetic access$7302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return p1
.end method

.method static synthetic access$7308(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return v0
.end method

.method static synthetic access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeCompleted()V

    return-void
.end method

.method static synthetic access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Message;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHaveUpdateConferenceWithMember:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHaveUpdateConferenceWithMember:Z

    return p1
.end method

.method static synthetic access$7902(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfAddressList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfAddressList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # I

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateRat(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method private closeConferenceSession()V
    .locals 2

    .line 3166
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3167
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->close()V

    .line 3168
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    goto :goto_0

    .line 3169
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    .line 3170
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 3173
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3175
    :cond_1
    :goto_0
    return-void
.end method

.method private correctRemoteVideoCapabilityForVideoConference()V
    .locals 2

    .line 3239
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3240
    const-string v0, "correctRemoteVideoCapabilityForVideoConference() : Video conference, force set remote as Video Call"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3241
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x4

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3243
    :cond_0
    return-void
.end method

.method private createAospConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 10
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 3138
    new-instance v9, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v3, 0x0

    move-object v0, v9

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3142
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v0

    .line 3143
    .local v0, "confEvtListener":Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 3146
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 3147
    return-void
.end method

.method private createConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 1
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    .line 3108
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 3110
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createMtkConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    goto :goto_0

    .line 3113
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->createAospConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 3115
    :goto_0
    return-void
.end method

.method private createMtkConferenceSession(Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 20
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callId"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 3119
    new-instance v10, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v9, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v4, 0x0

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    iput-object v10, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 3122
    new-instance v1, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v12, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    const/4 v14, 0x0

    move-object v11, v1

    move-object/from16 v13, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, p2

    move/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 3126
    .local v1, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3127
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 3129
    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 3130
    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v2

    .line 3131
    .local v2, "confEvtListener":Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    move-object/from16 v6, p2

    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 3133
    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v4, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v4}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 3134
    return-void
.end method

.method private detailLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 3333
    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    if-nez v0, :cond_0

    .line 3334
    return-void

    .line 3336
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3337
    return-void
.end method

.method private event2String(I)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # I

    .line 3492
    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    .line 3493
    const-string v0, "EVENT_POLL_CALLS_RESULT"

    return-object v0

    .line 3494
    :cond_0
    const/16 v0, 0x66

    if-ne v0, p1, :cond_1

    .line 3495
    const-string v0, "EVENT_CALL_INFO_INDICATION"

    return-object v0

    .line 3496
    :cond_1
    const/16 v0, 0x68

    if-ne v0, p1, :cond_2

    .line 3497
    const-string v0, "EVENT_ECONF_RESULT_INDICATION"

    return-object v0

    .line 3498
    :cond_2
    const/16 v0, 0x69

    if-ne v0, p1, :cond_3

    .line 3499
    const-string v0, "EVENT_GET_LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 3500
    :cond_3
    const/16 v0, 0x6a

    if-ne v0, p1, :cond_4

    .line 3501
    const-string v0, "EVENT_CALL_MODE_CHANGE_INDICATION"

    return-object v0

    .line 3502
    :cond_4
    const/16 v0, 0x6b

    if-ne v0, p1, :cond_5

    .line 3503
    const-string v0, "EVENT_VIDEO_CAPABILITY_INDICATION"

    return-object v0

    .line 3504
    :cond_5
    const/16 v0, 0x6c

    if-ne v0, p1, :cond_6

    .line 3505
    const-string v0, "EVENT_ON_USSI"

    return-object v0

    .line 3506
    :cond_6
    const/16 v0, 0x6d

    if-ne v0, p1, :cond_7

    .line 3507
    const-string v0, "EVENT_ECT_RESULT_INDICATION"

    return-object v0

    .line 3508
    :cond_7
    const/16 v0, 0x6e

    if-ne v0, p1, :cond_8

    .line 3509
    const-string v0, "EVENT_GTT_CAPABILITY_INDICATION"

    return-object v0

    .line 3510
    :cond_8
    const/16 v0, 0x6f

    if-ne v0, p1, :cond_9

    .line 3511
    const-string v0, "EVENT_IMS_CONFERENCE_INDICATION"

    return-object v0

    .line 3512
    :cond_9
    const/16 v0, 0xc9

    if-ne v0, p1, :cond_a

    .line 3513
    const-string v0, "EVENT_DIAL_RESULT"

    return-object v0

    .line 3514
    :cond_a
    const/16 v0, 0xca

    if-ne v0, p1, :cond_b

    .line 3515
    const-string v0, "EVENT_ACCEPT_RESULT"

    return-object v0

    .line 3516
    :cond_b
    const/16 v0, 0xcb

    if-ne v0, p1, :cond_c

    .line 3517
    const-string v0, "EVENT_HOLD_RESULT"

    return-object v0

    .line 3518
    :cond_c
    const/16 v0, 0xcc

    if-ne v0, p1, :cond_d

    .line 3519
    const-string v0, "EVENT_RESUME_RESULT"

    return-object v0

    .line 3520
    :cond_d
    const/16 v0, 0xcd

    if-ne v0, p1, :cond_e

    .line 3521
    const-string v0, "EVENT_MERGE_RESULT"

    return-object v0

    .line 3522
    :cond_e
    const/16 v0, 0xce

    if-ne v0, p1, :cond_f

    .line 3523
    const-string v0, "EVENT_ADD_CONFERENCE_RESULT"

    return-object v0

    .line 3524
    :cond_f
    const/16 v0, 0xcf

    if-ne v0, p1, :cond_10

    .line 3525
    const-string v0, "EVENT_REMOVE_CONFERENCE_RESULT"

    return-object v0

    .line 3526
    :cond_10
    const/16 v0, 0xd0

    if-ne v0, p1, :cond_11

    .line 3527
    const-string v0, "EVENT_SIP_CODE_INDICATION"

    return-object v0

    .line 3528
    :cond_11
    const/16 v0, 0xd1

    if-ne v0, p1, :cond_12

    .line 3529
    const-string v0, "EVENT_DIAL_CONFERENCE_RESULT"

    return-object v0

    .line 3530
    :cond_12
    const/16 v0, 0xd2

    if-ne v0, p1, :cond_13

    .line 3531
    const-string v0, "EVENT_SWAP_BEFORE_MERGE_RESULT"

    return-object v0

    .line 3532
    :cond_13
    const/16 v0, 0xd3

    if-ne v0, p1, :cond_14

    .line 3533
    const-string v0, "EVENT_RETRIEVE_MERGE_FAIL_RESULT"

    return-object v0

    .line 3534
    :cond_14
    const/16 v0, 0xd4

    if-ne v0, p1, :cond_15

    .line 3535
    const-string v0, "EVENT_DTMF_DONE"

    return-object v0

    .line 3536
    :cond_15
    const/16 v0, 0xd5

    if-ne v0, p1, :cond_16

    .line 3537
    const-string v0, "EVENT_SEND_USSI_COMPLETE"

    return-object v0

    .line 3538
    :cond_16
    const/16 v0, 0xd6

    if-ne v0, p1, :cond_17

    .line 3539
    const-string v0, "EVENT_CANCEL_USSI_COMPLETE"

    return-object v0

    .line 3540
    :cond_17
    const/16 v0, 0xd7

    if-ne v0, p1, :cond_18

    .line 3541
    const-string v0, "EVENT_ECT_RESULT"

    return-object v0

    .line 3542
    :cond_18
    const/16 v0, 0xd8

    if-ne v0, p1, :cond_19

    .line 3543
    const-string v0, "EVENT_PULL_CALL_RESULT"

    return-object v0

    .line 3544
    :cond_19
    const/16 v0, 0xd9

    if-ne v0, p1, :cond_1a

    .line 3545
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 3546
    :cond_1a
    const/16 v0, 0xda

    if-ne v0, p1, :cond_1b

    .line 3547
    const-string v0, "EVENT_RTT_TEXT_RECEIVE_INDICATION"

    return-object v0

    .line 3548
    :cond_1b
    const/16 v0, 0xdb

    if-ne v0, p1, :cond_1c

    .line 3549
    const-string v0, "EVENT_RTT_MODIFY_RESPONSE"

    return-object v0

    .line 3550
    :cond_1c
    const/16 v0, 0xdc

    if-ne v0, p1, :cond_1d

    .line 3551
    const-string v0, "EVENT_RTT_MODIFY_REQUEST_RECEIVE"

    return-object v0

    .line 3552
    :cond_1d
    const/16 v0, 0xdd

    if-ne v0, p1, :cond_1e

    .line 3553
    const-string v0, "EVENT_DIAL_FROM_RESULT"

    return-object v0

    .line 3554
    :cond_1e
    const/16 v0, 0xde

    if-ne v0, p1, :cond_1f

    .line 3555
    const-string v0, "EVENT_DEVICE_SWITCH_REPONSE"

    return-object v0

    .line 3556
    :cond_1f
    const/16 v0, 0xdf

    if-ne v0, p1, :cond_20

    .line 3557
    const-string v0, "EVENT_SPEECH_CODEC_INFO"

    return-object v0

    .line 3559
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBooleanFromCarrierConfig(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 3198
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 3199
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 3200
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3201
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    nop

    .line 3202
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 3203
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3204
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanFromCarrierConfig() : key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3205
    return v3
.end method

.method private getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 3304
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3305
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3306
    .local v0, "confInfo":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 3307
    return-object p1

    .line 3309
    :cond_0
    const-string v1, "user-entity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3310
    .local v1, "participantUri":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3311
    :cond_1
    move-object v1, p1

    .line 3313
    .end local v0    # "confInfo":Landroid/os/Bundle;
    :cond_2
    goto :goto_0

    .line 3314
    .end local v1    # "participantUri":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/DefaultConferenceHandler;->getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "participantUri":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    .line 3317
    .end local v1    # "participantUri":Ljava/lang/String;
    .local v0, "participantUri":Ljava/lang/String;
    return-object v0
.end method

.method private getWifiRssi()I
    .locals 5

    .line 3231
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3232
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 3233
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    .line 3234
    .local v2, "rssi":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiRssi()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3235
    return v2
.end method

.method private handleRedialEccIndication(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3464
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "handleRedialEccIndication()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3474
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3475
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "handleRedialEccIndication() : Call established, ignore indication"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    return-void

    .line 3480
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 3481
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    aget-object v2, v0, v1

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3482
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->turnOffAirplaneMode()V

    goto :goto_0

    .line 3484
    :cond_2
    if-eqz v0, :cond_3

    aget-object v1, v0, v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3485
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->turnOffAirplaneMode()V

    .line 3486
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRedialEcc()V

    .line 3488
    :cond_3
    :goto_0
    return-void

    .line 3468
    .end local v0    # "result":[Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "handleRedialEccIndication() : ar or mMtkImsCallSessionProxy is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    return-void
.end method

.method private handleSpeechCodecInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3372
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3374
    .local v0, "codec":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSpeechCodecInfo() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3376
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 3438
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    goto/16 :goto_0

    .line 3434
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0x15

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3436
    goto/16 :goto_0

    .line 3430
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0x14

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3432
    goto/16 :goto_0

    .line 3426
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0x13

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3428
    goto :goto_0

    .line 3422
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0x12

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3424
    goto :goto_0

    .line 3418
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0x11

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3420
    goto :goto_0

    .line 3414
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0xa

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3416
    goto :goto_0

    .line 3410
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0x9

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3412
    goto :goto_0

    .line 3406
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/16 v2, 0x8

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3408
    goto :goto_0

    .line 3402
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3404
    goto :goto_0

    .line 3398
    :pswitch_9
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x1

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3400
    goto :goto_0

    .line 3394
    :pswitch_a
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x7

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3396
    goto :goto_0

    .line 3390
    :pswitch_b
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x6

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3392
    goto :goto_0

    .line 3386
    :pswitch_c
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x5

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3388
    goto :goto_0

    .line 3382
    :pswitch_d
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x4

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3384
    goto :goto_0

    .line 3378
    :pswitch_e
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x3

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 3380
    nop

    .line 3442
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionUpdated()V

    .line 3443
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAnsweredElsewhere(Ljava/lang/String;)Z
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .line 3284
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3285
    return v0

    .line 3288
    :cond_0
    const-string v1, "Call Completion Elsewhere"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3289
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call completed elsewhere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3292
    :cond_1
    return v0

    .line 3290
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isCallPull(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3056
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3059
    :cond_0
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "OemCallExtras"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3060
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 3061
    return v0

    .line 3063
    :cond_1
    const-string v2, "CallPull"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3064
    .local v0, "isCallPull":Z
    return v0

    .line 3057
    .end local v0    # "isCallPull":Z
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return v0
.end method

.method private isNeedRemoveVideoRingtone()Z
    .locals 3

    .line 2816
    const/4 v0, 0x0

    .line 2817
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2819
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, -0x1

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 2821
    const/4 v0, 0x1

    .line 2822
    const-string v1, "isNeedRemoveVideoRingtone()"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2824
    :cond_0
    return v0
.end method

.method private isUserPerfromedHangup()Z
    .locals 1

    .line 3209
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    if-lez v0, :cond_0

    .line 3210
    const/4 v0, 0x1

    return v0

    .line 3212
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3073
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3074
    return v0

    .line 3076
    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3078
    const/4 v0, 0x1

    return v0

    .line 3080
    :cond_1
    return v0
.end method

.method private logEventResult(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, " success"

    goto :goto_0

    :cond_0
    const-string v1, " failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3360
    return-void
.end method

.method private logWithCallId(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lvl"    # I

    .line 3343
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    if-eqz v0, :cond_0

    .line 3344
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3345
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 3346
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3347
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p2, :cond_2

    .line 3348
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3349
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p2, :cond_3

    .line 3350
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3351
    :cond_3
    const/4 v0, 0x5

    if-ne v0, p2, :cond_4

    .line 3352
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3354
    :cond_4
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :goto_0
    return-void
.end method

.method private mergeCompleted()V
    .locals 2

    .line 2828
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionMergeComplete()V

    .line 2829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 2830
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 2831
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    .line 2833
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getConferenceHostCall()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    .line 2834
    .local v0, "hostCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    if-eqz v0, :cond_0

    .line 2835
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->onAddParticipantComplete()V

    .line 2842
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2843
    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 2844
    return-void
.end method

.method private mergeFailed()V
    .locals 2

    .line 2847
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 2848
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2850
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 2851
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2852
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 2853
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 2856
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 2857
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->closeConferenceSession()V

    .line 2858
    return-void
.end method

.method private notifyCallSessionMergeComplete()V
    .locals 2

    .line 3178
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_1

    .line 3179
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    goto :goto_0

    .line 3182
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    goto :goto_0

    .line 3184
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_3

    .line 3185
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_2

    .line 3186
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    goto :goto_0

    .line 3190
    :cond_2
    const/4 v0, 0x0

    .line 3192
    .local v0, "newSession":Lcom/android/ims/internal/IImsCallSession;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 3195
    .end local v0    # "newSession":Lcom/android/ims/internal/IImsCallSession;
    :cond_3
    :goto_0
    return-void
.end method

.method private notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2941
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2942
    const-string v0, "notifyCallSessionTerminated() : mListener = NULL"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2943
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2944
    return-void

    .line 2947
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    const/16 v2, 0x1f5

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRadioUnavailable:Z

    if-eqz v0, :cond_2

    .line 2948
    :cond_1
    const-string v0, "notifyCallSessionTerminated() : close while merging"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2949
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 2952
    :cond_2
    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$1;->$SwitchMap$com$mediatek$ims$ImsCallSessionProxy$CallErrorState:[I

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2967
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_3

    .line 2971
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2972
    :catch_0
    move-exception v0

    .line 2973
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "RuntimeException callSessionTerminated()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2976
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2977
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_2

    .line 2954
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_3

    .line 2957
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2958
    :catch_1
    move-exception v0

    .line 2959
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v2, "RuntimeException callSessionInitiatedFailed()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2962
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2963
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .line 2984
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyCallSessionUpdated()V
    .locals 2

    .line 3017
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-nez v0, :cond_0

    .line 3018
    return-void

    .line 3020
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3021
    return-void
.end method

.method private notifyRemoteHeld()V
    .locals 2

    .line 3005
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3008
    :cond_0
    return-void
.end method

.method private notifyRemoteResumed()V
    .locals 2

    .line 3011
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3014
    :cond_0
    return-void
.end method

.method private pullCall(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3068
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3069
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->pullCall(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 3070
    return-void
.end method

.method private rejectDial()V
    .locals 2

    .line 3297
    const-string v0, "rejectDial()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3298
    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 3299
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3300
    return-void
.end method

.method private removeRemoteCallVideoCapability()V
    .locals 2

    .line 3246
    const-string v0, "removeRemoteCallVideoCapability()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3247
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3248
    return-void
.end method

.method private sendCallEventWithRat(I)V
    .locals 3
    .param p1, "msgType"    # I

    .line 3322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3323
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "mediatek:callInfoMessageType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3324
    const-string v1, "mediatek:callType"

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3325
    const-string v1, "mediatek:ratType"

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3326
    const-string v1, "mediatek:incomingCall"

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsIncomingCall:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3327
    const-string v1, "mediatek:emergencyCall"

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3328
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->sendCallEventWithRat(Landroid/os/Bundle;)V

    .line 3329
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 3363
    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->SENLOG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/ims/ImsCallSessionProxy;->TELDBG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3366
    :cond_0
    const-string v0, "[hidden]"

    return-object v0

    .line 3364
    :cond_1
    :goto_0
    return-object p1
.end method

.method private shouldNotifyCallDropByBadWifiQuality()Z
    .locals 3

    .line 3216
    const-string v0, "mtk_carrier_notify_bad_wifi_quality_disconnect_cause"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    .line 3218
    .local v0, "notifyWifiQualityDisconnectCause":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldNotifyCallDropByBadWifiQuality() :  carrier =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isUserPerfromedHangup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3220
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3218
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3222
    if-eqz v0, :cond_0

    .line 3223
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isUserPerfromedHangup()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    if-ne v1, v2, :cond_0

    .line 3225
    const/4 v1, 0x1

    return v1

    .line 3227
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private terminateConferenceSession()V
    .locals 3

    .line 3150
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/16 v1, 0x66

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 3151
    const-string v0, "terminateConferenceSession() : Hangup Conference: Hangup host while merging (mtk)"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3152
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkConfSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 3153
    .local v0, "confSession":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->terminate(I)V

    .line 3154
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 3155
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3156
    .end local v0    # "confSession":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    .line 3157
    const-string v0, "terminateConferenceSession() : Hangup Conference: Hangup host while merging (aosp)"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3158
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3159
    .local v0, "confSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 3160
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 3161
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3163
    .end local v0    # "confSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    :cond_1
    :goto_0
    return-void
.end method

.method private tryTurnOnVolteForE911(Z)V
    .locals 3
    .param p1, "isEmergencyNumber"    # Z

    .line 3587
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 3588
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3589
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3590
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 3591
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVolteForImsEcc(Z)V

    .line 3593
    :cond_0
    return-void
.end method

.method private turnOffAirplaneMode()V
    .locals 3

    .line 3446
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "turnOffAirplaneMode()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3450
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "turnOffAirplaneMode() : Turning off airplane mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3457
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3458
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3460
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateCallStateForWifiOffload(I)V
    .locals 6
    .param p1, "callState"    # I

    .line 2890
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2891
    const-string v0, "updateCallStateForWifiOffload() : skip, no WOS!"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2892
    return-void

    .line 2895
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2896
    const-string v0, "updateCallStateForWifiOffload() : skip, no call ID!"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2897
    return-void

    .line 2900
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2901
    .local v0, "callId":I
    const/4 v2, 0x1

    .line 2903
    .local v2, "callType":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 2907
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 2905
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 2911
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 2928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallStateForWifiOffload() : skip, unexpected state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2930
    return-void

    .line 2920
    :pswitch_0
    const/4 v1, 0x1

    .line 2921
    .local v1, "wosCallState":I
    goto :goto_2

    .line 2917
    .end local v1    # "wosCallState":I
    :pswitch_1
    const/4 v1, 0x2

    .line 2918
    .restart local v1    # "wosCallState":I
    goto :goto_2

    .line 2925
    .end local v1    # "wosCallState":I
    :pswitch_2
    const/4 v1, 0x0

    .line 2926
    .restart local v1    # "wosCallState":I
    nop

    .line 2930
    :goto_2
    nop

    .line 2934
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-interface {v3, v4, v0, v2, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->updateCallState(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2937
    goto :goto_3

    .line 2935
    :catch_0
    move-exception v3

    .line 2936
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "updateCallStateForWifiOffload() : RemoteException in Wos.updateCallState()"

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2938
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateCallType(II)V
    .locals 3
    .param p1, "callMode"    # I
    .param p2, "videoState"    # I

    .line 3251
    const/4 v0, 0x2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    const/16 v1, 0x17

    if-eq p1, v1, :cond_2

    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3275
    :cond_0
    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_3

    .line 3277
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3278
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VOICE"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    goto :goto_1

    .line 3253
    :cond_2
    :goto_0
    const/4 v1, 0x4

    packed-switch p2, :pswitch_data_0

    .line 3271
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3272
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VT"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3273
    goto :goto_1

    .line 3267
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3268
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VT"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3269
    goto :goto_1

    .line 3263
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x6

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3264
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VT_RX"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3265
    goto :goto_1

    .line 3259
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x5

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3260
    const-string v1, "updateCallType() : mCallType = CALL_TYPE_VT_TX"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3261
    goto :goto_1

    .line 3257
    :pswitch_3
    nop

    .line 3280
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3281
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateIsIbt([Ljava/lang/String;)I
    .locals 4
    .param p1, "callInfo"    # [Ljava/lang/String;

    .line 3090
    const/4 v0, 0x1

    .line 3092
    .local v0, "isIbt":I
    const/4 v1, 0x2

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 3093
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3095
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIsIbt() : isIbt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 3097
    if-nez v0, :cond_1

    .line 3098
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    goto :goto_0

    .line 3101
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x1

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 3104
    :goto_0
    return v0
.end method

.method private updateRat(I)Z
    .locals 5
    .param p1, "ratType"    # I

    .line 2988
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2989
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "radioTech":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2990
    .end local v2    # "radioTech":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 2991
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2993
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2995
    .restart local v2    # "radioTech":Ljava/lang/String;
    :goto_1
    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "CallRadioTech"

    .line 2996
    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2997
    return v0

    .line 2999
    :cond_2
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 3000
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    invoke-virtual {v0, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    return v1
.end method

.method private updateShouldUpdateAddressByPau()V
    .locals 1

    .line 3085
    const-string v0, "mtk_carrier_update_dialing_address_from_pau"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mShouldUpdateAddressByPau:Z

    .line 3087
    return-void
.end method

.method private updateVideoRingtone(II)V
    .locals 3
    .param p1, "ringCallMode"    # I
    .param p2, "isIbt"    # I

    .line 2792
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP01:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "persist.vendor.vilte_support"

    .line 2793
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2795
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2797
    .local v0, "callType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoRingtone() : callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 2799
    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2809
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .end local v0    # "callType":I
    goto :goto_1

    .line 2801
    .restart local v0    # "callType":I
    :cond_1
    :goto_0
    const/16 v1, 0x15

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 2802
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_1

    .line 2805
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 2813
    .end local v0    # "callType":I
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 6
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept() : original call Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "accept as:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 759
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "dialstring"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 761
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "m"

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "n"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, "n":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "str"

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accept() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 767
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 770
    :cond_0
    return-void

    .line 774
    .end local v0    # "m":Ljava/lang/String;
    .end local v2    # "n":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v0, v1, :cond_2

    .line 775
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->accept()V

    goto :goto_1

    .line 785
    :cond_2
    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 799
    goto :goto_0

    .line 793
    :pswitch_0
    const/4 v3, 0x2

    .line 794
    .local v3, "videoMode":I
    goto :goto_0

    .line 796
    .end local v3    # "videoMode":I
    :pswitch_1
    const/4 v3, 0x3

    .line 797
    .restart local v3    # "videoMode":I
    goto :goto_0

    .line 787
    .end local v3    # "videoMode":I
    :pswitch_2
    const/4 v3, 0x0

    .line 788
    .restart local v3    # "videoMode":I
    goto :goto_0

    .line 790
    .end local v3    # "videoMode":I
    :cond_3
    const/4 v3, 0x1

    .line 791
    .restart local v3    # "videoMode":I
    nop

    .line 799
    :goto_0
    move v0, v3

    .line 802
    .end local v3    # "videoMode":I
    .local v0, "videoMode":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acceptVideoCall(II)V

    .line 804
    .end local v0    # "videoMode":I
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public callTerminated()V
    .locals 10

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callTerminated() : mCallNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->detailLog(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 1133
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v0

    .line 1139
    .local v0, "serviceId":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    iget-boolean v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSipSessionProgress:Z

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    move v7, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->broadcastForNotRingingMtIfRequired(ZIILjava/lang/String;Landroid/content/Context;)V

    .line 1141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 1142
    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 1143
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    if-eqz v1, :cond_2

    .line 1144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 1145
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_0

    .line 1147
    :cond_2
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 1149
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_3

    .line 1150
    const-string v1, "callTerminated() : get disconnect cause directly from +ESIPCPI"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1151
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->notifyCallSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 1153
    :cond_3
    const-string v1, "callTerminated() : get disconnect cause from AT+CEER"

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1154
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1155
    .local v1, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-interface {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getLastCallFailCause(ILandroid/os/Message;)V

    .line 1159
    .end local v1    # "result":Landroid/os/Message;
    :goto_1
    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V

    .line 1160
    return-void

    .line 1135
    .end local v0    # "serviceId":I
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callTerminated() : mState is INVALID, return: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1136
    return-void
.end method

.method cancelDeviceSwitch()V
    .locals 2

    .line 1007
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->cancelDeviceSwitch(Ljava/lang/Object;)V

    .line 1008
    return-void
.end method

.method public close()V
    .locals 5

    .line 539
    const-string v0, "close() : ImsCallSessionProxy is closed!!! "

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 542
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 543
    const-string v0, "close() : ImsCallSessionProxy already closed"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 544
    return-void

    .line 546
    :cond_0
    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 547
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->removeCallConnection(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 549
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForEconfResult(Landroid/os/Handler;)V

    .line 550
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallProgressIndicator(Landroid/os/Handler;)V

    .line 551
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V

    .line 552
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V

    .line 553
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForEctResult(Landroid/os/Handler;)V

    .line 555
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 556
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForSpeechCodecInfo(Landroid/os/Handler;)V

    .line 557
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsRedialEccInd(Landroid/os/Handler;)V

    .line 560
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->unregisterForGttCapabilityIndicator(Landroid/os/Handler;)V

    .line 561
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->unregisterForRttModifyResponse(Landroid/os/Handler;)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->unregisterForRttTextReceive(Landroid/os/Handler;)V

    .line 563
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getOpCommandsInterface()Lcom/mediatek/ims/ril/OpImsCommandsInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/OpImsCommandsInterface;->unregisterForRttModifyRequestReceive(Landroid/os/Handler;)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unSetOnUSSI(Landroid/os/Handler;)V

    .line 568
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsConfInfoUpdate(Landroid/os/Handler;)V

    .line 569
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 571
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    .line 573
    .local v0, "vtProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 574
    const-string v3, "close() : Start VtProvider setUIMode"

    invoke-direct {p0, v3, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 576
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setUIMode(Lcom/mediatek/ims/internal/ImsVTProvider;I)V

    .line 577
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVtProviderListener:Lcom/mediatek/ims/ImsCallSessionProxy$VtProviderListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V

    .line 578
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 581
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/DefaultConferenceHandler;->closeConference(Ljava/lang/String;)V

    .line 582
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    .line 583
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    if-eqz v1, :cond_2

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWosListener:Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    invoke-interface {v1, v3}, Lcom/mediatek/wfo/IWifiOffloadService;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "close() : RemoteException when unregisterForHandoverEvent"

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 594
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    if-eqz v1, :cond_3

    .line 595
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    invoke-virtual {v1}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->close()V

    .line 596
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    .line 599
    :cond_3
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 600
    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 601
    return-void
.end method

.method deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 1002
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1003
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->deviceSwitch(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1004
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 991
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 992
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 993
    return-void
.end method

.method explicitCallTransferWithCallback(Landroid/os/Message;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "target"    # Landroid/os/Messenger;

    .line 984
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctMsg:Landroid/os/Message;

    .line 985
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEctTarget:Landroid/os/Messenger;

    .line 986
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->explicitCallTransfer()V

    .line 987
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 981
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    .locals 1

    .line 3024
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    if-nez v0, :cond_0

    .line 3025
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfEvtListener:Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    return-object v0
.end method

.method public getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
    .locals 2

    .line 3573
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory()Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v0

    .line 3574
    .local v0, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v1

    return-object v1
.end method

.method public getImsExtSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p4, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p5, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p6, "phoneId"    # I

    .line 3581
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory()Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v7

    .line 3582
    .local v7, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMtkCallSessionProxy()Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1

    .line 3564
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 625
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 630
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoCallProvider() : mVTProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1094
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 1097
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 858
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 859
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 860
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1013
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 1014
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 1015
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 1016
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteParticipants() : fail since no call ID or participants is null CallID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Participant number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1023
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 1024
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 1017
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 1027
    :cond_2
    :goto_1
    return-void
.end method

.method public isInCall()Z
    .locals 1

    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 3

    .line 1107
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "incoming_mpty"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isMultiparty()Z
    .locals 3

    .line 1103
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "mpty"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public merge()V
    .locals 9

    .line 871
    const-string v0, "merge()"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 872
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 873
    .local v0, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v2, 0x0

    .line 875
    .local v2, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string v3, "mtk_carrier_swap_conference_to_foreground_before_merge"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    .line 878
    .local v3, "needSwapConfToFg":Z
    const-string v4, "mtk_carrier_swap_vt_conference_to_foreground_before_merge"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v4

    .line 881
    .local v4, "needSwapVtConfToFg":Z
    const/4 v5, 0x5

    if-nez v0, :cond_0

    .line 882
    const-string v1, "merge() : can\'t find this call callInfo"

    invoke-direct {p0, v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 883
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 884
    return-void

    .line 887
    :cond_0
    iget-object v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v7, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v6, v7, :cond_1

    .line 888
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    sget-object v7, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    goto :goto_0

    .line 889
    :cond_1
    iget-object v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v7, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v6, v7, :cond_2

    .line 890
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    sget-object v7, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    .line 893
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 894
    const-string v1, "merge() : can\'t find another call\'s callInfo"

    invoke-direct {p0, v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 895
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 896
    return-void

    .line 899
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v5

    if-ne v5, v6, :cond_4

    .line 900
    move v3, v4

    .line 902
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "merge() : merge command- my call: conference type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " call status="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " beMergedCall: conference type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " call status="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " needSwapConfToFg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 907
    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 908
    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 909
    iget-object v5, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 910
    iget-object v5, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 912
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 914
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v5

    .line 916
    .local v5, "confHdler":Lcom/mediatek/ims/DefaultConferenceHandler;
    iget-boolean v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-nez v7, :cond_5

    iget-boolean v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-nez v7, :cond_5

    .line 918
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xcd

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 919
    .local v1, "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->merge(Landroid/os/Message;)V

    .line 920
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 921
    iput-boolean v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 923
    iget-object v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/ims/DefaultConferenceHandler;->firstMerge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 924
    .end local v1    # "result":Landroid/os/Message;
    :cond_5
    iget-boolean v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    const/16 v8, 0xce

    if-ne v7, v6, :cond_6

    iget-boolean v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-ne v7, v6, :cond_6

    .line 926
    const-string v6, "merge() : conference call merge conference call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 927
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 928
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    .line 930
    return-void

    .line 933
    .end local v1    # "result":Landroid/os/Message;
    :cond_6
    nop

    .line 934
    iget-boolean v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 933
    :goto_1
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 935
    if-nez v3, :cond_9

    .line 937
    iget-boolean v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v6, :cond_8

    .line 938
    const-string v6, "merge() : active conference call merge background normal call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 939
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 940
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 943
    .end local v1    # "result":Landroid/os/Message;
    :cond_8
    const-string v6, "merge() : active normal call merge background conference call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 944
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 945
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 946
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 945
    invoke-interface {v6, v7, v8, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 951
    .end local v1    # "result":Landroid/os/Message;
    :cond_9
    iget-boolean v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v7, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v6, v7, :cond_a

    .line 952
    const-string v6, "merge() : active conference call merge background normal call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 953
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 954
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 956
    .end local v1    # "result":Landroid/os/Message;
    :cond_a
    iget-boolean v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v6, :cond_b

    iget-object v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v7, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v6, v7, :cond_b

    .line 959
    const-string v6, "merge() : beMergedCall in foreground merge bg normal call"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 960
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 961
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 962
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 961
    invoke-interface {v6, v7, v8, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 965
    .end local v1    # "result":Landroid/os/Message;
    :cond_b
    const-string v6, "merge() : swapping before merge"

    invoke-direct {p0, v6, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 966
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd2

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 967
    .restart local v1    # "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->swap(Landroid/os/Message;)V

    .line 971
    :goto_2
    return-void
.end method

.method public onAddParticipantComplete()V
    .locals 3

    .line 3049
    const-string v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddParticipantComplete(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->resetWrapper(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 3053
    :cond_0
    return-void
.end method

.method public reject(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 808
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->reject(I)V

    goto :goto_0

    .line 811
    :cond_0
    const-string v0, "reject() : Reject Call fail since there is no call ID. Abnormal Case"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 813
    :goto_0
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1031
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1032
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 1033
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 1034
    array-length v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 1035
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeParticipants() : fail since no call ID or participants is null CallID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Participant number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1045
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 1047
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 1036
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v1, v1, v2

    .line 1037
    .local v1, "addr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfParticipantUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1038
    .local v2, "participantUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 1040
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryRemoveParticipant(Ljava/lang/String;)V

    .line 1041
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "participantUri":Ljava/lang/String;
    nop

    .line 1050
    :cond_2
    :goto_1
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 864
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 865
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 866
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1054
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 1055
    return-void
.end method

.method sendDtmfbyTarget(CLandroid/os/Message;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "target"    # Landroid/os/Messenger;

    .line 1072
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 1073
    iput-object p3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    .line 1075
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1076
    .local v0, "local_result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 1077
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1112
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, v1, v2, p1}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;->sendRttMessage(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;)V

    .line 1113
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRttModifyRequest() : to = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 1118
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, v1, v2, p1}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;->sendRttModifyRequest(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1119
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 3
    .param p1, "response"    # Z

    .line 1123
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, v1, v2, p1}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;->sendRttModifyResponse(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Z)V

    .line 1124
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 10
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/16 v2, 0xd5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1083
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ext/DigitsUtil;->hasDialFrom(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v7, 0x1

    move-object v8, p1

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ext/DigitsUtil;->sendUssiFrom(Ljava/lang/Object;Landroid/telephony/ims/ImsCallProfile;ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1086
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendUSSI(ILjava/lang/String;Landroid/os/Message;)V

    .line 1089
    :goto_0
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 640
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 641
    return-void
.end method

.method public setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0
    .param p1, "callSessionProxy"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 3568
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 3569
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .line 645
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 646
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 13
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 650
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isCallPull(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->pullCall(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 652
    return-void

    .line 655
    :cond_0
    const-string v0, "oir"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    .line 656
    .local v0, "clirMode":I
    iget v2, p2, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    .line 657
    .local v2, "isEmergencyNumber":Z
    :goto_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v12

    .line 659
    .local v12, "subId":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v5

    if-nez v5, :cond_4

    .line 661
    const-string v5, "mtk_carrier_nouth_america_high_priority_clir_prefix_supported"

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v5

    .line 664
    .local v5, "isNAPriorityClirSupported":Z
    if-eqz v5, :cond_2

    if-ne v0, v4, :cond_2

    const-string v6, "*82"

    .line 666
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-nez v2, :cond_3

    .line 668
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v6

    invoke-virtual {v6, v12, p1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isSpecialEmergencyNumber(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 670
    :cond_3
    const-string v6, "start() : Prior CLIR supported, *82 or ECC is higher priority than CLIR invocation."

    invoke-direct {p0, v6, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 672
    const/4 v0, 0x0

    .line 676
    .end local v5    # "isNAPriorityClirSupported":Z
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v5

    invoke-virtual {v5, v12, p1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isSpecialEmergencyNumber(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 678
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->isImsEccSupported(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 679
    const-string v5, "start() : Hangup all if IMS Ecc not supported"

    invoke-direct {p0, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 680
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hangupAllCall(Landroid/os/Message;)V

    .line 682
    :cond_6
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsEmergencyCall:Z

    .line 686
    :cond_7
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 687
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v5, p1}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->isValidVtDialString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 688
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->rejectDial()V

    .line 689
    return-void

    .line 691
    :cond_8
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v5, p1}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->normalizeVtDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 696
    :cond_9
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    .line 697
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->shouldProcessSelfActivation(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 698
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mSelfActivateHelper:Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    invoke-virtual {v1, p1, p2, v2}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->doSelfActivationDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Z)V

    .line 700
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasTriedSelfActivation:Z

    .line 701
    return-void

    .line 705
    :cond_a
    const-string v5, "dialstring"

    invoke-virtual {p2, v5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_c

    .line 707
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd5

    invoke-virtual {v3, v5, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 708
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 709
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    invoke-interface {v3, p2}, Lcom/mediatek/ims/ext/DigitsUtil;->hasDialFrom(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 710
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v8, 0x1

    move-object v7, p2

    move-object v9, p1

    move-object v10, v1

    invoke-interface/range {v5 .. v10}, Lcom/mediatek/ims/ext/DigitsUtil;->sendUssiFrom(Ljava/lang/Object;Landroid/telephony/ims/ImsCallProfile;ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 712
    :cond_b
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v4, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendUSSI(ILjava/lang/String;Landroid/os/Message;)V

    .line 714
    :goto_1
    return-void

    .line 719
    .end local v1    # "msg":Landroid/os/Message;
    :cond_c
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->tryTurnOnVolteForE911(Z)V

    .line 723
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v6, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v6

    invoke-interface {v1, v3, v5, v6}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;->setRttModeForDial(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Z)V

    .line 724
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    invoke-interface {v1, p2}, Lcom/mediatek/ims/ext/DigitsUtil;->hasDialFrom(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 725
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xdd

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 726
    .local v1, "response":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v9

    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-object v6, p1

    move-object v7, p2

    move v8, v0

    move-object v11, v1

    invoke-interface/range {v5 .. v11}, Lcom/mediatek/ims/ext/DigitsUtil;->startFrom(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;IZLjava/lang/Object;Landroid/os/Message;)V

    .line 728
    .end local v1    # "response":Landroid/os/Message;
    goto :goto_2

    .line 729
    :cond_d
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 730
    .restart local v1    # "response":Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v9

    iget v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    move-object v6, p1

    move v7, v0

    move v8, v2

    move-object v11, v1

    invoke-interface/range {v5 .. v11}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->start(Ljava/lang/String;IZZILandroid/os/Message;)V

    .line 733
    .end local v1    # "response":Landroid/os/Message;
    :goto_2
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 734
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    .line 735
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUpdateAddressByPau()V

    .line 736
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 741
    const-string v0, "oir"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    .line 742
    .local v0, "clirMode":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 744
    .local v1, "result":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isVideoCall(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v5

    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPhoneId:I

    move-object v3, p1

    move v4, v0

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->startConference([Ljava/lang/String;IZILandroid/os/Message;)V

    .line 747
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 748
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOneKeyConf:Z

    .line 749
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOneKeyparticipants:[Ljava/lang/String;

    .line 750
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateShouldUpdateAddressByPau()V

    .line 751
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1059
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->startDtmf(CLandroid/os/Message;)V

    .line 1060
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1065
    return-void
.end method

.method public terminate(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 817
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mOpImsCallSession:Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    invoke-interface {v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleHangup()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "dialstring"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 821
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 822
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/ext/DigitsUtil;->hasDialFrom(Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDigitsUtil:Lcom/mediatek/ims/ext/DigitsUtil;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v1, v2, v3, v0}, Lcom/mediatek/ims/ext/DigitsUtil;->cancelUssiFrom(Ljava/lang/Object;Landroid/telephony/ims/ImsCallProfile;Landroid/os/Message;)V

    goto :goto_0

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->cancelPendingUssi(Landroid/os/Message;)V

    .line 827
    :goto_0
    return-void

    .line 831
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 833
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    if-lez v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->forceHangup(I)V

    goto :goto_1

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(I)V

    .line 837
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    if-eqz v0, :cond_4

    .line 838
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminateConferenceSession()V

    .line 843
    :cond_4
    :goto_1
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    .line 844
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHangupCount:I

    .line 845
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    goto :goto_2

    .line 847
    :cond_5
    const-string v0, "terminate() : Terminate Call fail since there is no call ID. Abnormal Case"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 848
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    if-eqz v0, :cond_6

    .line 849
    const-string v0, "terminate() : Pending M0, wait for assign call id"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 850
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingDisconnect:Z

    .line 851
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingDisconnectReason:I

    .line 854
    :cond_6
    :goto_2
    return-void
.end method

.method unattendedCallTransfer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 996
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unattendedCallTransfer(Ljava/lang/String;ILandroid/os/Message;)V

    .line 998
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldDuringECT:Z

    .line 999
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 976
    return-void
.end method
