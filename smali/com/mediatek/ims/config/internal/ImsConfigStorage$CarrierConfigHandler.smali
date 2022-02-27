.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;
.super Landroid/os/Handler;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarrierConfigHandler"
.end annotation


# instance fields
.field private isGetProvisionUrc:Z

.field private mPhoneId:I

.field private provisionInfoTemp:[Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;ILandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    .param p2, "phoneId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 200
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 201
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    .line 203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 207
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImsConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x17

    const/4 v2, -0x1

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 242
    :pswitch_0
    const/4 v0, -0x1

    .line 243
    .local v0, "oldWfcMode":I
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$800(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 244
    const-string v1, "ImsConfigStorage"

    const-string v2, "Should not set invalid wfc mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$800(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$700(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->sendWfcProfileInfo(I)V

    .line 250
    goto/16 :goto_7

    .line 252
    .end local v0    # "oldWfcMode":I
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$900(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 254
    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$1000(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$902(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$900(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$1000(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Landroid/content/Context;

    move-result-object v1

    .line 258
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 257
    invoke-interface {v0, v1, v2, v6}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 260
    goto/16 :goto_7

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$700(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    .line 240
    goto/16 :goto_7

    .line 357
    :pswitch_3
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ImsConfigStorage"

    const-string v1, "MSG_IMS_SET_MDCFG_DONE: Enter messege"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 360
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;

    .line 361
    .local v1, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    const/4 v3, 0x0

    .line 363
    .local v3, "resultStr":Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 364
    :try_start_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 365
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->requestConfigNum:I

    new-array v4, v4, [I

    .line 366
    .local v4, "errorResult":[I
    nop

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 367
    aput v2, v4, v5

    .line 366
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 370
    .end local v5    # "i":I
    :cond_4
    iput-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->resultArray:[I

    .line 371
    const/16 v2, 0x20

    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->configResult:I

    .line 372
    const-string v2, "ImsConfigStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_MDCFG_DONE, error ret, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v4    # "errorResult":[I
    goto :goto_2

    .line 374
    :cond_5
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 376
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "resultStrArray":[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    .line 378
    .local v4, "resultIntArray":[I
    nop

    .restart local v5    # "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_6

    .line 379
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 378
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 381
    .end local v5    # "i":I
    :cond_6
    iput-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->resultArray:[I

    .line 383
    const/16 v5, 0x21

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->configResult:I

    .line 384
    const-string v5, "ImsConfigStorage"

    const-string v6, "SET_MDCFG_DONE, finish set MD Ims config!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v2    # "resultStrArray":[Ljava/lang/String;
    .end local v4    # "resultIntArray":[I
    :goto_2
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 387
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ImsConfigStorage"

    const-string v4, "SET_MDCFG_DONE, notify result"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_7
    monitor-exit v7

    .line 389
    goto/16 :goto_7

    .line 388
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 339
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    .end local v3    # "resultStr":Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ImsConfigStorage"

    const-string v1, "EVENT_GET_PROVISION_DONE_URC: Enter messege"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 342
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    .line 343
    iput-boolean v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->isGetProvisionUrc:Z

    .line 345
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 346
    const-string v1, "ImsConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_PROVISION_DONE_URC: error, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 348
    :cond_9
    const-string v1, "ImsConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_PROVISION_DONE_URC: provisionInfoTemp.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v4, :cond_14

    .line 351
    iput-boolean v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->isGetProvisionUrc:Z

    goto/16 :goto_7

    .line 319
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ImsConfigStorage"

    const-string v2, "MSG_IMS_SET_PROVISION_DONE: Enter messege"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 322
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    .line 323
    .local v2, "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    iget-object v7, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 324
    :try_start_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    .line 326
    iput v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 327
    const-string v1, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_SET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    :cond_b
    iput v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 330
    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_3
    iget-object v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 333
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_SET_PROVISION_DONE: notify result"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_c
    monitor-exit v7

    .line 336
    goto/16 :goto_7

    .line 334
    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 278
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    :pswitch_6
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ImsConfigStorage"

    const-string v2, "MSG_IMS_GET_PROVISION_DONE: Enter messege"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 281
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    .line 283
    .restart local v2    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    iget-object v7, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 284
    :try_start_2
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_f

    .line 285
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 286
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_e

    .line 290
    const/16 v1, 0x19

    iput v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 291
    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_GET_PROVISION_DONE: MD no default value"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 293
    :cond_e
    iput v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 294
    const-string v1, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_GET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 298
    :cond_f
    iget-boolean v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->isGetProvisionUrc:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    array-length v8, v8

    if-ge v8, v4, :cond_10

    goto :goto_4

    .line 303
    :cond_10
    new-array v3, v4, [Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    .line 304
    iget-object v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v5

    .line 305
    iget-object v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v3, v6

    .line 306
    iput v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 308
    const-string v1, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_GET_PROVISION_DONE: provisionInfo[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", provisionInfo[1]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 299
    :cond_11
    :goto_4
    const-string v1, "ImsConfigStorage"

    const-string v4, "MSG_IMS_GET_PROVISION_DONE: Error getting, URC error or no URC received!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 313
    :goto_5
    iget-object v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 314
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_GET_PROVISION_DONE: notify result"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_12
    monitor-exit v7

    .line 316
    goto/16 :goto_7

    .line 315
    :catchall_2
    move-exception v1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 268
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    :pswitch_7
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowSendCmd:Ljava/util/HashMap;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->access$1100(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 271
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "ImsConfigStorage"

    const-string v1, "All feature false after sim absent,should broadcast VoLTE feature value once for ECC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 234
    :pswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    .line 236
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->access$600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V

    .line 237
    goto/16 :goto_7

    .line 214
    :pswitch_9
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v0

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 216
    .local v1, "opCode":I
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getOpCode()I

    move-result v2

    if-eq v2, v1, :cond_13

    .line 217
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->setOpCode(I)V

    .line 218
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start load config storage for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " on phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V

    .line 221
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->init(I)V

    .line 222
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->setInitDone(Z)V

    .line 223
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish Loading config storage for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 225
    :cond_13
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip reloading config by same opCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " on phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->setInitDone(Z)V

    .line 229
    .end local v1    # "opCode":I
    :goto_6
    monitor-exit v0

    .line 230
    goto :goto_7

    .line 229
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 210
    :pswitch_a
    const-string v0, "ImsConfigStorage"

    const-string v1, "Reset config storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V

    .line 212
    nop

    .line 394
    :cond_14
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
