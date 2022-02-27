.class Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;
.super Landroid/os/Handler;
.source "ImsEventPackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsEventPackageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsEventPackageAdapter;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 173
    iput-object p1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;->this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;

    .line 174
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 179
    const-string v0, "ImsEventPackageAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 181
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "ImsEventPackageAdapter"

    const-string v2, "message error"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 185
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;->this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsEventPackageAdapter;->access$100(Lcom/mediatek/ims/ImsEventPackageAdapter;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;->this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsEventPackageAdapter;->access$000(Lcom/mediatek/ims/ImsEventPackageAdapter;[Ljava/lang/String;)V

    .line 188
    goto :goto_1

    .line 192
    :goto_0
    const-string v1, "ImsEventPackageAdapter"

    const-string v2, "Unregistered event"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
