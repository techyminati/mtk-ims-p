.class public Lcom/android/ims/ImsManager$Connector;
.super Landroid/os/Handler;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$Connector$RetryTimeout;,
        Lcom/android/ims/ImsManager$Connector$Listener;
    }
.end annotation


# static fields
.field private static final CEILING_SERVICE_RETRY_COUNT:I = 0x6

.field private static final IMS_RETRY_STARTING_TIMEOUT_MS:I = 0x1f4


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mGetServiceRunnable:Ljava/lang/Runnable;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mListener:Lcom/android/ims/ImsManager$Connector$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private final mNotifyStateChangedRunnable:Ljava/lang/Runnable;

.field private mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

.field private final mNotifyUnavailableRunnable:Ljava/lang/Runnable;

.field protected final mPhoneId:I

.field private mRetryCount:I

.field public mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsManager$Connector$Listener;

    .line 270
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 189
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lcom/android/ims/ImsManager$Connector$1;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$Connector$1;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 259
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mMainHandler:Landroid/os/Handler;

    .line 365
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$JNspzXYs_VNdKtRMcDRuDRf7jYo;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$JNspzXYs_VNdKtRMcDRuDRf7jYo;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStateChangedRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$OKN9Ow8uS0A7InItPt7xwt8m45A;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$OKN9Ow8uS0A7InItPt7xwt8m45A;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyUnavailableRunnable:Ljava/lang/Runnable;

    .line 271
    iput-object p1, p0, Lcom/android/ims/ImsManager$Connector;->mContext:Landroid/content/Context;

    .line 272
    iput p2, p0, Lcom/android/ims/ImsManager$Connector;->mPhoneId:I

    .line 273
    iput-object p3, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    .line 274
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->access$400(Landroid/content/Context;I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mMainHandler:Landroid/os/Handler;

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsManager$Connector$Listener;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 278
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$N5r1SvOgM0jfHDwKkcQbyw_uTP0;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lcom/android/ims/ImsManager$Connector$1;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$Connector$1;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 259
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$yM9scWJWjDp_h0yrkCgrjFZH5oI;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mMainHandler:Landroid/os/Handler;

    .line 365
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$JNspzXYs_VNdKtRMcDRuDRf7jYo;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$JNspzXYs_VNdKtRMcDRuDRf7jYo;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStateChangedRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$OKN9Ow8uS0A7InItPt7xwt8m45A;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$OKN9Ow8uS0A7InItPt7xwt8m45A;-><init>(Lcom/android/ims/ImsManager$Connector;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyUnavailableRunnable:Ljava/lang/Runnable;

    .line 279
    iput-object p1, p0, Lcom/android/ims/ImsManager$Connector;->mContext:Landroid/content/Context;

    .line 280
    iput p2, p0, Lcom/android/ims/ImsManager$Connector;->mPhoneId:I

    .line 281
    iput-object p3, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    .line 282
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->access$400(Landroid/content/Context;I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mMainHandler:Landroid/os/Handler;

    .line 283
    return-void
.end method

.method static synthetic access$100(Lcom/android/ims/ImsManager$Connector;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 181
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStateChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ims/ImsManager$Connector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 181
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ims/ImsManager$Connector;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager$Connector;

    .line 181
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyUnavailableRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getImsService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 328
    const-string v0, "Connector: getImsService"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->access$000(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/ImsManager$Connector;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    .line 333
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->addNotifyStatusChangedCallbackIfAvailable(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-interface {v0}, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;->notifyStateChanged()V

    .line 339
    return-void

    .line 334
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/ims/ImsManager$Connector;)V
    .locals 1

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->getImsService()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->retryGetImsService()V

    .line 195
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/ims/ImsManager$Connector;)I
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget v1, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    mul-int/lit16 v1, v1, 0x1f4

    .line 263
    .local v1, "timeout":I
    iget v3, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    const/4 v4, 0x6

    if-gt v3, v4, :cond_0

    .line 264
    iget v3, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 266
    :cond_0
    monitor-exit v0

    return v1

    .line 267
    .end local v1    # "timeout":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$2(Lcom/android/ims/ImsManager$Connector;)V
    .locals 3

    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "status":I
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getImsServiceState()I

    move-result v2

    move v0, v2

    .line 373
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->access$000(Ljava/lang/String;)V

    .line 375
    packed-switch v0, :pswitch_data_0

    .line 387
    const-string v1, "Unexpected State!"

    goto :goto_0

    .line 377
    :pswitch_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyReady()V

    .line 378
    goto :goto_1

    .line 383
    :pswitch_1
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyNotReady()V

    .line 384
    goto :goto_1

    .line 387
    :goto_0
    invoke-static {v1}, Lcom/android/ims/ImsManager;->access$000(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 394
    .end local v0    # "status":I
    :goto_1
    goto :goto_2

    .line 373
    .restart local v0    # "status":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 390
    .end local v0    # "status":I
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyNotReady()V

    .line 393
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->retryGetImsService()V

    .line 395
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$3(Lcom/android/ims/ImsManager$Connector;)V
    .locals 1

    .line 398
    const-string v0, "mNotifyUnavailableRunnable start!"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->access$000(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyNotReady()V

    .line 400
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->retryGetImsService()V

    .line 401
    return-void
.end method

.method private notifyNotReady()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    invoke-interface {v0}, Lcom/android/ims/ImsManager$Connector$Listener;->connectionUnavailable()V

    .line 361
    return-void
.end method

.method private notifyReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    .line 345
    .local v1, "manager":Lcom/android/ims/ImsManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mListener:Lcom/android/ims/ImsManager$Connector$Listener;

    invoke-interface {v0, v1}, Lcom/android/ims/ImsManager$Connector$Listener;->connectionReady(Lcom/android/ims/ImsManager;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    nop

    .line 354
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connector: notifyReady exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    throw v0

    .line 345
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "manager":Lcom/android/ims/ImsManager;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private retryGetImsService()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeNotifyStatusChangedCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 319
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    const-string v0, "Connector: Retrying getting ImsService..."

    invoke-static {v0}, Lcom/android/ims/ImsManager;->access$500(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager$Connector;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mRetryTimeout:Lcom/android/ims/ImsManager$Connector$RetryTimeout;

    invoke-interface {v1}, Lcom/android/ims/ImsManager$Connector$RetryTimeout;->get()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/ImsManager$Connector;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    return-void

    .line 320
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsManager$Connector;->mRetryCount:I

    .line 294
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager$Connector;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager$Connector;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector;->mNotifyStatusChangedCallback:Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeNotifyStatusChangedCallback(Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;)V

    .line 307
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-direct {p0}, Lcom/android/ims/ImsManager$Connector;->notifyNotReady()V

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
