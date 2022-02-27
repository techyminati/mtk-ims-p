.class Lcom/mediatek/ims/ImsConferenceHandler$1;
.super Landroid/os/Handler;
.source "ImsConferenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsConferenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsConferenceHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsConferenceHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 134
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler$1;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 137
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$1;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$200(Lcom/mediatek/ims/ImsConferenceHandler;I)V

    .line 148
    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$1;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$000(Lcom/mediatek/ims/ImsConferenceHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "ImsConferenceHandler"

    const-string v1, "CEP is notified, no need to update with local cache"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$1;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$100(Lcom/mediatek/ims/ImsConferenceHandler;)V

    .line 145
    nop

    .line 152
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
