.class public Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

.field private mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

.field private mCapabiliy:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

.field private mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

.field private mFwInterface:Ljava/lang/String;

.field private mImsNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

.field private mInterface:Ljava/lang/String;

.field private mNetworkHandle:J

.field private mNetworkId:I

.field private mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

.field private mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .param p4, "capability"    # I

    .line 328
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 329
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 307
    const-string v0, "DC-"

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    .line 311
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    .line 319
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    .line 322
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    .line 323
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    .line 324
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    .line 325
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    .line 326
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    .line 330
    iput p4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    .line 331
    nop

    .line 332
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$900(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 333
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    .line 334
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    .line 336
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 339
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 340
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 341
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 342
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->start()V

    .line 343
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 305
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->msgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 305
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->rejectNetworkRequest(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 305
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->rejectNetworkReleased(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->requestNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->releaseNetwork()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onAbortNetworkCompleted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onReleaseNetworkCompleted()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Z

    .line 305
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Z

    .line 305
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->setFirewallInterfaceChain(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onRequestNetworkCompleted()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->notifyNetworkLosted()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->disable()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 305
    iput p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    return p1
.end method

.method static synthetic access$3202(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # J

    .line 305
    iput-wide p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    return-wide p1
.end method

.method private clearNwInfo(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .line 729
    const-string v0, "clearNwInfo"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 730
    if-eqz p1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 733
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    .line 734
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    .line 735
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    .line 736
    return-void
.end method

.method private disable()V
    .locals 1

    .line 725
    const v0, 0xaae61

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 726
    return-void
.end method

.method private msgToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .line 817
    const v0, 0xaae61

    if-eq p1, v0, :cond_3

    const v0, 0xdbba8

    if-eq p1, v0, :cond_2

    const v0, 0xdbbab

    if-eq p1, v0, :cond_1

    const v0, 0xdbd33

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 833
    :pswitch_0
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT"

    return-object v0

    .line 829
    :pswitch_1
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL"

    return-object v0

    .line 827
    :pswitch_2
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED"

    return-object v0

    .line 825
    :pswitch_3
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED"

    return-object v0

    .line 823
    :cond_0
    const-string v0, "MSG_ID_REQUEST_PCSCF_DISCOVERY"

    return-object v0

    .line 821
    :cond_1
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ"

    return-object v0

    .line 819
    :cond_2
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ"

    return-object v0

    .line 831
    :cond_3
    const-string v0, "MSG_ID_IMSA_DISABLE_SERVICE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc3501
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyNetworkHandle()V
    .locals 5

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNetworkHandle() netHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->log(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-wide v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v2

    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 632
    const v4, 0xdbccd

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 635
    return-void
.end method

.method private notifyNetworkLosted()V
    .locals 5

    .line 707
    const-string v0, "notifyNetworkLosted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 715
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "LOST_CONNECTION"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v2

    const v3, 0xdbbae

    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 719
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 721
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 722
    return-void
.end method

.method private onAbortNetworkCompleted()V
    .locals 7

    .line 688
    const-string v0, "onAbortNetworkCompleted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xc3504

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 690
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found Req: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 693
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v4

    const v5, 0xdbbac

    .line 700
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 699
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 701
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 703
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 704
    return-void
.end method

.method private onReleaseNetworkCompleted()V
    .locals 7

    .line 668
    const-string v0, "onReleaseNetworkCompleted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 671
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found Req: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v4

    const v5, 0xdbbac

    .line 681
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 680
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 682
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 684
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 685
    return-void
.end method

.method private onRequestNetworkCompleted()V
    .locals 6

    .line 604
    const-string v0, "onRequestNetworkComplete"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 607
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 612
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->notifyNetworkHandle()V

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
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

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " IfaceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbba9

    .line 622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 623
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 625
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private refreshNwLostCallBack(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "nwRequest"    # Landroid/net/NetworkRequest;

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshNwLostCallBack nwRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 764
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 765
    return-void
.end method

.method private rejectNetworkReleased(I)V
    .locals 6
    .param p1, "cause"    # I

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectNetworkReleased cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 653
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
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

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbbad

    .line 662
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 661
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 663
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 665
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private rejectNetworkRequest(I)V
    .locals 7
    .param p1, "cause"    # I

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectNetworkRequest cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 588
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found Req: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 591
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v4

    const v5, 0xdbbaa

    .line 597
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 598
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 599
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 601
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private releaseNetwork()V
    .locals 3

    .line 638
    const-string v0, "releaseNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 643
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "cb already has been released!!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 647
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private requestNetwork()Z
    .locals 5

    .line 555
    const-string v0, "requestNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 557
    iget v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inValid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 559
    return v1

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v2, 0xdbba8

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 566
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-nez v0, :cond_1

    .line 567
    const-string v2, "ImsBearerRequest is NULL"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 568
    return v1

    .line 571
    :cond_1
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 572
    .local v2, "builder":Landroid/net/NetworkRequest$Builder;
    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 573
    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 574
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 575
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 579
    .local v1, "nwRequest":Landroid/net/NetworkRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start requestNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v3, v1, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 581
    const/4 v3, 0x1

    return v3
.end method

.method private setFirewallInterfaceChain(Z)V
    .locals 2
    .param p1, "isAdded"    # Z

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFirewallInterfaceChain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 852
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;

    const-string v1, "setFirewallInterfaceChain"

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;Z)V

    .line 871
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 872
    return-void
.end method


# virtual methods
.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    .line 748
    const-string v0, "onSubscriptionsChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 751
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-eqz v0, :cond_0

    .line 752
    const v1, 0x927c1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 754
    :cond_0
    return-void
.end method

.method public putRequest(Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 739
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 740
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-nez v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 743
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request already exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 745
    :goto_0
    return-void
.end method
