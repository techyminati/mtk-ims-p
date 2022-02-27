.class public Lcom/mediatek/ims/MtkImsCallSessionProxy;
.super Ljava/lang/Object;
.source "MtkImsCallSessionProxy.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsCallSessionProxy$ImsCallLogLevel;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsCallSessionProxy"


# instance fields
.field private mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

.field private mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

.field private mOpImsServiceCall:Lcom/mediatek/ims/internal/op/OpImsServiceCall;

.field private mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "phoneId"    # I

    .line 189
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsCallSessionProxy() : RILAdapter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    move-object v3, p0

    invoke-direct {v3, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 192
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;-><init>(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 180
    invoke-static {}, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->getInstance()Lcom/mediatek/ims/internal/op/OpImsServiceFactory;

    move-result-object v0

    .line 181
    .local v0, "factory":Lcom/mediatek/ims/internal/op/OpImsServiceFactory;
    invoke-interface {v0, p1, p8}, Lcom/mediatek/ims/internal/op/OpImsServiceFactory;->makeOpImsServiceCall(Landroid/content/Context;I)Lcom/mediatek/ims/internal/op/OpImsServiceCall;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mOpImsServiceCall:Lcom/mediatek/ims/internal/op/OpImsServiceCall;

    .line 182
    invoke-interface {v0}, Lcom/mediatek/ims/internal/op/OpImsServiceFactory;->makeOpImsCallSessionProxy()Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    .line 183
    return-void
.end method

.method private logWithCallId(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lvl"    # I

    .line 433
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 434
    const-string v0, "MtkImsCallSessionProxy"

    const-string v1, "logWithCallId with mAospImsCallSessionProxy = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "mCallId":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p2, :cond_1

    .line 442
    const-string v1, "MtkImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p2, :cond_2

    .line 444
    const-string v1, "MtkImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 445
    :cond_2
    const/4 v1, 0x3

    if-ne v1, p2, :cond_3

    .line 446
    const-string v1, "MtkImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_3
    const/4 v1, 0x4

    if-ne v1, p2, :cond_4

    .line 448
    const-string v1, "MtkImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_4
    const/4 v1, 0x5

    if-ne v1, p2, :cond_5

    .line 450
    const-string v1, "MtkImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_5
    const-string v1, "MtkImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void
.end method


# virtual methods
.method public callTerminated()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->callTerminated()V

    .line 359
    return-void
.end method

.method public cancelDeviceSwitch()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 286
    const-string v0, "cancelDeviceSwitch() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 287
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->cancelDeviceSwitch()V

    .line 290
    return-void
.end method

.method public close()V
    .locals 2

    .line 196
    const-string v0, "close() : MtkImsCallSessionProxy is going to be closed!!! "

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 200
    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 201
    return-void
.end method

.method public deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 278
    const-string v0, "deviceSwitch() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 279
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 262
    const-string v0, "explicitCallTransfer() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 263
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->explicitCallTransfer()V

    .line 266
    return-void
.end method

.method public getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "getCallId() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 206
    const-string v0, ""

    return-object v0

    .line 210
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getCallId() : RemoteException getCallId()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 213
    const-string v1, ""

    return-object v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "getCallProfile() : mCallSessionImpl is null"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 220
    return-object v1

    .line 224
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getCallProfile() : RemoteException getCallProfile()"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 227
    return-object v1
.end method

.method getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 400
    const-string v0, "ConferenceEventListener() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 401
    const/4 v0, 0x0

    return-object v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "isIncomingCallMultiparty() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 247
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isIncomingCallMultiparty()Z

    move-result v0

    return v0
.end method

.method notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 375
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 376
    const-string v0, "notifyCallSessionMergeComplete() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 377
    return-void

    .line 380
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyCallSessionMergeComplete() : RemoteException when MTK session merged started"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 384
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyCallSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 363
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 364
    const-string v0, "notifyCallSessionMergeStarted() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 365
    return-void

    .line 368
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyCallSessionMergeStarted() : RemoteException when MTK session merged started"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyDeviceSwitchFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 330
    const-string v0, "MtkImsCallSessionProxy"

    const-string v1, "notifyTransferFailed()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 332
    const-string v0, "notifyDeviceSwitchFailed() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 333
    return-void

    .line 336
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionDeviceSwitchFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyDeviceSwitchFailed() : RemoteException notifyDeviceSwitchFailed()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyDeviceSwitched()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "notifyDeviceSwitched() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 319
    return-void

    .line 322
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionDeviceSwitched(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyDeviceSwitched() : RemoteException notifyDeviceSwitched()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyRedialEcc()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 388
    const-string v0, "MtkImsCallSessionProxy"

    const-string v1, "notifyRedialEcc() : mMtkListener is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 392
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsCallSessionProxy"

    const-string v2, "notifyTransferred() : RemoteException callSessionTransferred()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyRttECCRedialEvent()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;->notifyRttECCRedialEvent(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 351
    return-void
.end method

.method public notifyTextCapabilityChanged(IIII)V
    .locals 7
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteCapability"    # I

    .line 344
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;->notifyTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V

    .line 347
    return-void
.end method

.method notifyTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "notifyTransferFailed() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 307
    return-void

    .line 310
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTransferFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyTransferFailed() : RemoteException callSessionTransferFailed()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyTransferred()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 294
    const-string v0, "notifyTransferred() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 295
    return-void

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTransferred(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyTransferred() : RemoteException callSessionTransferred()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 355
    return-void
.end method

.method public sendDtmfbyTarget(CLandroid/os/Message;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "target"    # Landroid/os/Messenger;

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "sendDtmfbyTarget() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 255
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendDtmfbyTarget(CLandroid/os/Message;Landroid/os/Messenger;)V

    .line 258
    return-void
.end method

.method public setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p1, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 426
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 427
    return-void
.end method

.method setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 241
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V

    .line 242
    return-void
.end method

.method public setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 233
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 234
    return-void
.end method

.method public setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 0
    .param p1, "serviceImpl"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 418
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 419
    return-void
.end method

.method terminate(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 407
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 411
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 269
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 270
    const-string v0, "unattendedCallTransfer() : mCallSessionImpl is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 271
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->unattendedCallTransfer(Ljava/lang/String;I)V

    .line 274
    return-void
.end method
