.class public Lcom/mediatek/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsUtImpl$ResultHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field private static final ERROR_MSG_PROP_PREFIX:Ljava/lang/String; = "vendor.gsm.radio.ss.errormsg."

.field static final HTTP_ERROR_CODE_403:I = 0x193

.field static final HTTP_ERROR_CODE_404:I = 0x194

.field static final HTTP_ERROR_CODE_409:I = 0x199

.field private static final IMS_DEREG_CAUSE_BY_SS_CONFIG:I = 0x2

.field private static final IMS_DEREG_DISABLE_PROP:Ljava/lang/String; = "persist.vendor.radio.ss.imsdereg_off"

.field private static final IMS_DEREG_OFF:Ljava/lang/String; = "0"

.field private static final IMS_DEREG_ON:Ljava/lang/String; = "1"

.field private static final IMS_DEREG_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.imsdereg"

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x4b0

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_IMS_DEREG:I = 0x3f8

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x4b1

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final SDBG:Z

.field private static final SS_SERVICE_CLASS_PROP:Ljava/lang/String; = "vendor.gsm.radio.ss.sc"

.field private static final TAG:Ljava/lang/String; = "ImsUtImpl"

.field static final TIME_VALUE_HOUR_MAX:I = 0x17

.field static final TIME_VALUE_MIN:I = 0x0

.field static final TIME_VALUE_MINUTE_MAX:I = 0x3b

.field private static final mLock:Ljava/lang/Object;

.field private static sImsUtImpls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/ImsUtImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInVoLteCall:Z

.field private mIsNeedImsDereg:Z

