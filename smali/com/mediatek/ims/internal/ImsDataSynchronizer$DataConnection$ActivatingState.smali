.class Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;
.super Lcom/android/internal/util/State;
.source "ImsDataSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivatingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;

    .line 267
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "ActivatingState"

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$602(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public exit()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 304
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not handle the message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 305
    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1000(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;II)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->deferMessage(Landroid/os/Message;)V

    .line 294
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 295
    const/4 v2, 0x1

    .line 296
    .local v2, "retVal":Z
    goto :goto_0

    .line 285
    .end local v2    # "retVal":Z
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$900(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0, v2, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1000(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;II)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1200(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 289
    const/4 v2, 0x1

    .line 290
    .restart local v2    # "retVal":Z
    goto :goto_0

    .line 298
    .end local v2    # "retVal":Z
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1600(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->clear()V

    .line 299
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1400(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 301
    const/4 v2, 0x1

    .line 302
    .restart local v2    # "retVal":Z
    nop

    .line 305
    :goto_0
    move v0, v2

    .line 308
    .end local v2    # "retVal":Z
    .local v0, "retVal":Z
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
