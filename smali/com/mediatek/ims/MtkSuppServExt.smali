.class public Lcom/mediatek/ims/MtkSuppServExt;
.super Landroid/os/Handler;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;,
        Lcom/mediatek/ims/MtkSuppServExt$Task;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field private static final EVENT_IMS_UT_EVENT_QUERY_XCAP:I = 0x0

.field private static final EVENT_ON_VOLTE_SUBSCRIPTION:I = 0x6

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x3

.field private static final EVENT_RADIO_OFF:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x5

.field private static final EVENT_RESET_SS:I = 0x2

.field private static final ICCID_KEY:Ljava/lang/String; = "iccid_key"

.field private static final LOG_TAG:Ljava/lang/String; = "SuppServExt"

.field private static final SDBG:Z

.field private static final SETTING_UT_CAPABILITY:Ljava/lang/String; = "ut_capability"

.field private static final SETTING_VOLTE_SERVICE_SUBSCRIPTION:Ljava/lang/String; = "volte_subscription"

.field private static final SYS_PROP_QUERY_VOLTE_SUB:Ljava/lang/String; = "persist.vendor.suppserv.query_volte_sub"

.field private static final SYS_PROP_SUB_ID_KEY:Ljava/lang/String; = "persist.vendor.suppserv.presubid"

.field private static final TASK_QUERY_XCAP:I = 0x0

.field private static final TASK_RESET_AND_QUERY_XCAP:I = 0x1

.field private static final TASK_SET_UT_CAPABILITY:I = 0x3

.field private static final TASK_SET_VOLTE_SUBSCRIPTION_DIRECLY:I = 0x2

.field private static final UT_CAPABILITY_DISABLE:I = 0x2

.field private static final UT_CAPABILITY_ENABLE:I = 0x1

.field private static final UT_CAPABILITY_UNKNOWN:I = 0x0

.field private static final VDBG:Z

.field private static final VOLTE_SERVICE_DISABLE:I = 0x2

.field private static final VOLTE_SERVICE_ENABLE:I = 0x1

.field private static final VOLTE_SERVICE_UNKNOWN:I

.field private static toto:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mOldIccId:Ljava/lang/String;

.field private mPhoneId:I

.field private mQueryXcapDone:Z

.field private mRadioState:I

.field private mSimIsChangedAfterBoot:Z

.field private mSimLoaded:Z

.field private mSuppServExt:Lcom/mediatek/ims/MtkSuppServExt;

