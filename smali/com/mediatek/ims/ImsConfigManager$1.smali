.class Lcom/mediatek/ims/ImsConfigManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsConfigManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsConfigManager;

    .line 105
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 107
    const-string v0, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_TRIGGER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, "phoneId":I
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "simState":Ljava/lang/String;
    const-string v2, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DYNAMIC_IMS_SWITCH_TRIGGER phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v2, p1, p2}, Lcom/mediatek/ims/ImsConfigManager;->access$000(Lcom/mediatek/ims/ImsConfigManager;Landroid/content/Context;Landroid/content/Intent;)V

    .line 120
    .end local v0    # "phoneId":I
    .end local v1    # "simState":Ljava/lang/String;
    :cond_0
    return-void
.end method
