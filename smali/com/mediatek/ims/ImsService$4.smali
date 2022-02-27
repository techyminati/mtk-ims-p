.class Lcom/mediatek/ims/ImsService$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .line 2709
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2711
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volte_setting mSubInfoReceiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2712
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2713
    const/4 v0, 0x1

    .line 2714
    .local v0, "needDereg":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "phoneId":I
    .local v2, "needDereg":Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$600(Lcom/mediatek/ims/ImsService;)I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2715
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3300(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2716
    invoke-virtual {v3, v0}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 2718
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$3400(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    invoke-static {v3, v0, v4}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2719
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3300(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    aput-boolean v1, v3, v0

    .line 2721
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3300(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 2722
    const/4 v2, 0x0

    .line 2714
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2725
    .end local v0    # "phoneId":I
    :cond_2
    if-eqz v2, :cond_3

    .line 2726
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3200(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2727
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$3102(Lcom/mediatek/ims/ImsService;Z)Z

    .line 2730
    .end local v2    # "needDereg":Z
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$4;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v1, "volte_setting mSubInfoReceiver finished"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2731
    return-void
.end method
