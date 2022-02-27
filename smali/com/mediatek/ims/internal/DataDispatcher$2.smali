.class Lcom/mediatek/ims/internal/DataDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 155
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    const-string v1, "apnType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "type":Ljava/lang/String;
    const-string v2, "failCause"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "failure":Ljava/lang/String;
    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 167
    .local v3, "subId":I
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mSubId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v7}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v5

    if-ne v5, v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 170
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive, intent action is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 171
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failCause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x197cf

    if-eq v5, v6, :cond_1

    const v6, 0x6118c591

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "emergency"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "ims"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_0
    const v5, 0xc3503

    packed-switch v4, :pswitch_data_0

    .line 184
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnKnown APN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "failure":Ljava/lang/String;
    .end local v3    # "subId":I
    goto :goto_1

    .line 179
    .restart local v1    # "type":Ljava/lang/String;
    .restart local v2    # "failure":Ljava/lang/String;
    .restart local v3    # "subId":I
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 180
    .local v4, "emcHandle":Landroid/os/Handler;
    nop

    .line 181
    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 180
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    goto :goto_1

    .line 174
    .end local v4    # "emcHandle":Landroid/os/Handler;
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 175
    .local v4, "imsHandle":Landroid/os/Handler;
    nop

    .line 176
    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 175
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    nop

    .line 189
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "failure":Ljava/lang/String;
    .end local v3    # "subId":I
    .end local v4    # "imsHandle":Landroid/os/Handler;
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
