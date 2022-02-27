.class public Lcom/mediatek/ims/internal/DataDispatcher;
.super Ljava/lang/Object;
.source "DataDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    }
.end annotation


# static fields
.field private static final FAILCAUSE_LOST_CONNECTION:Ljava/lang/String; = "LOST_CONNECTION"

.field private static final FAILCAUSE_NONE:Ljava/lang/String; = ""

.field private static final FAILCAUSE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field static final MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT:I = 0xc3504

.field static final MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED:I = 0xc3501

.field static final MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL:I = 0xc3503

.field static final MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED:I = 0xc3502

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MSG_ID_IMSA_DISABLE_SERVICE:I

.field private final MSG_ID_NOTIFY_SUBCRIPTION_CHANAGED:I

.field private mContext:Landroid/content/Context;

.field private mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

.field private mDcHandlerThread:Landroid/os/HandlerThread;

.field private mEmcConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

.field private mFailCauses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

.field private mIsEnable:Z

.field private mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubId:I

.field private mTracker:Lcom/mediatek/ims/internal/ImsDataTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p3, "phoneId"    # I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mLock:Ljava/lang/Object;

    .line 62
    const v0, 0xaae61

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->MSG_ID_IMSA_DISABLE_SERVICE:I

    .line 64
    const v0, 0x927c1

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->MSG_ID_NOTIFY_SUBCRIPTION_CHANAGED:I

    .line 70
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$1;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mFailCauses:Ljava/util/HashMap;

    .line 155
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$2;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    const-string v0, "constructor"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    .line 195
    iput p3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    .line 196
    iget v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSubId:I

    .line 197
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 198
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DcHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDcHandlerThread:Landroid/os/HandlerThread;

    .line 199
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDcHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "ims"

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDcHandlerThread:Landroid/os/HandlerThread;

    .line 201
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 203
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "emergency"

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDcHandlerThread:Landroid/os/HandlerThread;

    .line 204
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmcConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 206
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 43
    iget v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 43
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 43
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mFailCauses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 43
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmcConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 43
    iget v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    return v0
.end method

.method static synthetic access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 43
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 43
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 221
    const-string v0, "receive disableRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->logi(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 226
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmcConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 227
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableRequest(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 210
    const-string v0, "receive enableRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->logi(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    .line 214
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    .end local v1    # "filter":Landroid/content/IntentFilter;
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 294
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 302
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .line 282
    iget v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 283
    .local v0, "newSubId":I
    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSubId:I

    if-ne v1, v0, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionsChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 287
    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSubId:I

    .line 289
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onSubscriptionsChanged()V

    .line 290
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmcConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onSubscriptionsChanged()V

    .line 291
    return-void
.end method

.method public sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 272
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->logi(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 276
    :cond_0
    const-string v0, "ims service not be enabled"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 236
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 237
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->deCodeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    move-result-object v0

    .line 238
    .local v0, "request":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->logi(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v2

    const v3, 0xdbd33

    if-ne v2, v3, :cond_0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mFailCauses:Ljava/util/HashMap;

    const-string v4, "UNKNOWN"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    const v3, 0xdbd35

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 248
    return-void

    .line 251
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x197cf

    if-eq v4, v5, :cond_2

    const v5, 0x6118c591

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "emergency"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_2
    const-string v1, "ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support capbility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .end local v0    # "request":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    goto :goto_2

    .line 258
    .restart local v0    # "request":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmcConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 259
    .local v1, "emcHandle":Landroid/os/Handler;
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEmcConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->putRequest(Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;)V

    .line 260
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    goto :goto_2

    .line 253
    .end local v1    # "emcHandle":Landroid/os/Handler;
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 254
    .local v1, "imsHandle":Landroid/os/Handler;
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsConnection:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->putRequest(Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;)V

    .line 255
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    nop

    .line 266
    .end local v0    # "request":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    .end local v1    # "imsHandle":Landroid/os/Handler;
    :goto_2
    goto :goto_3

    .line 267
    :cond_4
    const-string v0, "ims service not be enabled"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 269
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
