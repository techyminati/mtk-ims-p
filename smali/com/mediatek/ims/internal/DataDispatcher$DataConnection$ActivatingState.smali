.class Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;
.super Lcom/android/internal/util/State;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivatingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/DataDispatcher$1;

    .line 421
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "ActivatingState: enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public exit()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "ActivatingState: exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 434
    const/4 v0, 0x1

    .line 435
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatingState msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 436
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 461
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatingState not handled request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 452
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->deferMessage(Landroid/os/Message;)V

    .line 453
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 454
    goto/16 :goto_0

    .line 443
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 444
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, v2, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V

    .line 445
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 446
    goto :goto_0

    .line 448
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->deferMessage(Landroid/os/Message;)V

    .line 449
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2100(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 450
    goto :goto_0

    .line 456
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 457
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 458
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1900(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V

    .line 459
    goto :goto_0

    .line 438
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    .line 439
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, v2, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V

    .line 440
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 441
    nop

    .line 466
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x927c1 -> :sswitch_4
        0xaae61 -> :sswitch_3
        0xc3501 -> :sswitch_2
        0xc3503 -> :sswitch_1
        0xc3504 -> :sswitch_0
    .end sparse-switch
.end method
