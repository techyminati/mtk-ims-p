.class public Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;,
        Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field private final mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVideoState:I

.field private mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVideoEnabled:Z

.field private mUseVideoPauseWorkaround:Z

.field private final mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

.field private mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V
    .locals 4
    .param p1, "videoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    .line 70
    new-instance v0, Lcom/android/ims/internal/VideoPauseTracker;

    invoke-direct {v0}, Lcom/android/ims/internal/VideoPauseTracker;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    .line 75
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V

    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 150
    new-instance v1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    .line 234
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 237
    new-instance v0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;)V

    iput-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    .line 238
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    goto :goto_0

    .line 240
    :cond_0
    iput-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mBinder:Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;

    .line 242
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsVideoCallProvider;Lcom/android/ims/internal/VideoPauseTracker;)V
    .locals 0
    .param p1, "videoProvider"    # Lcom/android/ims/internal/IImsVideoCallProvider;
    .param p2, "videoPauseTracker"    # Lcom/android/ims/internal/VideoPauseTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    .line 249
    iput-object p2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 50
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 50
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 50
    iget v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 50
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 50
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 50
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method public static isPauseRequest(II)Z
    .locals 3
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 368
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    .line 369
    .local v0, "fromPaused":Z
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 371
    .local v1, "toPaused":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isResumeRequest(II)Z
    .locals 3
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 383
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    .line 384
    .local v0, "fromPaused":Z
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 386
    .local v1, "toPaused":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isTurnOffCameraRequest(II)Z
    .locals 1
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 397
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0
.end method

.method public static isTurnOnCameraRequest(II)Z
    .locals 1
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 409
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0
.end method


