.class Lcom/mediatek/ims/ImsService$1;
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

    .line 370
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 372
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 374
    const-string v0, "ACTION_IMS_SIMULATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "registry"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$202(Lcom/mediatek/ims/ImsService;Z)Z

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulate IMS Registration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 379
    .local v0, "phoneId":I
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 380
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v4

    aput v4, v3, v1

    const/16 v1, 0xf

    aput v1, v3, v2

    const/4 v1, 0x2

    aput v0, v3, v1

    move-object v1, v3

    .line 383
    .local v1, "result":[I
    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 384
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 385
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 384
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    .end local v0    # "phoneId":I
    .end local v1    # "result":[I
    .end local v3    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_2

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$500(Lcom/mediatek/ims/ImsService;)V

    .line 393
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$600(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 394
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v1, v1, v0

    if-ne v1, v2, :cond_2

    .line 395
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast IMS_SERVICE_UP for phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 393
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 401
    .end local v1    # "i":I
    :cond_3
    const-string v0, "com.mediatek.ims.action.self_identify_update"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 402
    const-string v0, "android:phone_id"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 404
    .local v0, "extraPhoneId":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELF_IDENTIFY_UPDATE: extraPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 405
    if-eq v0, v1, :cond_4

    .line 406
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    .line 407
    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v2

    aget-object v2, v2, v0

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 406
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 409
    .end local v0    # "extraPhoneId":I
    :cond_4
    goto :goto_2

    :cond_5
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 410
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "simStatus":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 412
    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 414
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 415
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ImsService;->access$900(Lcom/mediatek/ims/ImsService;I)V

    .line 419
    .end local v0    # "simStatus":Ljava/lang/String;
    .end local v1    # "phoneId":I
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] finished action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 420
    return-void
.end method
