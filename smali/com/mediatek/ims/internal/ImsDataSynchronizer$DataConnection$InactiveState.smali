.class Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;
.super Lcom/android/internal/util/State;
.source "ImsDataSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$1;

    .line 211
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "InactiveState"

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$602(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public exit()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not handle the messag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->loge(Ljava/lang/String;)V

    .line 259
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1600(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->clear()V

    .line 254
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1400(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    .line 255
    const/4 v1, 0x1

    .line 256
    .local v1, "retVal":Z
    goto :goto_0

    .line 244
    .end local v1    # "retVal":Z
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1300(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const-string v2, "handle pdn abort requested"

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1000(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;II)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1400(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V

    .line 249
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1500(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;I)V

    .line 250
    const/4 v1, 0x1

    .line 251
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 239
    .end local v1    # "retVal":Z
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1200(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActiveState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 240
    const/4 v1, 0x1

    .line 241
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 230
    .end local v1    # "retVal":Z
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$800(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->this$0:Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->access$900(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0, v1, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1000(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;II)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$InactiveState;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1100(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$ActivatingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 236
    :cond_2
    const/4 v1, 0x1

    .line 237
    .restart local v1    # "retVal":Z
    nop

    .line 259
    :goto_0
    move v0, v1

    .line 263
    .end local v1    # "retVal":Z
    .local v0, "retVal":Z
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
