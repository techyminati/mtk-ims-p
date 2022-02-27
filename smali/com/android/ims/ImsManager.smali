.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$Connector;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final ACTION_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "com.android.ims.REGISTRATION_ERROR"

.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"

.field public static final EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android:isUnknown"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final MAX_RECENT_DISCONNECT_REASONS:I = 0x10

.field public static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field public static final PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field public static final PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field protected static final SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field protected static final SYSTEM_PROPERTY_NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImsManager"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static sImsManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sMainThreadHandlerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigDynamicBind:Z

.field private mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mConfigUpdated:Z

.field protected mContext:Landroid/content/Context;

.field protected mEcbm:Lcom/android/ims/ImsEcbm;

.field protected mImsConfigListener:Lcom/android/ims/ImsConfigListener;

.field protected mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

.field private mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

.field protected mPhoneId:I

.field private mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private mUt:Lcom/android/ims/ImsUt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/ImsManager;->sMainThreadHandlerInstances:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    .line 438
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 447
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 450
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 453
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    .line 455
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    .line 463
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1512
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 1513
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1514
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigDynamicBind:Z

    .line 1516
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1518
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->createImsService()V

    .line 1519
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;I)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 70
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getMainThreadHandler(Landroid/content/Context;I)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/ims/ImsManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager;

    .line 70
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method private addToRecentDisconnectReasons(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2274
    if-nez p1, :cond_0

    return-void

    .line 2275
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2276
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 2278
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 2279
    return-void
.end method

.method protected static booleanToPropertyString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Z

    .line 2495
    if-eqz p0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method private checkAndThrowExceptionIfServiceUnavailable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2120
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2121
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->createImsService()V

    .line 2123
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_2

    .line 2128
    :cond_1
    return-void

    .line 2124
    :cond_2
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "Service is unavailable"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static factoryReset(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2420
    nop

    .line 2421
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 2420
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 2422
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 2423
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->factoryReset()V

    .line 2425
    :cond_0
    const-string v1, "factoryReset: ImsManager null."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2426
    return-void
.end method

.method protected static getCallId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallExtras"    # Landroid/os/Bundle;

    .line 2107
    if-nez p0, :cond_0

    .line 2108
    const/4 v0, 0x0

    return-object v0

    .line 2111
    :cond_0
    const-string v0, "android:imsCallID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 474
    sget-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 475
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager;

    .line 478
    .local v1, "m":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->connectIfServiceIsAvailable()V

    .line 481
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 485
    .end local v1    # "m":Lcom/android/ims/ImsManager;
    :cond_1
    const/4 v1, 0x0

    .line 488
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    const/4 v2, 0x2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 489
    .local v3, "cParam":[Ljava/lang/Class;
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 490
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 492
    invoke-static {}, Lcom/android/ims/ImsManager;->getMtkImsManager()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 493
    .local v4, "clazzConstructfunc":Ljava/lang/reflect/Constructor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "constructor function = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 495
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsManager;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .end local v3    # "cParam":[Ljava/lang/Class;
    .end local v4    # "clazzConstructfunc":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 499
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Exception at init MtkImsManager! Use AOSP for instead!"

    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 501
    new-instance v3, Lcom/android/ims/ImsManager;

    invoke-direct {v3, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    move-object v1, v3

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 496
    :catch_1
    move-exception v2

    .line 497
    .local v2, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v3, "MtkImsManager Constructor not found! Use AOSP instead!"

    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 498
    new-instance v3, Lcom/android/ims/ImsManager;

    invoke-direct {v3, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    move-object v1, v3

    .line 502
    .end local v2    # "nsme":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 504
    :goto_1
    sget-object v2, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    monitor-exit v0

    return-object v1

    .line 507
    .end local v1    # "mgr":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static getMainThreadHandler(Landroid/content/Context;I)Landroid/os/Handler;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 410
    sget-object v0, Lcom/android/ims/ImsManager;->sMainThreadHandlerInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 411
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->sMainThreadHandlerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    sget-object v1, Lcom/android/ims/ImsManager;->sMainThreadHandlerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 413
    .local v1, "h":Landroid/os/Handler;
    monitor-exit v0

    return-object v1

    .line 417
    .end local v1    # "h":Landroid/os/Handler;
    :cond_0
    const/4 v1, 0x0

    .line 418
    .local v1, "hdlr":Landroid/os/Handler;
    if-eqz p0, :cond_1

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] Create main thread handler w/ context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 420
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v2

    goto :goto_0

    .line 422
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] Create main thread handler w/o context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 423
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v2

    .line 425
    :goto_0
    sget-object v2, Lcom/android/ims/ImsManager;->sMainThreadHandlerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    monitor-exit v0

    return-object v1

    .line 428
    .end local v1    # "hdlr":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getMtkImsManager()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2532
    :try_start_0
    const-string v0, "com.mediatek.ims.internal.MtkImsManager"

    .line 2533
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2534
    .local v1, "mtkImsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v1

    .line 2535
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "mtkImsManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MtkImsManager not found!"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2538
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z
    .locals 4
    .param p1, "config"    # Lcom/android/ims/ImsConfig;
    .param p2, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1334
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v0

    .line 1335
    .local v0, "value":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1339
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1336
    :cond_1
    new-instance v1, Lcom/android/ims/ImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisionedBool failed with error for item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private getProvisionedBoolNoException(I)Z
    .locals 2
    .param p1, "item"    # I

    .line 1348
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 1349
    .local v0, "config":Lcom/android/ims/ImsConfig;
    invoke-direct {p0, v0, p1}, Lcom/android/ims/ImsManager;->getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z

    move-result v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1350
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "ex":Lcom/android/ims/ImsException;
    const/4 v1, 0x0

    return v1
.end method

.method private getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "subSetting"    # Ljava/lang/String;
    .param p2, "defaultConfigKey"    # Ljava/lang/String;

    .line 1115
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1119
    .local v0, "result":I
    if-ne v0, v2, :cond_0

    .line 1120
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .line 1122
    :cond_0
    return v0
.end method

.method public static getWfcMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1016
    nop

    .line 1017
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1016
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1018
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v1

    return v1

    .line 1021
    :cond_0
    const-string v1, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1022
    const/4 v1, 0x0

    return v1
.end method

.method public static getWfcMode(Landroid/content/Context;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # Z

    .line 1067
    nop

    .line 1068
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1067
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1069
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    return v1

    .line 1072
    :cond_0
    const-string v1, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1073
    const/4 v1, 0x0

    return v1
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 517
    nop

    .line 518
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 517
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 519
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    return v1

    .line 522
    :cond_0
    const-string v1, "isEnhanced4gLteModeSettingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 523
    const/4 v1, 0x0

    return v1
.end method

.method private isImsTurnOffAllowed()Z
    .locals 1

    .line 2197
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2197
    :goto_0
    return v0
.end method

.method public static isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 610
    nop

    .line 611
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 610
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 612
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    return v1

    .line 615
    :cond_0
    const-string v1, "isNonTtyOrTtyOnVolteEnabled: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 616
    const/4 v1, 0x0

    return v1
.end method

.method protected static isTurnOffImsAllowedByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 892
    nop

    .line 893
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 892
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 894
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v1

    return v1

    .line 897
    :cond_0
    const-string v1, "isTurnOffImsAllowedByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 898
    const/4 v1, 0x1

    return v1
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 643
    nop

    .line 644
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 643
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 645
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    return v1

    .line 648
    :cond_0
    const-string v1, "isVolteEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 649
    const/4 v1, 0x0

    return v1
.end method

.method private isVolteProvisioned()Z
    .locals 1

    .line 2475
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getProvisionedBoolNoException(I)Z

    move-result v0

    return v0
.end method

.method public static isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 680
    nop

    .line 681
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 680
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 682
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v1

    return v1

    .line 685
    :cond_0
    const-string v1, "isVolteProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 686
    const/4 v1, 0x1

    return v1
.end method

.method public static isVtEnabledByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 780
    nop

    .line 781
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 780
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 782
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v1

    return v1

    .line 785
    :cond_0
    const-string v1, "isVtEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 786
    const/4 v1, 0x0

    return v1
.end method

.method public static isVtEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 817
    nop

    .line 818
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 817
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 819
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    return v1

    .line 822
    :cond_0
    const-string v1, "isVtEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 823
    const/4 v1, 0x0

    return v1
.end method

.method private isVtProvisioned()Z
    .locals 1

    .line 2485
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getProvisionedBoolNoException(I)Z

    move-result v0

    return v0
.end method

.method public static isVtProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 749
    nop

    .line 750
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 749
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 751
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v1

    return v1

    .line 754
    :cond_0
    const-string v1, "isVtProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 755
    const/4 v1, 0x1

    return v1
.end method

.method public static isWfcEnabledByPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1274
    nop

    .line 1275
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1274
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1276
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    return v1

    .line 1279
    :cond_0
    const-string v1, "isWfcEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1280
    const/4 v1, 0x0

    return v1
.end method

.method public static isWfcEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 927
    nop

    .line 928
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 927
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 929
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    return v1

    .line 932
    :cond_0
    const-string v1, "isWfcEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 933
    const/4 v1, 0x1

    return v1
.end method

.method private isWfcProvisioned()Z
    .locals 1

    .line 2480
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getProvisionedBoolNoException(I)Z

    move-result v0

    return v0
.end method

.method public static isWfcProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 711
    nop

    .line 712
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 711
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 713
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v1

    return v1

    .line 716
    :cond_0
    const-string v1, "isWfcProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 717
    const/4 v1, 0x1

    return v1
.end method

.method public static isWfcRoamingEnabledByUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1202
    nop

    .line 1203
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1202
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1204
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v1

    return v1

    .line 1207
    :cond_0
    const-string v1, "isWfcRoamingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1208
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$setRttEnabled$2(Lcom/android/ims/ImsManager;ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "value"    # I

    .line 1967
    :try_start_0
    const-class v0, Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting RTT enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1973
    goto :goto_0

    .line 1970
    :catch_0
    move-exception v0

    .line 1971
    .local v0, "e":Lcom/android/ims/ImsException;
    const-class v1, Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set RTT enabled to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setWfcModeInternal$0(Lcom/android/ims/ImsManager;I)V
    .locals 2
    .param p1, "value"    # I

    .line 1186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    goto :goto_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1191
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setWfcRoamingSettingInternal$1(Lcom/android/ims/ImsManager;I)V
    .locals 2
    .param p1, "value"    # I

    .line 1256
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1261
    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2175
    const-string v0, "ImsManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2179
    const-string v0, "ImsManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 2183
    const-string v0, "ImsManager"

    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2184
    return-void
.end method

.method private makeACopy(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 2
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2021
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2022
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2023
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .line 2024
    .local v1, "clonedReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    return-object v1
.end method

.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 558
    nop

    .line 559
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 558
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 560
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 563
    :cond_0
    const-string v1, "setEnhanced4gLteModeSetting: ImsManager null, value not set."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public static setVtSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 846
    nop

    .line 847
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 846
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 848
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Z)V

    .line 851
    :cond_0
    const-string v1, "setVtSetting: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public static setWfcMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .line 1039
    nop

    .line 1040
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1039
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1041
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 1044
    :cond_0
    const-string v1, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method public static setWfcMode(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1134
    nop

    .line 1135
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1134
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1136
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1139
    :cond_0
    const-string v1, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method public static setWfcRoamingSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1231
    nop

    .line 1232
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1231
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1233
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1234
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSetting(Z)V

    .line 1236
    :cond_0
    const-string v1, "setWfcRoamingSetting: ImsManager null, value not set."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public static setWfcSetting(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 960
    nop

    .line 961
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 960
    invoke-static {p0, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 962
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 965
    :cond_0
    const-string v1, "setWfcSetting: ImsManager null, can not set value."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method public static updateImsServiceConfig(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "force"    # Z

    .line 1366
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1367
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {v0, p2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 1370
    :cond_0
    const-string v1, "updateImsServiceConfig: ImsManager null, returning without update."

    invoke-static {v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1371
    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2319
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSms(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2323
    nop

    .line 2324
    return-void

    .line 2320
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "acknowledgeSms()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public acknowledgeSmsReport(III)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2328
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    nop

    .line 2333
    return-void

    .line 2329
    :catch_0
    move-exception v0

    .line 2330
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "acknowledgeSmsReport()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public addCapabilitiesCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1713
    if-eqz p1, :cond_0

    .line 1717
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1719
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->addCapabilityCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V

    .line 1720
    const-string v0, "Capability Callback registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    nop

    .line 1726
    return-void

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "addCapabilitiesCallback(IF)"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1714
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNotifyStatusChangedCallbackIfAvailable(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V
    .locals 3
    .param p1, "c"    # Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1576
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    if-eqz p1, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1583
    :cond_0
    return-void

    .line 1577
    :cond_1
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "Binder is not active!"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public addRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1669
    if-eqz p1, :cond_0

    .line 1674
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->addRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    .line 1675
    const-string v0, "Registration Callback registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    nop

    .line 1681
    return-void

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "addRegistrationCallback(IRIB)"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1670
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRegistrationListener(ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsManager;->addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V

    .line 1635
    return-void
.end method

.method public addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1647
    if-eqz p1, :cond_0

    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    .line 1652
    new-instance v0, Lcom/android/ims/ImsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager$1;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConnectionStateListener;)V

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V

    .line 1658
    const-string v0, "Registration Callback registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1659
    return-void

    .line 1648
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeMmTelCapability(IIZ)V
    .locals 5
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1938
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1940
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1941
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    if-eqz p3, :cond_0

    .line 1942
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_0

    .line 1944
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1947
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/ims/MmTelFeatureConnection;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V

    .line 1948
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_2

    .line 1949
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    .line 1950
    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection;->getRegistrationTech()I

    move-result v2

    .line 1951
    if-eqz p3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 1952
    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    .line 1949
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :cond_2
    nop

    .line 1958
    return-void

    .line 1954
    :catch_0
    move-exception v1

    .line 1955
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    const-string v4, "changeMmTelCapability()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public close()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->closeConnection()V

    .line 1770
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 1771
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 1772
    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    .line 1773
    return-void
.end method

.method public connectIfServiceIsAvailable()V
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1560
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->createImsService()V

    .line 1562
    :cond_1
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1824
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1827
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1828
    :catch_0
    move-exception v0

    .line 1829
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "createCallProfile()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2165
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsCallSession;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2166
    :catch_0
    move-exception v0

    .line 2167
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateCallSession: Error, remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "createCallSession()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected createImsService()V
    .locals 2

    .line 2138
    const-string v0, "ImsManager"

    const-string v1, "Creating ImsService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->create(Landroid/content/Context;I)Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    .line 2142
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    new-instance v1, Lcom/android/ims/ImsManager$2;

    invoke-direct {v1, p0}, Lcom/android/ims/ImsManager$2;-><init>(Lcom/android/ims/ImsManager;)V

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->setStatusCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 2153
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2500
    const-string v0, "ImsManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfigUpdated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImsServiceProxy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ignoreDataEnabledChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isGbaValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isImsTurnOffAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isNonTtyOrTtyOnVolteEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isEnhanced4gLteModeSettingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2514
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getWfcMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcRoamingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2527
    return-void
.end method

.method public factoryReset()V
    .locals 4

    .line 2435
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "volte_vt_enabled"

    const-string v2, "enhanced_4g_lte_on_by_default_bool"

    .line 2437
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 2435
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2441
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_enabled"

    const-string v2, "carrier_default_wfc_ims_enabled_bool"

    .line 2443
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 2441
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2447
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_mode"

    const-string v2, "carrier_default_wfc_ims_mode_int"

    .line 2449
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2447
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2453
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_roaming_enabled"

    const-string v2, "carrier_default_wfc_ims_roaming_enabled_bool"

    .line 2455
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 2453
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2459
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "vt_ims_enabled"

    .line 2460
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v3

    .line 2459
    invoke-static {v0, v1, v3}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2463
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .line 2464
    return-void
.end method

.method public getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2056
    iget v0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2057
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 2058
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2059
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 2061
    :cond_0
    const/4 v2, 0x0

    .line 2062
    .local v2, "b":Landroid/os/PersistableBundle;
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v3, :cond_1

    .line 2064
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 2066
    :cond_1
    if-eqz v2, :cond_2

    .line 2067
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 2070
    :cond_2
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public getConfigInterface()Lcom/android/ims/ImsConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1919
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1922
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfigInterface()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    .line 1923
    .local v0, "config":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v0, :cond_0

    .line 1927
    new-instance v1, Lcom/android/ims/ImsConfig;

    invoke-direct {v1, v0}, Lcom/android/ims/ImsConfig;-><init>(Landroid/telephony/ims/aidl/IImsConfig;)V

    return-object v1

    .line 1924
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getConfigInterface()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    .end local v0    # "config":Landroid/telephony/ims/aidl/IImsConfig;
    :catch_0
    move-exception v0

    .line 1929
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getConfigInterface()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2288
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbm;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object v0

    .line 2292
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2294
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    .line 2296
    .local v0, "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-eqz v0, :cond_1

    .line 2300
    new-instance v1, Lcom/android/ims/ImsEcbm;

    invoke-direct {v1, v0}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    iput-object v1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    .end local v0    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    nop

    .line 2305
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object v0

    .line 2297
    .restart local v0    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getEcbmInterface()"

    const/16 v3, 0x385

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2301
    .end local v0    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getEcbmInterface()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getImsServiceState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2045
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    move-result v0

    return v0
.end method

.method protected getIntCarrierConfig(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2082
    iget v0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2083
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 2084
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2085
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 2087
    :cond_0
    const/4 v2, 0x0

    .line 2088
    .local v2, "b":Landroid/os/PersistableBundle;
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v3, :cond_1

    .line 2090
    iget-object v3, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 2092
    :cond_1
    if-eqz v2, :cond_2

    .line 2093
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 2096
    :cond_2
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/ImsMultiEndpoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2391
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    invoke-virtual {v0}, Lcom/android/ims/ImsMultiEndpoint;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    return-object v0

    .line 2395
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2397
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    .line 2399
    .local v0, "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    if-eqz v0, :cond_1

    .line 2403
    new-instance v1, Lcom/android/ims/ImsMultiEndpoint;

    invoke-direct {v1, v0}, Lcom/android/ims/ImsMultiEndpoint;-><init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V

    iput-object v1, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2407
    .end local v0    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    nop

    .line 2409
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMultiEndpoint:Lcom/android/ims/ImsMultiEndpoint;

    return-object v0

    .line 2400
    .restart local v0    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getMultiEndpointInterface()"

    const/16 v3, 0x386

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2404
    .end local v0    # "iImsMultiEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :catch_0
    move-exception v0

    .line 2405
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getMultiEndpointInterface()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getRecentImsDisconnectReasons()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation

    .line 2036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2038
    .local v0, "disconnectReasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/ImsReasonInfo;>;"
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mRecentDisconnectReasons:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2039
    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->makeACopy(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2040
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 2041
    :cond_0
    return-object v0
.end method

.method public getRegistrationTech()I
    .locals 3

    .line 1755
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistrationTech()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsManager"

    const-string v2, "getRegistrationTech: no connection to ImsService."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/4 v1, -0x1

    return v1
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2337
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2338
    :catch_0
    move-exception v0

    .line 2339
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getSmsFormat()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected getSubId()I
    .locals 4

    .line 1170
    iget v0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1171
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 1172
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1173
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1175
    :cond_0
    return v1
.end method

.method public getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    invoke-virtual {v0}, Lcom/android/ims/ImsUt;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object v0

    .line 1787
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1789
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    .line 1791
    .local v0, "iUt":Lcom/android/ims/internal/IImsUt;
    if-eqz v0, :cond_1

    .line 1796
    new-instance v1, Lcom/android/ims/ImsUt;

    invoke-direct {v1, v0}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;)V

    iput-object v1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    .end local v0    # "iUt":Lcom/android/ims/internal/IImsUt;
    nop

    .line 1801
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object v0

    .line 1792
    .restart local v0    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getSupplementaryServiceConfiguration()"

    const/16 v3, 0x321

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1797
    .end local v0    # "iUt":Lcom/android/ims/internal/IImsUt;
    :catch_0
    move-exception v0

    .line 1798
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getSupplementaryServiceConfiguration()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getWfcMode()I
    .locals 1

    .line 1030
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    return v0
.end method

.method public getWfcMode(Z)I
    .locals 3
    .param p1, "roaming"    # Z

    .line 1084
    if-nez p1, :cond_1

    .line 1087
    const-string v0, "editable_wfc_mode_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    const-string v0, "carrier_default_wfc_ims_mode_int"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .local v0, "setting":I
    goto :goto_0

    .line 1092
    .end local v0    # "setting":I
    :cond_0
    const-string v0, "wfc_ims_mode"

    const-string v1, "carrier_default_wfc_ims_mode_int"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1095
    .restart local v0    # "setting":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1101
    .end local v0    # "setting":I
    :cond_1
    const-string v0, "wfc_ims_roaming_mode"

    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1104
    .restart local v0    # "setting":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode (roaming) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1106
    :goto_1
    return v0
.end method

.method protected isDataEnabled()Z
    .locals 3

    .line 2471
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    return v0
.end method

.method public isDynamicBinding()Z
    .locals 1

    .line 1526
    iget-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigDynamicBind:Z

    return v0
.end method

.method public isEnhanced4gLteModeSettingEnabledByUser()Z
    .locals 4

    .line 536
    nop

    .line 537
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "volte_vt_enabled"

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 536
    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 539
    .local v0, "setting":I
    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 543
    .local v1, "onByDefault":Z
    const-string v2, "editable_enhanced_4g_lte_bool"

    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 547
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 545
    :cond_2
    :goto_1
    return v1
.end method

.method protected isGbaValid()Z
    .locals 5

    .line 1313
    const-string v0, "carrier_ims_gba_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1315
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1316
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v2

    .line 1317
    .local v2, "efIst":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1318
    const-string v3, "isGbaValid - ISF is NULL"

    invoke-static {v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1319
    return v1

    .line 1321
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    const/4 v3, 0x2

    .line 1322
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1323
    .local v1, "result":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGbaValid - GBA capable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", ISF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1324
    return v1

    .line 1326
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "result":Z
    .end local v2    # "efIst":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public isNonTtyOrTtyOnVolteEnabled()Z
    .locals 4

    .line 624
    const-string v0, "carrier_volte_tty_supported_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 626
    return v1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 630
    .local v0, "tm":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_1

    .line 631
    const-string v2, "ImsManager"

    const-string v3, "isNonTtyOrTtyOnVolteEnabled: telecom not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v1

    .line 634
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isServiceAvailable()Z
    .locals 3

    .line 1535
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 1536
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1537
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isResolvingImsBinding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1538
    const-string v1, "ImsManager"

    const-string v2, "isServiceAvailable: resolving IMS binding, returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v1, 0x0

    return v1

    .line 1542
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->connectIfServiceIsAvailable()V

    .line 1544
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    return v1
.end method

.method public isServiceReady()Z
    .locals 1

    .line 1551
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->connectIfServiceIsAvailable()V

    .line 1552
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderReady()Z

    move-result v0

    return v0
.end method

.method protected isTurnOffImsAllowedByPlatform()Z
    .locals 3

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.allow_ims_off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 910
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string v0, "persist.dbg.allow_ims_off"

    .line 911
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    const-string v0, "carrier_allow_turnoff_ims_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 913
    :cond_1
    :goto_0
    return v2
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 3

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 660
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const-string v0, "persist.dbg.volte_avail_ovr"

    .line 662
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_volte_available_bool"

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 667
    :goto_0
    return v2

    .line 664
    :cond_2
    :goto_1
    return v2
.end method

.method public isVolteProvisionedOnDevice()Z
    .locals 1

    .line 693
    const-string v0, "carrier_volte_provisioning_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVolteProvisioned()Z

    move-result v0

    return v0

    .line 698
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 3

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.vt_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 799
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const-string v0, "persist.dbg.vt_avail_ovr"

    .line 800
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_vt_available_bool"

    .line 807
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 805
    :goto_0
    return v2

    .line 802
    :cond_2
    :goto_1
    return v2
.end method

.method public isVtEnabledByUser()Z
    .locals 4

    .line 831
    nop

    .line 832
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "vt_ims_enabled"

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 831
    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 836
    .local v0, "setting":I
    const/4 v1, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isVtProvisionedOnDevice()Z
    .locals 1

    .line 762
    const-string v0, "carrier_volte_provisioning_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVtProvisioned()Z

    move-result v0

    return v0

    .line 767
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWfcEnabledByPlatform()Z
    .locals 3

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1292
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const-string v0, "persist.dbg.wfc_avail_ovr"

    .line 1293
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_wfc_ims_available_bool"

    .line 1300
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1302
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1298
    :goto_0
    return v2

    .line 1295
    :cond_2
    :goto_1
    return v2
.end method

.method public isWfcEnabledByUser()Z
    .locals 4

    .line 941
    nop

    .line 942
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_enabled"

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 941
    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 946
    .local v0, "setting":I
    if-ne v0, v3, :cond_0

    .line 947
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 950
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWfcProvisionedOnDevice()Z
    .locals 1

    .line 727
    const-string v0, "carrier_volte_override_wfc_provisioning_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_0
    const-string v0, "carrier_volte_provisioning_required_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isWfcProvisioned()Z

    move-result v0

    return v0

    .line 739
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isWfcRoamingEnabledByUser()Z
    .locals 4

    .line 1216
    nop

    .line 1217
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_roaming_enabled"

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 1216
    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 1219
    .local v0, "setting":I
    if-ne v0, v3, :cond_0

    .line 1220
    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1223
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callees"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1850
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1852
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1854
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 1855
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 1857
    .local v1, "session":Landroid/telephony/ims/ImsCallSession;
    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1858
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V

    goto :goto_0

    .line 1860
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V

    .line 1863
    :goto_0
    return-object v0
.end method

.method public onSmsReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2355
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->onSmsReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2359
    nop

    .line 2360
    return-void

    .line 2356
    :catch_0
    move-exception v0

    .line 2357
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "onSmsReady()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public open(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1608
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1610
    if-eqz p1, :cond_0

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    nop

    .line 1619
    return-void

    .line 1616
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "open()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1611
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeNotifyStatusChangedCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 1586
    if-eqz p1, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1589
    :cond_0
    const-string v0, "ImsManager"

    const-string v1, "removeNotifyStatusChangedCallback: callback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :goto_0
    return-void
.end method

.method public removeRegistrationListener(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1691
    if-eqz p1, :cond_0

    .line 1696
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    .line 1697
    const-string v0, "Registration callback removed."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    nop

    .line 1702
    return-void

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "removeRegistrationCallback(IRIB)"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1692
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1738
    if-eqz p1, :cond_0

    .line 1742
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1744
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V

    .line 1745
    const-string v0, "Registration Callback/Listener registered."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    nop

    .line 1751
    return-void

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "addRegistrationCallback()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1739
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2311
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/MmTelFeatureConnection;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2314
    nop

    .line 2315
    return-void

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "sendSms()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected setAdvanced4GMode(Z)V
    .locals 1
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2244
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2249
    if-eqz p1, :cond_0

    .line 2250
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setLteFeatureValues(Z)V

    .line 2251
    const-string v0, "setAdvanced4GMode: turnOnIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    goto :goto_0

    .line 2254
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2255
    const-string v0, "setAdvanced4GMode: turnOffIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2256
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    .line 2258
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setLteFeatureValues(Z)V

    .line 2260
    :goto_0
    return-void
.end method

.method public setConfigListener(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 1565
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    .line 1566
    return-void
.end method

.method public setEnhanced4gLteModeSetting(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 575
    const-string v0, "editable_enhanced_4g_lte_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    const-string v0, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result p1

    .line 580
    :cond_0
    nop

    .line 581
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "volte_vt_enabled"

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 580
    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 584
    .local v0, "prevSetting":I
    if-eqz p1, :cond_1

    .line 585
    const/4 v1, 0x1

    goto :goto_0

    .line 586
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->shouldForceUpdated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 587
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    const-string v2, "volte_vt_enabled"

    .line 588
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-static {v1, v2, v3}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    goto :goto_1

    .line 592
    :catch_0
    move-exception v1

    .line 597
    :cond_3
    :goto_1
    return-void
.end method

.method protected setLteFeatureValues(Z)V
    .locals 5
    .param p1, "turnOn"    # Z

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLteFeatureValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2207
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2208
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2209
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_0

    .line 2213
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2218
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2219
    const-string v3, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    .line 2221
    .local v3, "ignoreDataEnabledChanged":Z
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    .line 2222
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2223
    .local v1, "enableViLte":Z
    :goto_1
    const/4 v4, 0x2

    if-eqz v1, :cond_3

    .line 2224
    invoke-virtual {v0, v4, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 2228
    :cond_3
    invoke-virtual {v0, v4, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2234
    .end local v1    # "enableViLte":Z
    .end local v3    # "ignoreDataEnabledChanged":Z
    :cond_4
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/ims/MmTelFeatureConnection;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    goto :goto_3

    .line 2235
    :catch_0
    move-exception v1

    .line 2236
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLteFeatureValues: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public setRttEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1962
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    .line 1976
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1962
    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    .line 1963
    if-eqz p1, :cond_2

    goto :goto_2

    .line 1964
    :cond_2
    move v0, v1

    .line 1965
    .local v0, "value":I
    :goto_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/ims/-$$Lambda$ImsManager$jpd4qPKM1aFT_1D7HiZpiM__ddY;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/ims/-$$Lambda$ImsManager$jpd4qPKM1aFT_1D7HiZpiM__ddY;-><init>(Lcom/android/ims/ImsManager;ZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1975
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    .end local v0    # "value":I
    .end local v1    # "thread":Ljava/lang/Thread;
    goto :goto_4

    .line 1976
    :goto_3
    nop

    .line 1977
    .local v0, "e":Lcom/android/ims/ImsException;
    const-class v1, Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set RTT enabled to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_4
    return-void
.end method

.method public setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2346
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    nop

    .line 2351
    return-void

    .line 2347
    :catch_0
    move-exception v0

    .line 2348
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setSmsListener()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setTtyMode(I)V
    .locals 1
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1986
    const-string v0, "carrier_volte_tty_supported_bool"

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1988
    if-nez p1, :cond_0

    .line 1989
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1988
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V

    .line 1991
    :cond_1
    return-void
.end method

.method public setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2009
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 2012
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    nop

    .line 2017
    return-void

    .line 2013
    :catch_0
    move-exception v0

    .line 2014
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setTTYMode()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setVtSetting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 858
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "vt_ims_enabled"

    .line 859
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 865
    if-eqz p1, :cond_0

    .line 866
    const-string v0, "setVtSetting(b) : turnOnIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    goto :goto_0

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_2

    .line 871
    :cond_1
    const-string v0, "setVtSetting(b) : imsServiceAllowTurnOff -> turnOffIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_2
    :goto_0
    goto :goto_1

    .line 874
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "setVtSetting(b): "

    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 880
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public setWfcMode(I)V
    .locals 3
    .param p1, "wfcMode"    # I

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfcMode(i) - setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_mode"

    .line 1054
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1053
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1057
    return-void
.end method

.method public setWfcMode(IZ)V
    .locals 3
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1148
    if-nez p2, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfcMode(i,b) - setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_mode"

    .line 1151
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1150
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfcMode(i,b) (roaming) - setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_roaming_mode"

    .line 1155
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1154
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1158
    :goto_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 1159
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1160
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-ne p2, v1, :cond_1

    .line 1161
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1163
    :cond_1
    return-void
.end method

.method protected setWfcModeInternal(I)V
    .locals 3
    .param p1, "wfcMode"    # I

    .line 1183
    move v0, p1

    .line 1184
    .local v0, "value":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/ims/-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/-$$Lambda$ImsManager$fG9OFSag__H1aS1iACSm_HXxVsA;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1192
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1193
    return-void
.end method

.method public setWfcNonPersistent(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "wfcMode"    # I

    .line 988
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 991
    .local v1, "imsWfcModeFeatureValue":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 994
    if-eqz p1, :cond_1

    .line 995
    const-string v0, "setWfcSetting() : turnOnIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    goto :goto_1

    .line 997
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 998
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1000
    :cond_2
    const-string v0, "setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    .line 1004
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    goto :goto_2

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v2, "setWfcSetting(): "

    invoke-static {v2, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1008
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method

.method public setWfcRoamingSetting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1243
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_roaming_enabled"

    .line 1244
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1243
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1248
    return-void
.end method

.method protected setWfcRoamingSettingInternal(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1251
    if-eqz p1, :cond_0

    .line 1252
    const/4 v0, 0x1

    goto :goto_0

    .line 1253
    :cond_0
    const/4 v0, 0x0

    .line 1254
    .local v0, "value":I
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/ims/-$$Lambda$ImsManager$7h4QYewD4pT0yZmloG4PzRq2ov0;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/-$$Lambda$ImsManager$7h4QYewD4pT0yZmloG4PzRq2ov0;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1262
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1263
    return-void
.end method

.method public setWfcSetting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 972
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    const-string v1, "wfc_ims_enabled"

    .line 973
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 972
    invoke-static {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 976
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 977
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/ims/ImsManager;->setWfcNonPersistent(ZI)V

    .line 978
    return-void
.end method

.method protected shouldForceUpdated()Z
    .locals 1

    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessCall(Z[Ljava/lang/String;)I
    .locals 4
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2377
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnection:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->shouldProcessCall(Z[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2378
    :catch_0
    move-exception v0

    .line 2379
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "shouldProcessCall()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public takeCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "incomingCallExtras"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeCall :: incomingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1881
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 1883
    const/16 v0, 0x65

    if-eqz p2, :cond_2

    .line 1888
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 1890
    .local v1, "callId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1896
    if-eqz p1, :cond_0

    .line 1901
    :try_start_0
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1903
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V

    .line 1904
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 1906
    return-object v0

    .line 1897
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No pending session for the call"

    const/16 v3, 0x6b

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Lcom/android/ims/ImsException;

    const/4 v3, 0x0

    const-string v4, "takeCall()"

    invoke-direct {v2, v4, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1891
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call ID missing in the incoming call intent"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1884
    .end local v1    # "callId":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Can\'t retrieve session with null intent"

    invoke-direct {v1, v2, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method protected turnOffIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2268
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 2269
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2270
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->disableIms(I)V

    .line 2271
    return-void
.end method

.method protected turnOnIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2191
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 2192
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2193
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->enableIms(I)V

    .line 2194
    return-void
.end method

.method public updateImsServiceConfig(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 1379
    if-nez p1, :cond_0

    .line 1380
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1381
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 1382
    const-string v1, "updateImsServiceConfig: SIM not ready"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1384
    return-void

    .line 1388
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    .line 1395
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->updateVolteFeatureValue()Z

    move-result v0

    .line 1396
    .local v0, "isImsUsed":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->updateWfcFeatureAndProvisionedValues()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1397
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1399
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1408
    :cond_2
    const-string v1, "updateImsServiceConfig: turnOffIms"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    goto :goto_1

    .line 1404
    :cond_3
    :goto_0
    const-string v1, "updateImsServiceConfig: turnOnIms"

    invoke-static {v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1412
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    .end local v0    # "isImsUsed":Z
    goto :goto_2

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "updateImsServiceConfig: "

    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 1418
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_4
    :goto_2
    return-void
.end method

.method protected updateVideoCallFeatureValue()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    .line 1449
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    .line 1450
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    .line 1451
    .local v2, "isNonTty":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v3

    .line 1452
    .local v3, "isDataEnabled":Z
    const-string v4, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v4

    .line 1455
    .local v4, "ignoreDataEnabledChanged":Z
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v5

    .line 1458
    .local v6, "isFeatureOn":Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVideoCallFeatureValue: available = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", nonTTY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", data enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1463
    const/4 v7, 0x2

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 1466
    return v6
.end method

.method protected updateVolteFeatureValue()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1426
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    .line 1427
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    .line 1428
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    .line 1429
    .local v2, "isNonTty":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 1431
    .local v5, "isFeatureOn":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVolteFeatureValue: available = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", nonTTY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 1438
    return v5
.end method

.method protected updateWfcFeatureAndProvisionedValues()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1475
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1476
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 1477
    .local v1, "isNetworkRoaming":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    .line 1478
    .local v2, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    .line 1479
    .local v3, "enabled":Z
    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v4

    .line 1480
    .local v4, "mode":I
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v5

    .line 1481
    .local v5, "roaming":Z
    const/4 v6, 0x1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 1483
    .local v7, "isFeatureOn":Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWfcFeatureAndProvisionedValues: available = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", roaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p0, v6, v6, v7}, Lcom/android/ims/ImsManager;->changeMmTelCapability(IIZ)V

    .line 1491
    if-nez v7, :cond_1

    .line 1492
    const/4 v4, 0x1

    .line 1493
    const/4 v5, 0x0

    .line 1500
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1502
    invoke-virtual {p0, v5}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1504
    return v7
.end method
