.class Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;
.super Landroid/os/Handler;
.source "MtkImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 277
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 278
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 279
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 284
    const-string v0, "MtkImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(): event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 285
    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 289
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x324

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 384
    const-string v1, "MtkImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 372
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 373
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 374
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 375
    const-string v2, "MtkImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute setupXcapUserAgentString succeed!event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_0
    const-string v2, "MtkImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute setupXcapUserAgentString failed!event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :goto_0
    goto/16 :goto_8

    .line 351
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 352
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 353
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 355
    const-string v2, "MtkImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utConfigurationUpdated(): event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_2

    .line 361
    :cond_1
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_2

    .line 362
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    .line 365
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_2
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v2, v4

    .line 367
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 369
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_2
    goto/16 :goto_8

    .line 291
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 292
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 293
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 295
    const-string v2, "MtkImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utConfigurationUpdated(): event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_4

    .line 302
    :cond_3
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_4

    .line 303
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 305
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v2, v4

    .line 307
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 309
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    goto/16 :goto_8

    .line 312
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 313
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 314
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    .line 316
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 317
    .local v2, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v4, 0x0

    .line 319
    .local v4, "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    if-eqz v2, :cond_5

    .line 320
    array-length v5, v2

    new-array v4, v5, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 321
    nop

    .local v3, "i":I
    :goto_5
    array-length v5, v2

    if-ge v3, v5, :cond_5

    .line 322
    new-instance v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {v5}, Lcom/mediatek/ims/MtkImsCallForwardInfo;-><init>()V

    .line 323
    .local v5, "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    iget-object v6, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 324
    invoke-static {v6}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v6

    aget-object v7, v2, v3

    iget v7, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v6

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    .line 325
    aget-object v6, v2, v3

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    .line 326
    aget-object v6, v2, v3

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    .line 327
    aget-object v6, v2, v3

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    .line 328
    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 329
    aget-object v6, v2, v3

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    .line 330
    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    iput-object v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    .line 331
    aput-object v5, v4, v3

    .line 321
    .end local v5    # "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 335
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5, v4}, Lcom/mediatek/ims/feature/MtkImsUtListener;->onUtConfigurationCallForwardInTimeSlotQueried(I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V

    .line 337
    .end local v2    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v4    # "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    goto :goto_7

    .line 340
    :cond_6
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_7

    .line 341
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_6

    .line 343
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_7
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v2, v4

    .line 346
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_6
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 348
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    nop

    .line 387
    :cond_8
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
