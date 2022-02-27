.class public Lcom/android/ims/MmTelFeatureConnection;
.super Ljava/lang/Object;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;,
        Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;,
        Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;,
        Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MmTelFeatureConnection"


# instance fields
.field protected mBinder:Landroid/os/IBinder;

.field private final mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

.field private mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureStateCached:Ljava/lang/Integer;

.field private volatile mIsAvailable:Z

.field private final mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureCallback;

.field private final mLock:Ljava/lang/Object;

.field private mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

.field protected final mSlotId:I

.field private mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

.field private mSupportsEmergencyCalling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 69
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    .line 71
    iput-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 78
    new-instance v0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ij8S4RNRiQPHfppwkejp36BG78I;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$ij8S4RNRiQPHfppwkejp36BG78I;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 138
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;Lcom/android/ims/MmTelFeatureConnection$1;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    .line 212
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Lcom/android/ims/MmTelFeatureConnection$1;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    .line 308
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$1;

    invoke-direct {v0, p0}, Lcom/android/ims/MmTelFeatureConnection$1;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 374
    iput p2, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    .line 375
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 58
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 58
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->onRemovedOrDied()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/ims/MmTelFeatureConnection;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 58
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/ims/MmTelFeatureConnection;)Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 58
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 58
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/ims/MmTelFeatureConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 58
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/ims/MmTelFeatureConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/ims/MmTelFeatureConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    return p1
.end method

.method public static create(Landroid/content/Context;I)Lcom/android/ims/MmTelFeatureConnection;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 268
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/MmTelFeatureConnection;-><init>(Landroid/content/Context;I)V

    .line 270
    .local v0, "serviceProxy":Lcom/android/ims/MmTelFeatureConnection;
    invoke-static {p0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 271
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 272
    const-string v2, "MmTelFeatureConnection"

    const-string v3, "create: TelephonyManager is null!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v0

    .line 278
    :cond_0
    nop

    .line 279
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getListener()Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v2

    .line 278
    invoke-virtual {v1, p1, v2}, Landroid/telephony/TelephonyManager;->getImsMmTelFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    .line 280
    .local v2, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/ims/MmTelFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 283
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    goto :goto_0

    .line 285
    :cond_1
    const-string v3, "MmTelFeatureConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create: binder is null! Slot Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-object v0
.end method

.method private getConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    monitor-exit v0

    return-object v1

    .line 425
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 426
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 427
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 428
    iget v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 429
    .local v2, "configBinder":Landroid/telephony/ims/aidl/IImsConfig;
    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    if-nez v0, :cond_2

    .line 432
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    .line 434
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    return-object v0

    .line 434
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 425
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "configBinder":Landroid/telephony/ims/aidl/IImsConfig;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    monitor-exit v0

    return-object v1

    .line 404
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 407
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 408
    iget v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 409
    .local v2, "regBinder":Landroid/telephony/ims/aidl/IImsRegistration;
    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 412
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    if-nez v0, :cond_2

    .line 413
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 415
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 404
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "regBinder":Landroid/telephony/ims/aidl/IImsRegistration;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1
    .param p1, "b"    # Landroid/os/IBinder;

    .line 721
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 291
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 2

    .line 79
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "DeathRecipient triggered, binder died."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->onRemovedOrDied()V

    .line 81
    return-void
.end method

.method private onRemovedOrDied()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    if-eqz v1, :cond_1

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    .line 386
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 387
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    .line 388
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-interface {v1}, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;->notifyUnavailable()V

    .line 395
    :cond_1
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private retrieveFeatureState()Ljava/lang/Integer;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 680
    :catch_0
    move-exception v0

    .line 684
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 604
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSms(III)V

    .line 605
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 612
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsReport(III)V

    .line 613
    monitor-exit v0

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCapabilityCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallback(Ljava/lang/Object;)V

    .line 500
    return-void
.end method

.method public addRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallback(Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "callback"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 511
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 512
    monitor-exit v0

    .line 513
    return-void

    .line 512
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkBinderConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    return-void

    .line 726
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not available for that feature."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkServiceIsReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    return-void

    .line 716
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not ready to accept commands."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeConnection()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->close()V

    .line 475
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->close()V

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 481
    :cond_0
    monitor-exit v0

    .line 484
    goto :goto_0

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MmTelFeatureConnection"

    const-string v2, "closeConnection: couldn\'t remove listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .param p1, "callServiceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 536
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 544
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfigInterface()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 572
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFeatureState()I
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 659
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 661
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->retrieveFeatureState()Ljava/lang/Integer;

    move-result-object v1

    .line 662
    .local v1, "status":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 663
    if-nez v1, :cond_1

    .line 664
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v2

    return v0

    .line 668
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 667
    :cond_1
    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 668
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    const-string v0, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureState - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 668
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 659
    .end local v1    # "status":Ljava/lang/Integer;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getListener()Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 587
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRegistrationTech()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 562
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v1

    return v1

    .line 565
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 619
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 551
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 552
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinderReady()Z
    .locals 2

    .line 704
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyMmTelAvailable()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    return v0
.end method

.method public onSmsReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 626
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onSmsReady()V

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 469
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 470
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 527
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    .line 528
    invoke-direct {p0, v2}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityStatus()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    monitor-exit v0

    .line 527
    return-object v1

    .line 529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryEnabledCapabilities(IILandroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "callback"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 519
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 521
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCapabilityCallback(Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Ljava/lang/Object;)V

    .line 505
    return-void
.end method

.method public removeRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 595
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 597
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 447
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :cond_0
    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 456
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 633
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setStatusCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V
    .locals 0
    .param p1, "c"    # Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 691
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mStatusCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 692
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 580
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    .line 581
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldProcessCall(Z[Ljava/lang/String;)I
    .locals 2
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isEmergencyMmTelAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "MmTel does not support emergency over IMS, fallback to CS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v0, 0x1

    return v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 646
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
