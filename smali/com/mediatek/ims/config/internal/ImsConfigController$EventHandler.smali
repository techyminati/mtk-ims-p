.class Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;
.super Landroid/os/Handler;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;
    .param p2, "phoneId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 191
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 192
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    .line 194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 198
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_9

    .line 408
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_IMS_CFG_CONFIG_LOADED phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_9

    .line 389
    :pswitch_1
    goto/16 :goto_9

    .line 392
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 393
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 394
    .local v4, "value":[I
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "phone_id"

    aget v7, v4, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v6, "item"

    aget v7, v4, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v6, "value"

    aget v7, v4, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v6}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 399
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 400
    const-string v6, "ImsConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_IMS_CFG_FEATURE_CHANGED: phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " feature ="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v3

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 380
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "value":[I
    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    goto/16 :goto_9

    .line 367
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 369
    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$402(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    .line 373
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 372
    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 375
    goto/16 :goto_9

    .line 328
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigController;)V

    .line 329
    goto/16 :goto_9

    .line 332
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 333
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;

    .line 336
    .local v4, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 337
    :try_start_0
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 338
    iget v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->requestConfigNum:I

    new-array v3, v3, [I

    .line 339
    .local v3, "errorResult":[I
    nop

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_2

    .line 340
    const/4 v6, -0x1

    aput v6, v3, v1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_2
    iput-object v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 344
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 345
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_MDCFG_DONE, error ret, e="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v3    # "errorResult":[I
    goto :goto_2

    .line 347
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 349
    .local v2, "resultStr":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "resultStrArray":[Ljava/lang/String;
    array-length v7, v6

    new-array v7, v7, [I

    .line 351
    .local v7, "resultIntArray":[I
    nop

    .restart local v1    # "i":I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_4

    .line 352
    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 354
    .end local v1    # "i":I
    :cond_4
    iput-object v7, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 356
    iput v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 358
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 359
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_MDCFG_DONE, finish set MD Ims config!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v2    # "resultStr":Ljava/lang/String;
    .end local v6    # "resultStrArray":[Ljava/lang/String;
    .end local v7    # "resultIntArray":[I
    :cond_5
    :goto_2
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 362
    monitor-exit v5

    .line 364
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    goto/16 :goto_9

    .line 362
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 309
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 310
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 312
    .local v4, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 313
    :try_start_1
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 314
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 315
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_IMS_GET_RESOURCE_DONE: error ret null, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 318
    :cond_6
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 319
    .local v2, "value":[I
    aget v1, v2, v1

    iput v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 320
    iput v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 322
    .end local v2    # "value":[I
    :goto_3
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 323
    monitor-exit v5

    .line 325
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_9

    .line 323
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_1
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 288
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 289
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 291
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 292
    :try_start_2
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    .line 294
    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 295
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_SET_RESOURCE_DONE: error ret null, e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 298
    :cond_7
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 300
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 301
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_IMS_SET_RESOURCE_DONE: Finish set resource!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_8
    :goto_4
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 304
    monitor-exit v4

    .line 306
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_9

    .line 304
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 203
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 204
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 206
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 207
    :try_start_3
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    .line 209
    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 210
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_SET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 213
    :cond_9
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 215
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 216
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_IMS_SET_FEATURE_DONE: Finish set feature!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_a
    :goto_5
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 219
    monitor-exit v4

    .line 221
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_9

    .line 219
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 224
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 225
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 227
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 228
    :try_start_4
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 229
    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 230
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 233
    :cond_b
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 234
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 236
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_FEATURE_DONE: featureValue:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_6
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 240
    monitor-exit v4

    .line 242
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_9

    .line 240
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 268
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 270
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 271
    :try_start_5
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    .line 273
    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 274
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_SET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 277
    :cond_c
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 279
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 280
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_d
    :goto_7
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 283
    monitor-exit v4

    .line 285
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    goto :goto_9

    .line 283
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_5
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 245
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 246
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 248
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 249
    :try_start_6
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_e

    .line 250
    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 251
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 254
    :cond_e
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 256
    iput v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 258
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: provisionInfo:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_8
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v4

    .line 264
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    nop

    .line 421
    :cond_f
    :goto_9
    return-void

    .line 262
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_6
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
