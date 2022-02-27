.class Lcom/mediatek/ims/ImsUtImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsUtImpl;

    .line 170
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl$1;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 175
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "state":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$1;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    const-string v2, "slot"

    const/4 v3, -0x1

    .line 183
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "phoneType"

    const/4 v4, 0x0

    .line 184
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-class v4, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 185
    invoke-static {v4, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 182
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;IILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 187
    .end local v0    # "state":Ljava/lang/String;
    :cond_0
    return-void
.end method
