.class Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;
.super Lcom/android/internal/util/State;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/DataDispatcher$1;

    .line 470
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "ActiveState: enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V

    .line 475
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2302(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    return-void
.end method

.method public exit()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "ActiveState: exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V

    .line 482
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 486
    const/4 v0, 0x1

    .line 488
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveState msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 489
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 511
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveState not handled request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    goto :goto_0

    .line 494
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 495
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 496
    goto :goto_0

    .line 502
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->deferMessage(Landroid/os/Message;)V

    .line 503
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 504
    goto :goto_0

    .line 498
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2700(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 499
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 500
    goto :goto_0

    .line 491
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2500(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 492
    goto :goto_0

    .line 506
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 507
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 508
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1900(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V

    .line 509
    nop

    .line 516
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xaae61 -> :sswitch_4
        0xc3501 -> :sswitch_3
        0xc3502 -> :sswitch_2
        0xc3504 -> :sswitch_1
        0xdbbab -> :sswitch_0
    .end sparse-switch
.end method