.field private mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    const-string v0, "ro.build.type"

    .line 93
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/MtkSuppServExt;->VDBG:Z

    .line 96
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/ims/MtkSuppServExt;->SDBG:Z

    .line 895
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/ims/MtkSuppServExt;->toto:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 397
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsManager:Lcom/android/ims/ImsManager;

    .line 114
    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServExt:Lcom/mediatek/ims/MtkSuppServExt;

    .line 116
    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    .line 120
    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    .line 122
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    .line 159
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 577
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkSuppServExt$1;-><init>(Lcom/mediatek/ims/MtkSuppServExt;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 402
    iput p2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 403
    iput-object p3, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 404
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsService;->getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 406
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-direct {v0, p0, p4}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;-><init>(Lcom/mediatek/ims/MtkSuppServExt;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    .line 408
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsManager:Lcom/android/ims/ImsManager;

    .line 410
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->checkImsInService()V

    .line 412
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->registerBroadcastReceiver()V

    .line 413
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->registerEvent()V

    .line 415
    const-string v0, "MtkSuppServExt init done."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/mediatek/ims/MtkSuppServExt;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/MtkSuppServExt;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/MtkSuppServExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 89
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    return v0
.end method

.method static synthetic access$1100(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 89
    invoke-static {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/MtkSuppServExt;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Z

    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->setSimLoaded(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/ims/MtkSuppServExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/ims/MtkSuppServExt;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/MtkSuppServExt;->startHandleXcapQueryProcess(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/MtkSuppServExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 89
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getVolteSubscriptionFromSettings()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/MtkSuppServExt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionToSettings(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/MtkSuppServExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 89
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ims/MtkSuppServExt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityToSettings(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/MtkSuppServExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 89
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->handleSubinfoUpdate()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/ims/MtkSuppServExt;)Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 89
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    return-object v0
.end method

.method private checkImsInService()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    .line 421
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionToSettings(I)V

    .line 423
    :cond_0
    return-void
.end method

.method private checkInitCriteria(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1, "criteriaFailReason"    # Ljava/lang/StringBuilder;

    .line 483
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->checkNeedQueryXcap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 484
    const-string v0, "No need to support for this operator, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    return v1

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    const-string v0, "Data is not enabled, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    return v1

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    const-string v0, "SubInfo not ready, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    return v1

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getSimLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 499
    const-string v0, "Sim not loaded, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    return v1

    .line 503
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    if-eqz v0, :cond_4

    .line 504
    const-string v0, "No need query, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    return v1

    .line 508
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    if-nez v0, :cond_5

    .line 509
    const-string v0, "Sim not changed, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    return v1

    .line 513
    :cond_5
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    sget-object v2, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 514
    const-string v0, "radio not available, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    return v1

    .line 518
    :cond_6
    const-string v0, "All Criteria ready."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method private checkNeedQueryXcap()Z
    .locals 3

    .line 380
    const-string v0, "0"

    const-string v1, "persist.vendor.suppserv.query_volte_sub"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 381
    return v1

    .line 385
    :cond_0
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP01:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->isOp(Lcom/mediatek/ims/OperatorUtils$OPID;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP09:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->isOp(Lcom/mediatek/ims/OperatorUtils$OPID;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    return v1

    .line 386
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private commandExceptionToVolteServiceStatus(Lcom/android/internal/telephony/CommandException;)I
    .locals 4
    .param p1, "commandException"    # Lcom/android/internal/telephony/CommandException;

    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    const/4 v1, 0x0

    .line 815
    .local v1, "status":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commandException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 819
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_0

    .line 820
    const/4 v1, 0x2

    goto :goto_0

    .line 821
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_1

    .line 822
    const/4 v1, 0x1

    goto :goto_0

    .line 823
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 824
    const/4 v1, 0x1

    goto :goto_0

    .line 825
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_3

    .line 826
    const/4 v1, 0x2

    .line 829
    :cond_3
    :goto_0
    return v1
.end method

.method private getIccIdFromSp()Ljava/lang/String;
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 929
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccid_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "iccid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccIdFromSp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 931
    return-object v1
.end method

.method private getPreviousSubId()I
    .locals 4

    .line 901
    sget v0, Lcom/mediatek/ims/MtkSuppServExt;->toto:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/mediatek/ims/MtkSuppServExt;->toto:I

    return v0

    .line 902
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    const-string v2, "persist.vendor.suppserv.presubid"

    const-string v3, "-1"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "subId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 906
    return v1

    .line 910
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 911
    :catch_0
    move-exception v2

    .line 912
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method private getSimLoaded()Z
    .locals 2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logi(Ljava/lang/String;)V

    .line 622
    iget-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    return v0
.end method

.method private static getSubIdUsingPhoneId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 886
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 887
    .local v0, "values":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 888
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    return v1
.end method

.method private getVolteSubscriptionFromSettings()I
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 854
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volte_subscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 853
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 857
    .local v0, "status":I
    return v0
.end method

.method private handleSubinfoUpdate()V
    .locals 1

    .line 631
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    return-void

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->handleSuppServInit()V

    .line 637
    return-void
.end method

.method private handleSuppServIfSimChanged()V
    .locals 4

    .line 660
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getPreviousSubId()I

    move-result v0

    .line 661
    .local v0, "oldSubId":I
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 663
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSuppServIfSimChanged mySubId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 664
    invoke-static {v3}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old subid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 663
    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logw(Ljava/lang/String;)V

    .line 666
    if-gez v1, :cond_0

    .line 668
    return-void

    .line 671
    :cond_0
    if-ne v0, v1, :cond_1

    .line 673
    return-void

    .line 677
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->saveSubId(I)V

    .line 680
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->resetSuppServ()V

    .line 681
    return-void
.end method

.method private handleSuppServInit()V
    .locals 4

    .line 640
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 641
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 643
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 644
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "iccid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    return-void

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->handleSuppServIfSimChanged()V

    .line 654
    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->handleXcapQueryIfSimChangedOrBootup(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method private handleXcapQueryIfSimChangedOrBootup(Ljava/lang/String;)V
    .locals 4
    .param p1, "iccid"    # Ljava/lang/String;

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleXcapQueryIfSimChangedOrBootup mySubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 685
    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old iccid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/ims/MtkSuppServExt;->SDBG:Z

    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    .line 686
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new iccid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/ims/MtkSuppServExt;->SDBG:Z

    .line 687
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logw(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    sget-boolean v0, Lcom/mediatek/ims/MtkSuppServExt;->VDBG:Z

    if-eqz v0, :cond_0

    .line 693
    const-string v0, "handleXcapQueryIfSimChangedOrBootup: Same SIM."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 695
    :cond_0
    return-void

    .line 698
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mOldIccId:Ljava/lang/String;

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    .line 702
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->clearPendingTask()V

    .line 705
    const-string v1, "Reset VoLTE subscription status"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    .line 706
    const-string v1, "Reset Ut capabatility status"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityDirectly(ILjava/lang/String;)V

    .line 707
    new-instance v1, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const-string v3, "Sim Changed or Bootup"

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    move-object v0, v1

    .line 708
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 709
    return-void
.end method

.method private isDataEnabled()Z
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 562
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 564
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v2

    return v2
.end method

.method private isOp(Lcom/mediatek/ims/OperatorUtils$OPID;)Z
    .locals 1
    .param p1, "id"    # Lcom/mediatek/ims/OperatorUtils$OPID;

    .line 393
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/ims/OperatorUtils;->isOperator(Ljava/lang/String;Lcom/mediatek/ims/OperatorUtils$OPID;)Z

    move-result v0

    return v0
.end method

.method private isSubInfoReady()Z
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 546
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 548
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 549
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "iccid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    const/4 v3, 0x1

    return v3

    .line 555
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1007
    const-string v0, "SuppServExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 993
    const-string v0, "SuppServExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1002
    const-string v0, "SuppServExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1011
    const-string v0, "SuppServExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 997
    const-string v0, "SuppServExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 426
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 427
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    return-void
.end method

.method private registerEvent()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p0, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v0, p0, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v0, p0, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x5

    invoke-interface {v0, p0, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v0, p0, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForVolteSubscription(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    return-void
.end method

.method private resetSuppServ()V
    .locals 2

    .line 936
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 938
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resetSuppServ(Landroid/os/Message;)V

    .line 940
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private saveIccidtoSp(Ljava/lang/String;)V
    .locals 4
    .param p1, "iccid"    # Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 918
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 919
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 922
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 923
    const-string v2, "Failed to commit iccid preference"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->loge(Ljava/lang/String;)V

    .line 925
    :cond_0
    return-void
.end method

.method private saveSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 897
    sput p1, Lcom/mediatek/ims/MtkSuppServExt;->toto:I

    .line 898
    return-void
.end method

.method private setSimLoaded(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set mSimLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logi(Ljava/lang/String;)V

    .line 627
    iput-boolean p1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimLoaded:Z

    .line 628
    return-void
.end method

.method private setUtCapabilityDirectly(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "msgStr"    # Ljava/lang/String;

    .line 717
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IILjava/lang/String;)V

    .line 718
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 719
    return-void
.end method

.method private setUtCapabilityToSettings(I)V
    .locals 3
    .param p1, "status"    # I

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUtCapabilityToSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 879
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ut_capability"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 882
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->notifyUtCapabilityChange(I)V

    .line 883
    return-void
.end method

.method private setVolteSubscriptionDirectly(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "msgStr"    # Ljava/lang/String;

    .line 712
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IILjava/lang/String;)V

    .line 713
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 714
    return-void
.end method

.method private setVolteSubscriptionToSettings(I)V
    .locals 3
    .param p1, "status"    # I

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolteSubscriptionToSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 863
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volte_subscription"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 862
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 866
    return-void
.end method

.method private startHandleXcapQueryProcess(ZLjava/lang/String;)V
    .locals 4
    .param p1, "forceQuery"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v0, "criteriaFailReason":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->checkInitCriteria(Ljava/lang/StringBuilder;)Z

    move-result v1

    .line 525
    .local v1, "checkCriteria":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHandleXcapQueryProcess(), forceQuery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", checkCriteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", criteriaFailReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 529
    if-nez v1, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    .line 531
    return-void

    .line 534
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSimIsChangedAfterBoot:Z

    .line 536
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->startXcapQuery()V

    .line 537
    return-void
.end method

.method private startXcapQuery()V
    .locals 2

    .line 569
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 571
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getXcapStatus(Landroid/os/Message;)V

    .line 572
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    .line 575
    :goto_0
    return-void
.end method

.method private taskDone()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 541
    .local v0, "ssmsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 542
    return-void
.end method

.method private toEventString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 972
    packed-switch p1, :pswitch_data_0

    .line 989
    const-string v0, "UNKNOWN_IMS_EVENT_ID"

    return-object v0

    .line 986
    :pswitch_0
    const-string v0, "EVENT_ON_VOLTE_SUBSCRIPTION"

    return-object v0

    .line 982
    :pswitch_1
    const-string v0, "EVENT_RADIO_ON"

    return-object v0

    .line 984
    :pswitch_2
    const-string v0, "EVENT_RADIO_OFF"

    return-object v0

    .line 980
    :pswitch_3
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 978
    :pswitch_4
    const-string v0, "EVENT_RESET_SS"

    return-object v0

    .line 976
    :pswitch_5
    const-string v0, "EVENT_IMS_REGISTRATION_INFO"

    return-object v0

    .line 974
    :pswitch_6
    const-string v0, "EVENT_IMS_UT_EVENT_QUERY_XCAP"

    return-object v0

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

.method private unRegisterBroadReceiver()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 472
    return-void
.end method

.method private unRegisterEvent()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsRegistrationInfo(Landroid/os/Handler;)V

    .line 457
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 458
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForOff(Landroid/os/Handler;)V

    .line 459
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 460
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v0, p0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForVolteSubscription(Landroid/os/Handler;)V

    .line 468
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->unRegisterBroadReceiver()V

    .line 476
    return-void
.end method

.method public getUtCapabilityFromSettings()I
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt;->mContext:Landroid/content/Context;

    .line 870
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ut_capability"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 873
    .local v0, "status":I
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->toEventString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 724
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 725
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 788
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v2

    .line 789
    .local v1, "volteSubstatus":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " EVENT_ON_VOLTE_SUBSCRIPTION, volteSubstatus = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 790
    if-ne v1, v3, :cond_0

    .line 791
    const-string v2, "Receive VoLTE Subscription URC"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    .line 793
    const-string v2, "Receive VoLTE Subscription URC"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityDirectly(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 795
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 796
    const-string v3, "Receive VoLTE Subscription URC"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    .line 798
    const-string v3, "Receive VoLTE Subscription URC"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt;->setUtCapabilityDirectly(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 780
    .end local v1    # "volteSubstatus":I
    :pswitch_1
    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 781
    new-instance v1, Lcom/mediatek/ims/MtkSuppServExt$Task;

    const-string v3, "Radio on"

    invoke-direct {v1, p0, v2, v2, v3}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    .line 782
    .local v1, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mSuppServTaskDriven:Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 783
    goto/16 :goto_2

    .line 775
    .end local v1    # "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    :pswitch_2
    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 776
    goto/16 :goto_2

    .line 770
    :pswitch_3
    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mRadioState:I

    .line 771
    goto/16 :goto_2

    .line 765
    :pswitch_4
    const-string v1, "EVENT_RESET_SS Done"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 766
    goto/16 :goto_2

    .line 756
    :pswitch_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v2

    .line 757
    .local v1, "status":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_IMS_REGISTRATION_INFO: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 758
    if-ne v1, v3, :cond_4

    .line 759
    const-string v2, "Ims registered."

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkSuppServExt;->setVolteSubscriptionDirectly(ILjava/lang/String;)V

    goto :goto_2

    .line 727
    .end local v1    # "status":I
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v1

    .line 728
    .local v1, "imsServiceState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsServiceState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 729
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v4, p0, Lcom/mediatek/ims/MtkSuppServExt;->mPhoneId:I

    .line 730
    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 736
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_2

    .line 737
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 738
    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->commandExceptionToVolteServiceStatus(Lcom/android/internal/telephony/CommandException;)I

    move-result v2

    .line 740
    .local v2, "volteService":I
    const-string v4, "EVENT_IMS_UT_EVENT_QUERY_XCAP, get CommandException"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 743
    .end local v2    # "volteService":I
    goto :goto_1

    .line 744
    :cond_2
    const-string v2, "EVENT_IMS_UT_EVENT_QUERY_XCAP, get ImsException"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 732
    :cond_3
    :goto_0
    const-string v2, "EVENT_IMS_UT_EVENT_QUERY_XCAP, query successfully"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 750
    :goto_1
    iput-boolean v3, p0, Lcom/mediatek/ims/MtkSuppServExt;->mQueryXcapDone:Z

    .line 751
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->taskDone()V

    .line 752
    nop

    .line 809
    .end local v1    # "imsServiceState":I
    :cond_4
    :goto_2
    return-void

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

.method public isSupportCFT()Z
    .locals 4

    .line 833
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt;->getVolteSubscriptionFromSettings()I

    move-result v0

    .line 834
    .local v0, "status":I
    const/4 v1, 0x0

    .line 836
    .local v1, "bStatus":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCFT: getVolteSubscriptionFromSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->logd(Ljava/lang/String;)V

    .line 838
    sget-object v2, Lcom/mediatek/ims/OperatorUtils$OPID;->OP01:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/MtkSuppServExt;->isOp(Lcom/mediatek/ims/OperatorUtils$OPID;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    const/4 v1, 0x1

    .line 849
    :cond_0
    return v1
.end method
