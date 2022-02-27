.class public Lcom/mediatek/ims/MtkImsUtImpl;
.super Lcom/mediatek/ims/feature/MtkImsUtImplBase;
.source "MtkImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x4b0

.field static final IMS_UT_EVENT_SETUP_XCAP_USER_AGENT_STRING:I = 0x4b3

.field static final IMS_UT_EVENT_SET_CB_WITH_PWD:I = 0x4b2

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x4b1

.field private static final TAG:Ljava/lang/String; = "MtkImsUtImpl"

.field private static final mLock:Ljava/lang/Object;

.field private static sMtkImsUtImpls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/MtkImsUtImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

.field private mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/MtkImsUtImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 140
    invoke-direct {p0}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

    .line 100
    iput-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    .line 102
    iput-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mPhoneId:I

    .line 141
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/ImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    .line 144
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtkImsUtImplResult"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 147
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;-><init>(Lcom/mediatek/ims/MtkImsUtImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mHandler:Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;

    .line 149
    iput-object p3, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 150
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v2, p2}, Lcom/mediatek/ims/ImsService;->getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 151
    iput p2, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mPhoneId:I

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUtImpl;

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUtImpl;

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/MtkImsUtImpl;

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    return-object v0
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .locals 1
    .param p1, "cbType"    # I

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 415
    const/4 v0, 0x0

    return-object v0

    .line 413
    :pswitch_0
    const-string v0, "BS_MT"

    return-object v0

    .line 410
    :pswitch_1
    const-string v0, "AC"

    return-object v0

    .line 408
    :pswitch_2
    const-string v0, "AG"

    return-object v0

    .line 406
    :pswitch_3
    const-string v0, "AB"

    return-object v0

    .line 404
    :pswitch_4
    const-string v0, "ACR"

    return-object v0

    .line 401
    :pswitch_5
    const-string v0, "IR"

    return-object v0

    .line 399
    :pswitch_6
    const-string v0, "OX"

    return-object v0

    .line 397
    :pswitch_7
    const-string v0, "OI"

    return-object v0

    .line 395
    :pswitch_8
    const-string v0, "AO"

    return-object v0

    .line 393
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

.method public static getInstance(I)Lcom/mediatek/ims/MtkImsUtImpl;
    .locals 3
    .param p0, "phoneId"    # I

    .line 123
    sget-object v0, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MtkImsUtImpl;

    .line 126
    .local v1, "m":Lcom/mediatek/ims/MtkImsUtImpl;
    monitor-exit v0

    return-object v1

    .line 129
    .end local v1    # "m":Lcom/mediatek/ims/MtkImsUtImpl;
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/MtkImsUtImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "service"    # Lcom/mediatek/ims/ImsService;

    .line 111
    sget-object v0, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MtkImsUtImpl;

    .line 114
    .local v1, "m":Lcom/mediatek/ims/MtkImsUtImpl;
    monitor-exit v0

    return-object v1

    .line 116
    .end local v1    # "m":Lcom/mediatek/ims/MtkImsUtImpl;
    :cond_0
    sget-object v1, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/ims/MtkImsUtImpl;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/mediatek/ims/MtkImsUtImpl;->sMtkImsUtImpls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MtkImsUtImpl;

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public explicitCallTransfer(Landroid/os/Message;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "target"    # Landroid/os/Messenger;

    .line 269
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mPhoneId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/mediatek/ims/ImsService;->explicitCallTransfer(ILandroid/os/Message;Landroid/os/Messenger;)V

    .line 270
    return-void
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 3

    .line 165
    const-string v0, "MtkImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtIMPUFromNetwork(): phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getXui(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXcapConflictErrorMessage()Ljava/lang/String;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsUtImpl;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportCFT()Z
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsService:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->isSupportCFT(I)Z

    move-result v0

    return v0
.end method

.method public queryCallForwardInTimeSlot(I)I
    .locals 5
    .param p1, "condition"    # I

    .line 186
    sget-object v0, Lcom/mediatek/ims/MtkImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getAndIncreaseRequestId()I

    move-result v1

    .line 188
    .local v1, "requestId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    const-string v0, "MtkImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mHandler:Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;

    const/16 v2, 0x4b0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    .line 196
    invoke-virtual {v3, p1}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v3

    const/4 v4, 0x1

    .line 195
    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 199
    return v1

    .line 188
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

.method public setListener(Lcom/mediatek/ims/feature/MtkImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/ims/feature/MtkImsUtListener;

    .line 158
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;

    .line 159
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 170
    if-eqz p1, :cond_0

    .line 171
    const-string v0, "MtkImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupXcapUserAgentString(): userAgent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mHandler:Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;

    const/16 v1, 0x4b3

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setupXcapUserAgentString(Ljava/lang/String;Landroid/os/Message;)V

    .line 174
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 175
    :cond_0
    const-string v0, "MtkImsUtImpl"

    const-string v1, "setupXcapUserAgentString(): userAgent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void
.end method

.method public updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "enable"    # I
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I

    .line 247
    sget-object v0, Lcom/mediatek/ims/MtkImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getAndIncreaseRequestId()I

    move-result v1

    .line 249
    .local v1, "requestId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const-string v0, "MtkImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallBarringForServiceClass(): requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v0

    .line 255
    .local v5, "bEnable":Z
    :goto_0
    invoke-direct {p0, p2}, Lcom/mediatek/ims/MtkImsUtImpl;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mHandler:Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;

    const/16 v4, 0x4b2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v0, v6}, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 258
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-object v4, v2

    move-object v6, p1

    move v7, p5

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 261
    return v1

    .line 249
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v5    # "bEnable":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I
    .locals 14
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J

    move-object v1, p0

    .line 209
    sget-object v2, Lcom/mediatek/ims/MtkImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {}, Lcom/mediatek/ims/ImsUtImpl;->getAndIncreaseRequestId()I

    move-result v0

    .line 211
    .local v0, "requestId":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    const-string v2, "MtkImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, v1, Lcom/mediatek/ims/MtkImsUtImpl;->mHandler:Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;

    const/16 v3, 0x4b1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 218
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/MtkImsUtImpl;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v3, v1, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    move v4, p1

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsUtImpl;->getCFActionFromAction(I)I

    move-result v7

    iget-object v3, v1, Lcom/mediatek/ims/MtkImsUtImpl;->mImsUtImpl:Lcom/mediatek/ims/ImsUtImpl;

    .line 219
    move/from16 v5, p2

    invoke-virtual {v3, v5}, Lcom/mediatek/ims/ImsUtImpl;->getCFReasonFromCondition(I)I

    move-result v8

    const/4 v9, 0x1

    .line 218
    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v2

    invoke-interface/range {v6 .. v13}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 223
    return v0

    .line 211
    .end local v0    # "requestId":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    move v4, p1

    move/from16 v5, p2

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
