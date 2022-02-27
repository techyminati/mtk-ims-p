.class Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/DataDispatcher$1;

    .line 520
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "DisconnectingState: enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public exit()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "DisconnectingState: exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 533
    const/4 v0, 0x1

    .line 534
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisconnectingState msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 535
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0xaae61

    if-eq v1, v2, :cond_1

    const v2, 0xc3502

    if-eq v1, v2, :cond_0

    .line 545
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisconnectingState not handled request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x0

    goto :goto_0

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->deferMessage(Landroid/os/Message;)V

    .line 538
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 539
    goto :goto_0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 542
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1900(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V

    .line 543
    nop

    .line 550
    :goto_0
    return v0
.end method
