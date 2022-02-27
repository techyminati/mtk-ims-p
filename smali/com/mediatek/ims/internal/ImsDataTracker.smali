.class public Lcom/mediatek/ims/internal/ImsDataTracker;
.super Ljava/lang/Object;
.source "ImsDataTracker.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mIsBearerNotify:I

.field private mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

.field private mModemEmergencyPdnState:[I

.field private mModemImsPdnState:[I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mPdnStateLock:Ljava/lang/Object;

.field private mPhoneNum:I

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

.field private mdHander:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    .line 113
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$1;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$2;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 43
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    .line 44
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    new-array v0, v0, [Lcom/mediatek/ims/internal/DataDispatcher;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v2, Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {v2, p1, p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 49
    sget-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->LEGACY:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    .line 50
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    .line 84
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    .line 113
    new-instance v1, Lcom/mediatek/ims/internal/ImsDataTracker$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$1;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    .line 214
    new-instance v1, Lcom/mediatek/ims/internal/ImsDataTracker$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$2;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    .line 88
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    new-array v1, v1, [Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 89
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    .line 90
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    .line 91
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 94
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v2, v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    new-instance v4, Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-direct {v4, p1, p0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;-><init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V

    aput-object v4, v3, v2

    .line 96
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    invoke-interface {v3, v4, v1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerActivation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerDeactivation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerInit(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-interface {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsDataInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aput v4, v3, v2

    .line 105
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aput v4, v3, v2

    .line 106
    iget v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->AUTOSETUPIMS:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsDataTracker;->onImsBearerChanged(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onMdRestart(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onImsDataInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/ImsDataTracker;)Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 26
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/ImsDataTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 26
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/ImsDataTracker;)[Lcom/mediatek/ims/internal/DataDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 26
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/internal/ImsDataTracker;)[Lcom/mediatek/ims/internal/ImsDataSynchronizer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 26
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    return-object v0
.end method

.method private clearModemPdnState()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 282
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method private onImsBearerChanged(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "event"    # I

    .line 139
    const-string v0, "onImsBearerChanged"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 140
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 141
    .local v0, "bearerInfo":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 142
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 143
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, "phoneId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, "aid":I
    const/4 v3, 0x2

    aget-object v3, v0, v3

    .line 147
    .local v3, "capability":Ljava/lang/String;
    invoke-direct {p0, v1, v3, p2}, Lcom/mediatek/ims/internal/ImsDataTracker;->updateModemPdnState(ILjava/lang/String;I)V

    .line 148
    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v4, v4, v1

    new-instance v5, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    invoke-direct {v5, v2, v1, p2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyMdRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V

    .line 150
    .end local v1    # "phoneId":I
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    goto :goto_0

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter format error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "parameter is NULL"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void
.end method

.method private onImsDataInfo(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 168
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 169
    .local v0, "bearerInfo":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 170
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsDataInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, "phoneId":I
    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 175
    .local v3, "capability":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v0, v4

    .line 178
    .local v4, "event":Ljava/lang/String;
    const-string v5, "emergency"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    const/16 v2, 0xa

    .local v2, "cap":I
    goto :goto_0

    .line 181
    .end local v2    # "cap":I
    :cond_0
    nop

    .line 185
    .restart local v2    # "cap":I
    :goto_0
    const-string v5, "ClearCodes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 187
    .local v5, "cause":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyClearCodesEvent(II)V

    .line 189
    .end local v1    # "phoneId":I
    .end local v2    # "cap":I
    .end local v3    # "capability":Ljava/lang/String;
    .end local v4    # "event":Ljava/lang/String;
    .end local v5    # "cause":I
    :cond_1
    goto :goto_1

    .line 190
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter format error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_3
    const-string v1, "parameter is NULL"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 195
    :goto_1
    return-void
.end method

.method private onMdRestart(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 159
    const-string v0, "onMdRestart"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 160
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 161
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMdRestart, reset phone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connection state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyMdRestart()V

    .line 163
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataTracker;->clearModemPdnState()V

    .line 164
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    .line 165
    return-void
.end method

.method private setImsBearerNotification(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsBearerNotification enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 212
    return-void
.end method

.method private updateModemPdnState(ILjava/lang/String;I)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # I

    .line 257
    if-nez p3, :cond_2

    .line 258
    const-string v0, "ims"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto/16 :goto_0

    .line 260
    :cond_0
    const-string v0, "emergency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not handle the capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 266
    const-string v0, "ims"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 268
    :cond_3
    const-string v0, "emergency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 271
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not handle the capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not handle the event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive disableRequest on phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->disableRequest(I)V

    .line 62
    return-void
.end method

.method public enableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive enableRequest on phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->enableRequest(I)V

    .line 57
    return-void
.end method

.method public getImsNetworkState(I)[I
    .locals 3
    .param p1, "capability"    # I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capability/mPhoneNum/imsPdnState/emergencyPdnState are : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    .line 238
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    .line 239
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    monitor-exit v0

    return-object v1

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 244
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    monitor-exit v0

    return-object v1

    .line 247
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 249
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    new-array v0, v0, [I

    .line 250
    .local v0, "pdnState":[I
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsNetworkState failed becase of invalid capability : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 252
    return-object v0
.end method

.method public responseBearerConfirm(IIII)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "aid"    # I
    .param p3, "status"    # I
    .param p4, "phoneId"    # I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to MD, aid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, p4

    invoke-interface {v1, p2, p3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->responseBearerDeactivationDone(IILandroid/os/Message;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, p4

    invoke-interface {v1, p2, p3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->responseBearerActivationDone(IILandroid/os/Message;)V

    .line 202
    nop

    .line 207
    :goto_0
    return-void
.end method

.method public sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 75
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 76
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mDispatchers:[Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 72
    return-void
.end method
