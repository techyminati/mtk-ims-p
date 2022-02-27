.class Lcom/mediatek/ims/ImsEcbmProxy$1;
.super Landroid/os/Handler;
.source "ImsEcbmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsEcbmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsEcbmProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsEcbmProxy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsEcbmProxy;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 76
    iput-object p1, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->access$100(Lcom/mediatek/ims/ImsEcbmProxy;)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->access$000(Lcom/mediatek/ims/ImsEcbmProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsEcbmProxy;->access$002(Lcom/mediatek/ims/ImsEcbmProxy;Z)Z

    .line 86
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->exitedEcbm()V

    .line 87
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->access$100(Lcom/mediatek/ims/ImsEcbmProxy;)V

    .line 88
    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->enteredEcbm()V

    .line 82
    nop

    .line 94
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