# virtual methods
.method public addImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 142
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public maybeFilterPauseResume(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;I)Landroid/telecom/VideoProfile;
    .locals 12
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "source"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 433
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 434
    .local v0, "fromVideoState":I
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 444
    .local v1, "toVideoState":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 445
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 448
    .local v4, "isPauseSpecialCase":Z
    :goto_0
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isPauseRequest(II)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v3

    .line 449
    .local v5, "isPauseRequest":Z
    :goto_2
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isResumeRequest(II)Z

    move-result v6

    .line 450
    .local v6, "isResumeRequest":Z
    const/4 v7, 0x2

    if-eqz v5, :cond_3

    .line 451
    const-string v8, "maybeFilterPauseResume: isPauseRequest (from=%s, to=%s)"

    new-array v7, v7, [Ljava/lang/Object;

    .line 452
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    .line 453
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    .line 451
    invoke-static {p0, v8, v7}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v2, p3}, Lcom/android/ims/internal/VideoPauseTracker;->shouldPauseVideoFor(I)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v4, :cond_6

    .line 461
    and-int/lit8 v1, v1, -0x5

    .line 462
    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object p2, v2

    goto :goto_3

    .line 464
    :cond_3
    if-eqz v6, :cond_6

    .line 465
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isTurnOffCameraRequest(II)Z

    move-result v8

    .line 466
    .local v8, "isTurnOffCameraRequest":Z
    invoke-static {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isTurnOnCameraRequest(II)Z

    move-result v9

    .line 478
    .local v9, "isTurnOnCameraRequest":Z
    iget-boolean v10, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    if-eqz v10, :cond_5

    if-nez v8, :cond_4

    if-eqz v9, :cond_5

    .line 479
    :cond_4
    const-string v10, "maybeFilterPauseResume: isResumeRequest, but camera turning on/off so skipping (from=%s, to=%s)"

    new-array v7, v7, [Ljava/lang/Object;

    .line 481
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v2

    .line 482
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    .line 479
    invoke-static {p0, v10, v7}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    return-object p2

    .line 485
    :cond_5
    const-string v10, "maybeFilterPauseResume: isResumeRequest (from=%s, to=%s)"

    new-array v7, v7, [Ljava/lang/Object;

    .line 486
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v2

    .line 487
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    .line 485
    invoke-static {p0, v10, v7}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v2, p3}, Lcom/android/ims/internal/VideoPauseTracker;->shouldResumeVideoFor(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 492
    or-int/lit8 v1, v1, 0x4

    .line 493
    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object p2, v2

    .line 497
    .end local v8    # "isTurnOffCameraRequest":Z
    .end local v9    # "isTurnOnCameraRequest":Z
    :cond_6
    :goto_3
    return-object p2
.end method

.method public onRequestCameraCapabilities()V
    .locals 1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    :goto_0
    return-void
.end method

.method public onRequestConnectionDataUsage()V
    .locals 1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 349
    :goto_0
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 7
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 298
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->isResumeRequest(II)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 305
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    const-string v1, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; skipping resume request - already resumed."

    new-array v2, v2, [Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 310
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 307
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->maybeFilterPauseResume(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;I)Landroid/telecom/VideoProfile;

    move-result-object v1

    move-object p2, v1

    .line 317
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 318
    .local v1, "fromVideoState":I
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    .line 319
    .local v4, "toVideoState":I
    const-string v5, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; "

    new-array v2, v2, [Ljava/lang/Object;

    .line 320
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    .line 321
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 319
    invoke-static {p0, v5, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "fromVideoState":I
    .end local v4    # "toVideoState":I
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    :goto_0
    return-void

    .line 299
    :cond_2
    :goto_1
    const-string v1, "onSendSessionModifyRequest: null profile in request."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 333
    :goto_0
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCamera(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    :goto_0
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    :goto_0
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    :goto_0
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    :goto_0
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    :goto_0
    return-void
.end method

.method public onSetZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    :goto_0
    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 5
    .param p1, "newVideoState"    # I

    .line 572
    iget v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    const-string v0, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s, clearing pending pause requests."

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 576
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 577
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 574
    invoke-static {p0, v0, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0}, Lcom/android/ims/internal/VideoPauseTracker;->clearPauseRequests()V

    goto :goto_0

    .line 580
    :cond_0
    const-string v0, "onVideoStateChanged: currentVideoState=%s, newVideoState=%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 581
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 582
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 580
    invoke-static {p0, v0, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    :goto_0
    iput p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCurrentVideoState:I

    .line 585
    return-void
.end method

.method public pauseVideo(II)V
    .locals 6
    .param p1, "fromVideoState"    # I
    .param p2, "source"    # I

    .line 508
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p2}, Lcom/android/ims/internal/VideoPauseTracker;->shouldPauseVideoFor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 511
    .local v0, "fromProfile":Landroid/telecom/VideoProfile;
    new-instance v2, Landroid/telecom/VideoProfile;

    or-int/lit8 v3, p1, 0x4

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 514
    .local v2, "toProfile":Landroid/telecom/VideoProfile;
    :try_start_0
    const-string v3, "pauseVideo: fromVideoState=%s, toVideoState=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 515
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 514
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v1, v0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 520
    .end local v0    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "toProfile":Landroid/telecom/VideoProfile;
    :goto_0
    goto :goto_1

    .line 521
    :cond_0
    const-string v0, "pauseVideo: video already paused"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    :goto_1
    return-void
.end method

.method public registerForDataUsageUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public removeImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 146
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public resumeVideo(II)V
    .locals 6
    .param p1, "fromVideoState"    # I
    .param p2, "source"    # I

    .line 533
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p2}, Lcom/android/ims/internal/VideoPauseTracker;->shouldResumeVideoFor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 536
    .local v0, "fromProfile":Landroid/telecom/VideoProfile;
    new-instance v2, Landroid/telecom/VideoProfile;

    and-int/lit8 v3, p1, -0x5

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 539
    .local v2, "toProfile":Landroid/telecom/VideoProfile;
    :try_start_0
    const-string v3, "resumeVideo: fromVideoState=%s, toVideoState=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 540
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 541
    invoke-virtual {v2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 539
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoCallProvider:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v1, v0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 545
    .end local v0    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "toProfile":Landroid/telecom/VideoProfile;
    :goto_0
    goto :goto_1

    .line 546
    :cond_0
    const-string v0, "resumeVideo: remaining paused (paused from other sources)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    :goto_1
    return-void
.end method

.method public setIsVideoEnabled(Z)V
    .locals 0
    .param p1, "isVideoEnabled"    # Z

    .line 594
    iput-boolean p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mIsVideoEnabled:Z

    .line 595
    return-void
.end method

.method public setUseVideoPauseWorkaround(Z)V
    .locals 0
    .param p1, "useVideoPauseWorkaround"    # Z

    .line 561
    iput-boolean p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mUseVideoPauseWorkaround:Z

    .line 562
    return-void
.end method

.method public unregisterForDataUsageUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 138
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 139
    return-void
.end method

.method public wasVideoPausedFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 557
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->mVideoPauseTracker:Lcom/android/ims/internal/VideoPauseTracker;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->wasVideoPausedFromSource(I)Z

    move-result v0

    return v0
.end method
