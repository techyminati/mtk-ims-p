.class public Lcom/mediatek/ims/internal/ImsDataSynchronizer;
.super Ljava/lang/Object;
.source "ImsDataSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    }
.end annotation


# static fields
.field public static final EVENT_CONNECT:I = 0x0

.field public static final EVENT_CONNECT_DONE:I = 0x1

.field public static final EVENT_DISCONNECT:I = 0x2

.field public static final EVENT_DISCONNECT_DONE:I = 0x3

.field public static final EVENT_IMS_DATA_INFO:I = 0x7

.field public static final EVENT_MD_RESTART:I = 0x5

.field public static final EVENT_SET_BEARER_NOTIFICATION_DONE:I = 0x6

.field public static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x4


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

.field private mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

.field private mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

.field private mImsDcHandlerThread:Landroid/os/HandlerThread;

.field private mPhoneId:I

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataTracker"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p3, "phoneId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 50
    iput p3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mPhoneId:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsDcHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDcHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDcHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "ims"

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDcHandlerThread:Landroid/os/HandlerThread;

    .line 55
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer;Ljava/lang/String;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 57
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "emergency"

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDcHandlerThread:Landroid/os/HandlerThread;

    .line 58
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer;Ljava/lang/String;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 60
    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 29
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 29
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mPhoneId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Lcom/mediatek/ims/internal/ImsDataTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 29
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 29
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 29
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->earlyConfirmReqNetworkToMd()Z

    move-result v0

    return v0
.end method

.method private earlyConfirmReqNetworkToMd()Z
    .locals 3

    .line 117
    const-string v0, "OP07"

    const-string v1, "persist.vendor.operator.optr"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public notifyClearCodesEvent(II)V
    .locals 2
    .param p1, "cause"    # I
    .param p2, "capability"    # I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyClearCodesEvent,cause= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " capability= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public notifyMdRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x197cf

    if-eq v1, v2, :cond_1

    const v2, 0x6118c591

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "emergency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 72
    .local v0, "emcHandle":Landroid/os/Handler;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->putRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V

    .line 73
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    goto :goto_2

    .line 66
    .end local v0    # "emcHandle":Landroid/os/Handler;
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 67
    .local v0, "imsHandle":Landroid/os/Handler;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->putRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V

    .line 68
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    nop

    .line 79
    .end local v0    # "imsHandle":Landroid/os/Handler;
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyMdRestart()V
    .locals 3

    .line 82
    const-string v0, "notifyMdRestart"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 84
    .local v0, "imsHandle":Landroid/os/Handler;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 86
    .local v2, "emcHandle":Landroid/os/Handler;
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .line 103
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 104
    .local v0, "newSubId":I
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    if-ne v1, v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionsChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 108
    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    .line 110
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->onSubscriptionsChanged()V

    .line 111
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->onSubscriptionsChanged()V

    .line 112
    return-void
.end method
