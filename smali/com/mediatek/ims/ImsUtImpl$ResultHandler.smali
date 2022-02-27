.class Lcom/mediatek/ims/ImsUtImpl$ResultHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 256
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 257
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 263
    const-string v0, "ImsUtImpl"

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

    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 264
    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 269
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3f8

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x1

    const/16 v4, 0x324

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 599
    const-string v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 578
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 579
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 580
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 582
    const-string v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utConfigurationUpdated(): event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_1

    .line 587
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 591
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 593
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v3, p1, v2}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 595
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    goto/16 :goto_16

    .line 519
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 520
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 521
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_6

    .line 522
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 523
    .local v4, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v6, 0x0

    .line 525
    .local v6, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v4, :cond_2

    .line 526
    array-length v7, v4

    new-array v6, v7, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 527
    nop

    .local v5, "i":I
    :goto_2
    array-length v7, v4

    if-ge v5, v7, :cond_2

    .line 529
    new-instance v7, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v7}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 530
    .local v7, "info":Landroid/telephony/ims/ImsCallForwardInfo;
    iget-object v8, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    aget-object v9, v4, v5

    iget v9, v9, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v8

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 531
    aget-object v8, v4, v5

    iget v8, v8, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 532
    aget-object v8, v4, v5

    iget v8, v8, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 533
    aget-object v8, v4, v5

    iget v8, v8, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 534
    aget-object v8, v4, v5

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 535
    aget-object v8, v4, v5

    iget v8, v8, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 536
    aput-object v7, v6, v5

    .line 527
    .end local v7    # "info":Landroid/telephony/ims/ImsCallForwardInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 540
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isNeedIMSDereg()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 541
    const-string v5, "1"

    const-string v7, "vendor.gsm.radio.ss.imsdereg"

    const-string v8, "0"

    .line 542
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 541
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 544
    .local v5, "enable":Z
    const-string v7, "vendor.gsm.radio.ss.imsdereg"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v7, "1"

    const-string v8, "persist.vendor.radio.ss.imsdereg_off"

    const-string v9, "-1"

    .line 547
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 549
    .local v7, "disableIMSDereg":Z
    if-eqz v5, :cond_4

    if-nez v7, :cond_4

    .line 550
    iget-object v8, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v8}, Lcom/mediatek/ims/ImsUtImpl;->access$400(Lcom/mediatek/ims/ImsUtImpl;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 551
    const-string v3, "ImsUtImpl"

    const-string v8, "During call and later do IMS dereg"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3, v2}, Lcom/mediatek/ims/ImsUtImpl;->access$502(Lcom/mediatek/ims/ImsUtImpl;Z)Z

    goto :goto_3

    .line 554
    :cond_3
    const-string v2, "ImsUtImpl"

    const-string v8, "IMS dereg."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$700(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iget-object v8, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 556
    invoke-static {v8}, Lcom/mediatek/ims/ImsUtImpl;->access$600(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v8

    .line 555
    invoke-virtual {v2, v8, v3}, Lcom/mediatek/ims/ImsService;->deregisterImsWithCause(II)V

    goto :goto_3

    .line 559
    :cond_4
    const-string v2, "ImsUtImpl"

    const-string v3, "Skip IMS dereg."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v5    # "enable":Z
    .end local v7    # "disableIMSDereg":Z
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 564
    .end local v4    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v6    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_5

    .line 566
    :cond_6
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_7

    .line 567
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_4

    .line 570
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_7
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 573
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 575
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    goto/16 :goto_16

    .line 436
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 437
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 438
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_9

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_9

    .line 440
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v2, :cond_d

    .line 441
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 442
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 443
    .local v3, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_8

    array-length v4, v2

    if-eqz v4, :cond_8

    .line 444
    array-length v4, v2

    new-array v3, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 445
    nop

    .local v5, "i":I
    :goto_6
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    array-length v5, v2

    if-ge v4, v5, :cond_8

    .line 447
    const-string v5, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS_UT_EVENT_SET_CF: cfInfo["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v5, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    aget-object v6, v2, v4

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsUtImpl;->access$300(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 445
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_6

    .line 454
    .end local v5    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 456
    goto/16 :goto_16

    .line 460
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_9
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_d

    .line 461
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isNeedIMSDereg()Z

    move-result v6

    if-nez v6, :cond_a

    .line 462
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v7, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 463
    invoke-static {v7}, Lcom/mediatek/ims/ImsUtImpl;->access$600(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 464
    :cond_a
    const-string v6, "1"

    const-string v7, "vendor.gsm.radio.ss.imsdereg"

    const-string v8, "0"

    .line 465
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 467
    .local v6, "enable":Z
    const-string v7, "vendor.gsm.radio.ss.imsdereg"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v7, "1"

    const-string v8, "persist.vendor.radio.ss.imsdereg_off"

    const-string v9, "-1"

    .line 470
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 471
    .restart local v7    # "disableIMSDereg":Z
    if-eqz v6, :cond_c

    if-nez v7, :cond_c

    .line 472
    iget-object v8, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v8}, Lcom/mediatek/ims/ImsUtImpl;->access$400(Lcom/mediatek/ims/ImsUtImpl;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 473
    const-string v3, "ImsUtImpl"

    const-string v8, "During call and later do IMS dereg"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3, v2}, Lcom/mediatek/ims/ImsUtImpl;->access$502(Lcom/mediatek/ims/ImsUtImpl;Z)Z

    goto :goto_7

    .line 476
    :cond_b
    const-string v2, "ImsUtImpl"

    const-string v8, "IMS dereg."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$700(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iget-object v8, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 478
    invoke-static {v8}, Lcom/mediatek/ims/ImsUtImpl;->access$600(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v8

    .line 477
    invoke-virtual {v2, v8, v3}, Lcom/mediatek/ims/ImsService;->deregisterImsWithCause(II)V

    goto :goto_7

    .line 481
    :cond_c
    const-string v2, "ImsUtImpl"

    const-string v3, "Skip IMS dereg."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "enable":Z
    .end local v7    # "disableIMSDereg":Z
    :cond_d
    :goto_7
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 492
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 493
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 495
    const-string v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utConfigurationUpdated(): event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    goto :goto_9

    .line 503
    :cond_e
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_f

    .line 504
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_8

    .line 506
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_f
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 509
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_8
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 511
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    goto/16 :goto_16

    .line 407
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 408
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 409
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 411
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 412
    .local v2, "result":[I
    new-instance v3, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 413
    .local v3, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    aget v4, v2, v5

    iput v4, v3, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 414
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v4, "info":Landroid/os/Bundle;
    const-string v5, "imsSsInfo"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 417
    iget-object v5, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v5}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v4}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 418
    .end local v2    # "result":[I
    .end local v3    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v4    # "info":Landroid/os/Bundle;
    goto :goto_b

    .line 421
    :cond_10
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_11

    .line 422
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_a

    .line 424
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_11
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 427
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_a
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 429
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    goto/16 :goto_16

    .line 382
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 383
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 384
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_12

    .line 386
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 387
    .local v2, "result":[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 388
    .local v3, "info":Landroid/os/Bundle;
    const-string v4, "queryClir"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 390
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 391
    .end local v2    # "result":[I
    .end local v3    # "info":Landroid/os/Bundle;
    goto :goto_d

    .line 394
    :cond_12
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_13

    .line 395
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_c

    .line 397
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_13
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 400
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_c
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 402
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_d
    goto/16 :goto_16

    .line 354
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 355
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 356
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_14

    .line 358
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 359
    .local v3, "result":[I
    new-array v2, v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 360
    .local v2, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v4, v2, v5

    .line 361
    aget-object v4, v2, v5

    aget v6, v3, v5

    iput v6, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 364
    const-string v4, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 368
    .end local v2    # "info":[Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "result":[I
    goto :goto_f

    .line 371
    :cond_14
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_15

    .line 372
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_e

    .line 374
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_15
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 377
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_e
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 379
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_f
    goto/16 :goto_16

    .line 300
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 301
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 302
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1a

    .line 304
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 305
    .local v4, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v6, 0x0

    .line 306
    .local v6, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v4, :cond_16

    .line 307
    array-length v7, v4

    new-array v6, v7, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 308
    nop

    .restart local v5    # "i":I
    :goto_10
    array-length v7, v4

    if-ge v5, v7, :cond_16

    .line 310
    const-string v7, "ImsUtImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMS_UT_EVENT_GET_CF: cfInfo["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v4, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v7, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    aget-object v8, v4, v5

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsUtImpl;->access$300(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v7

    aput-object v7, v6, v5

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 317
    .end local v5    # "i":I
    :cond_16
    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isNeedIMSDereg()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 318
    const-string v5, "1"

    const-string v7, "vendor.gsm.radio.ss.imsdereg"

    const-string v8, "0"

    .line 319
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 321
    .local v5, "enable":Z
    const-string v7, "vendor.gsm.radio.ss.imsdereg"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v7, "1"

    const-string v8, "persist.vendor.radio.ss.imsdereg_off"

    const-string v9, "-1"

    .line 324
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 325
    .restart local v7    # "disableIMSDereg":Z
    if-eqz v5, :cond_18

    if-nez v7, :cond_18

    .line 326
    iget-object v8, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v8}, Lcom/mediatek/ims/ImsUtImpl;->access$400(Lcom/mediatek/ims/ImsUtImpl;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 327
    const-string v3, "ImsUtImpl"

    const-string v8, "During call and later do IMS dereg"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3, v2}, Lcom/mediatek/ims/ImsUtImpl;->access$502(Lcom/mediatek/ims/ImsUtImpl;Z)Z

    goto :goto_11

    .line 330
    :cond_17
    const-string v2, "ImsUtImpl"

    const-string v8, "IMS dereg."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$700(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iget-object v8, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 332
    invoke-static {v8}, Lcom/mediatek/ims/ImsUtImpl;->access$600(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v8

    .line 331
    invoke-virtual {v2, v8, v3}, Lcom/mediatek/ims/ImsService;->deregisterImsWithCause(II)V

    goto :goto_11

    .line 335
    :cond_18
    const-string v2, "ImsUtImpl"

    const-string v3, "Skip IMS dereg."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v5    # "enable":Z
    .end local v7    # "disableIMSDereg":Z
    :cond_19
    :goto_11
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 340
    .end local v4    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v6    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_13

    .line 343
    :cond_1a
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1b

    .line 344
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_12

    .line 346
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1b
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 349
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_12
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 351
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_13
    goto/16 :goto_16

    .line 271
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 272
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 274
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1c

    .line 276
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 277
    .restart local v3    # "result":[I
    new-array v2, v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 278
    .local v2, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v4, v2, v5

    .line 279
    aget-object v4, v2, v5

    aget v6, v3, v5

    iput v6, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 282
    const-string v4, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 286
    .end local v2    # "info":[Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "result":[I
    goto :goto_15

    .line 289
    :cond_1c
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1d

    .line 290
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsUtImpl;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_14

    .line 292
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1d
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 295
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_14
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 297
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_15
    goto :goto_16

    .line 514
    :cond_1e
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$700(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 515
    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$600(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v2

    .line 514
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/ImsService;->deregisterImsWithCause(II)V

    .line 516
    nop

    .line 602
    :cond_1f
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