.field private mListener:Landroid/telephony/ims/ImsUtListener;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ims/ImsUtImpl;->SDBG:Z

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    .line 111
    sput v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 209
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 116
    iput-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    .line 119
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsInVoLteCall:Z

    .line 120
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsNeedImsDereg:Z

    .line 170
    new-instance v0, Lcom/mediatek/ims/ImsUtImpl$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsUtImpl$1;-><init>(Lcom/mediatek/ims/ImsUtImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 212
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsUtImplResult"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 214
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 215
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;-><init>(Lcom/mediatek/ims/ImsUtImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    .line 217
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    iput-object p3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 222
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v3, p2}, Lcom/mediatek/ims/ImsService;->getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 223
    iput p2, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsUtImpl;IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsUtImpl;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsUtImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallForwardInfo;

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 99
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsInVoLteCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/ImsUtImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsNeedImsDereg:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsUtImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 99
    iget v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/ImsService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object v0
.end method

.method private convertToTimeSlotArray(Ljava/lang/String;)[J
    .locals 8
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "timeSlot":[J
    if-eqz p1, :cond_0

    .line 1272
    const-string v1, ","

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v2, :cond_0

    .line 1274
    new-array v0, v2, [J

    .line 1275
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1276
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1279
    :try_start_0
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1280
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    .end local v5    # "date":Ljava/util/Date;
    nop

    .line 1275
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1281
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 1282
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 1283
    const/4 v5, 0x0

    return-object v5

    .line 1288
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-object v0
.end method

.method public static getAndIncreaseRequestId()I
    .locals 3

    .line 1229
    const/4 v0, 0x0

    .line 1230
    .local v0, "requestId":I
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1231
    :try_start_0
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    move v0, v2

    .line 1232
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1233
    monitor-exit v1

    .line 1234
    return v0

    .line 1233
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .locals 1
    .param p1, "cbType"    # I

    .line 613
    packed-switch p1, :pswitch_data_0

    .line 637
    const/4 v0, 0x0

    return-object v0

    .line 635
    :pswitch_0
    const-string v0, "BS_MT"

    return-object v0

    .line 632
    :pswitch_1
    const-string v0, "AC"

    return-object v0

    .line 630
    :pswitch_2
    const-string v0, "AG"

    return-object v0

    .line 628
    :pswitch_3
    const-string v0, "AB"

    return-object v0

    .line 626
    :pswitch_4
    const-string v0, "ACR"

    return-object v0

    .line 623
    :pswitch_5
    const-string v0, "IR"

    return-object v0

    .line 621
    :pswitch_6
    const-string v0, "OX"

    return-object v0

    .line 619
    :pswitch_7
    const-string v0, "OI"

    return-object v0

    .line 617
    :pswitch_8
    const-string v0, "AO"

    return-object v0

    .line 615
    :pswitch_9
    const-string v0, "AI"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .line 705
    new-instance v0, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 706
    .local v0, "imsCfInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 707
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 708
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 709
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 710
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 711
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 712
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 191
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    monitor-enter v0

    .line 192
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsUtImpl;

    .line 194
    .local v1, "m":Lcom/mediatek/ims/ImsUtImpl;
    monitor-exit v0

    return-object v1

    .line 196
    .end local v1    # "m":Lcom/mediatek/ims/ImsUtImpl;
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/ImsUtImpl;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/ims/ImsUtImpl;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->sImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsUtImpl;

    monitor-exit v0

    return-object v1

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceClass()I
    .locals 2

    .line 1238
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 229
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivePhoneStateChange phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsInVoLteCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsInVoLteCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    if-eq p1, v0, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsInVoLteCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 239
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p3, v0, :cond_2

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsInVoLteCall:Z

    .line 241
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsNeedImsDereg:Z

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x3f8

    const/4 v4, 0x0

    .line 243
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsNeedImsDereg:Z

    goto :goto_0

    .line 248
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p3, v0, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 250
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mIsInVoLteCall:Z

    .line 253
    :cond_2
    :goto_0
    return-void
.end method

.method private static resetServcieClass()V
    .locals 2

    .line 1242
    const-string v0, "vendor.gsm.radio.ss.sc"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    return-void
.end method

.method public commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 6
    .param p1, "commandException"    # Lcom/android/internal/telephony/CommandException;

    .line 1148
    const/4 v0, 0x0

    .line 1149
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    const/4 v1, 0x0

    .line 1151
    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1154
    const-string v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 1163
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf006

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto/16 :goto_0

    .line 1164
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_1

    .line 1165
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf008

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 1166
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 1167
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf009

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    .line 1168
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/ImsUtImpl;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 1169
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_7:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 1170
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const v4, 0xf00a

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 1171
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_4

    .line 1172
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x321

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 1173
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_5

    .line 1174
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x322

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 1175
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_6

    .line 1176
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x335

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    goto :goto_0

    .line 1178
    :cond_6
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x324

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v1, v2

    .line 1180
    :goto_0
    return-object v1
.end method

.method public convertSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 925
    move-object v0, p1

    .line 926
    .local v0, "r":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 927
    const-string v1, ""

    return-object v1

    .line 929
    :cond_0
    const-string v1, "*"

    const-string v2, "^"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 930
    const-string v1, "#"

    const-string v2, "|"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 931
    sget-boolean v1, Lcom/mediatek/ims/ImsUtImpl;->SDBG:Z

    if-eqz v1, :cond_1

    .line 932
    const-string v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSpecialCharacters: number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_1
    return-object v0
.end method

.method public getCFActionFromAction(I)I
    .locals 1
    .param p1, "cfAction"    # I

    .line 642
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 655
    :pswitch_0
    return v0

    .line 648
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 650
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 646
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 644
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 659
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    .line 678
    return v0

    .line 673
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 671
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 669
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 667
    :pswitch_3
    return v0

    .line 665
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 663
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 661
    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 682
    packed-switch p1, :pswitch_data_0

    .line 701
    const/4 v0, -0x1

    return v0

    .line 696
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 694
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 692
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 690
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 688
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 686
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 684
    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;
    .locals 10
    .param p1, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.gsm.radio.ss.errormsg."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/ImsUtImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, "propNamePrefix":Ljava/lang/String;
    const-string v1, ""

    .line 1187
    .local v1, "fullErrorMsg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1189
    .local v2, "errorMsg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1190
    .local v3, "idx":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1191
    .local v4, "propName":Ljava/lang/String;
    const-string v5, ""

    .line 1193
    .local v5, "propValue":Ljava/lang/String;
    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1196
    :goto_0
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1200
    add-int/lit8 v3, v3, 0x1

    .line 1201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1202
    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1205
    :cond_0
    const-string v6, "ImsUtImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fullErrorMsg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v6, ""

    .line 1208
    .local v6, "errorCode":Ljava/lang/String;
    sget-object v7, Lcom/mediatek/ims/ImsUtImpl$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 1213
    const-string v7, "ImsUtImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "errorMsg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-object v2

    .line 1210
    :cond_1
    const-string v6, "409"

    .line 1211
    nop

    .line 1217
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1218
    const-string v7, "ImsUtImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "errorMsg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return-object v2

    .line 1222
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1223
    const-string v7, "ImsUtImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "errorMsg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return-object v2
.end method

.method public notifyUtConfigurationQueried(Landroid/os/Message;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 1254
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1255
    return-void
.end method

.method public notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1258
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1259
    return-void
.end method

.method public notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1250
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1251
    return-void
.end method

.method public notifyUtConfigurationUpdated(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1246
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    .line 1247
    return-void
.end method

.method public queryCLIP()I
    .locals 5

    .line 847
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 849
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 850
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIP(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 856
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 858
    return v1

    .line 850
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCLIR()I
    .locals 5

    .line 826
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 828
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 829
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIR(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 835
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 837
    return v1

    .line 829
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCOLP()I
    .locals 5

    .line 889
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 891
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 892
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLP(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ee

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 898
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 900
    return v1

    .line 892
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCOLR()I
    .locals 5

    .line 868
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 870
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 871
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLR(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 877
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 879
    return v1

    .line 871
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallBarring(I)I
    .locals 7
    .param p1, "cbType"    # I

    .line 724
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 726
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallBarring(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "facility":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 734
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 736
    .local v2, "serviceClass":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v1, v4, v6}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 737
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v0, v6, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 739
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 740
    return v1

    .line 727
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "requestId":I
    .end local v2    # "serviceClass":I
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 753
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 755
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 756
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallBarringForServiceClass(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "facility":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 764
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v3, v0, v5, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 766
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 767
    return v1

    .line 756
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 779
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 781
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 782
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForward(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 788
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 790
    .local v0, "serviceClass":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v3, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 791
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v4

    invoke-interface {v3, v4, v0, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 794
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 795
    return v1

    .line 782
    .end local v0    # "serviceClass":I
    .end local v1    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queryCallWaiting()I
    .locals 6

    .line 805
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 807
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 808
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallWaiting(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 814
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 816
    return v1

    .line 808
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 1144
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 1145
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 911
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 913
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 914
    monitor-exit v0

    .line 916
    return v1

    .line 914
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCLIP(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 1081
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1083
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1084
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIP(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1090
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCLIP(ILandroid/os/Message;)V

    .line 1092
    return v1

    .line 1084
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCLIR(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .line 1059
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1061
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1062
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1068
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1070
    return v1

    .line 1062
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCOLP(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 1125
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1127
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLP(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1134
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCOLP(ILandroid/os/Message;)V

    .line 1136
    return v1

    .line 1128
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCOLR(I)I
    .locals 5
    .param p1, "presentation"    # I

    .line 1103
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1104
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1105
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLR(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1112
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCOLR(ILandroid/os/Message;)V

    .line 1114
    return v1

    .line 1106
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 948
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 950
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 951
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarring(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    if-ne p2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v0

    .line 958
    .local v6, "bEnable":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "facility":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 961
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getServiceClass()I

    move-result v3

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v0

    .line 963
    .local v8, "serviceClass":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 964
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const-string v7, ""

    move-object v5, v2

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 966
    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->resetServcieClass()V

    .line 968
    return v1

    .line 951
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v6    # "bEnable":Z
    .end local v8    # "serviceClass":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 984
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 986
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 987
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringForServiceClass(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    if-ne p2, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v0

    .line 993
    .local v6, "bEnable":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v0, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 996
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const-string v7, ""

    move-object v5, v2

    move v8, p4

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 998
    return v1

    .line 987
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v6    # "bEnable":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 13
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    move-object v1, p0

    .line 1013
    sget-object v2, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1014
    :try_start_0
    sget v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1015
    .local v0, "requestId":I
    sget v3, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1016
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    const-string v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForward(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v2, v1, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1022
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->getCFActionFromAction(I)I

    move-result v7

    .line 1023
    move v3, p2

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v8

    .line 1024
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Lcom/mediatek/ims/ImsUtImpl;->convertSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1022
    move/from16 v9, p4

    move/from16 v11, p5

    move-object v12, v2

    invoke-interface/range {v6 .. v12}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1026
    return v0

    .line 1016
    .end local v0    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    move v3, p2

    move-object/from16 v4, p3

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 20
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 1306
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 1310
    const-string v0, "ImsUtImpl"

    const-string v1, "updateCallForwardUncondTimer(): Time is all zero! use updateCallForward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    return v0

    .line 1315
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1316
    :try_start_0
    sget v0, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1317
    .local v0, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    const-string v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForwardUncondTimer(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    if-ltz v8, :cond_1

    const/16 v1, 0x17

    if-gt v8, v1, :cond_1

    if-ltz v9, :cond_1

    const/16 v2, 0x3b

    if-gt v9, v2, :cond_1

    if-ltz v10, :cond_1

    if-gt v10, v1, :cond_1

    if-ltz v11, :cond_1

    if-le v11, v2, :cond_2

    .line 1327
    :cond_1
    const-string v1, "ImsUtImpl"

    const-string v2, "updateCallForwardUncondTimer(): Time is wrong! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_2
    const-string v1, "%02d:%02d,%02d:%02d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 1331
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1330
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1333
    .local v1, "timer":Ljava/lang/String;
    iget-object v2, v7, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v3, 0x4b1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v5, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1334
    .local v2, "msg":Landroid/os/Message;
    iget-object v12, v7, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move/from16 v3, p5

    invoke-virtual {v7, v3}, Lcom/mediatek/ims/ImsUtImpl;->getCFActionFromAction(I)I

    move-result v13

    .line 1335
    move/from16 v4, p6

    invoke-virtual {v7, v4}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v17, 0x0

    .line 1337
    invoke-direct {v7, v1}, Lcom/mediatek/ims/ImsUtImpl;->convertToTimeSlotArray(Ljava/lang/String;)[J

    move-result-object v18

    .line 1334
    move-object/from16 v16, p7

    move-object/from16 v19, v2

    invoke-interface/range {v12 .. v19}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 1339
    return v0

    .line 1318
    .end local v0    # "requestId":I
    .end local v1    # "timer":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    move/from16 v3, p5

    move/from16 v4, p6

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 1037
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_0
    sget v1, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1039
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtImpl;->sRequestId:I

    .line 1040
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    const-string v0, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallWaiting(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl;->mHandler:Lcom/mediatek/ims/ImsUtImpl$ResultHandler;

    const/16 v2, 0x3f1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1046
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, p1, p2, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1048
    return v1

    .line 1040
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
