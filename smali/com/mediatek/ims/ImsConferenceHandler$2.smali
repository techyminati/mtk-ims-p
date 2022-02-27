.class Lcom/mediatek/ims/ImsConferenceHandler$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 375
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private fullUpdateParticipants(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset all users as participants :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "counter":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 415
    .local v2, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "entity":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v4, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$300(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "userAddr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler$2;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v5

    .line 418
    .local v5, "userInfo":Landroid/os/Bundle;
    const-string v6, "ImsConferenceHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handle user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v8, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " addr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    .line 419
    invoke-static {v8, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 418
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-nez v0, :cond_0

    .line 421
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    const-string v7, "mtk_key_conference_first_participant_as_host_supported"

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsConferenceHandler;->access$700(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v7}, Lcom/mediatek/ims/ImsConferenceHandler;->access$800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 424
    const-string v6, "ImsConferenceHandler"

    const-string v7, "Handle 1st user as host for this case."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    add-int/lit8 v0, v0, 0x1

    .line 426
    goto :goto_0

    .line 430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 431
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v3    # "entity":Ljava/lang/String;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "userInfo":Landroid/os/Bundle;
    goto :goto_2

    .line 432
    .restart local v2    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .restart local v3    # "entity":Ljava/lang/String;
    .restart local v4    # "userAddr":Ljava/lang/String;
    .restart local v5    # "userInfo":Landroid/os/Bundle;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    const-string v6, "ImsConferenceHandler"

    const-string v7, "add unknow participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v2    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v3    # "entity":Ljava/lang/String;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "userInfo":Landroid/os/Bundle;
    :goto_2
    goto/16 :goto_0

    .line 438
    :cond_3
    return-void
.end method

.method private getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 585
    .local v1, "cache":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    const-string v0, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPairedAddressFromCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-object v1

    .line 590
    .end local v1    # "cache":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    .line 594
    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPairedAddressFromLatestRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v2}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 598
    :cond_2
    return-object p1
.end method

.method private handleImsConfCallMessage(ILjava/lang/String;)V
    .locals 8
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1200(Lcom/mediatek/ims/ImsConferenceHandler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 502
    const-string v0, "ImsConferenceHandler"

    const-string v1, "ImsConference is closed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 506
    :cond_0
    if-eqz p2, :cond_c

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 511
    :cond_1
    const-string v0, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoLteConfCallMessage, data length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConferenceHandler$2;->parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    move-result-object v0

    .line 514
    .local v0, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    if-nez v0, :cond_2

    .line 515
    const-string v1, "ImsConferenceHandler"

    const-string v2, "can\'t create xmlData object, update conf state with local cache"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$100(Lcom/mediatek/ims/ImsConferenceHandler;)V

    .line 517
    return-void

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v2}, Lcom/mediatek/ims/ImsConferenceHandler;->access$900(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 522
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getHostInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->access$300(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$902(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    :cond_3
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getCEPState()I

    move-result v2

    .line 527
    .local v2, "cepState":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v4

    .line 528
    .local v3, "isPartialCEP":Z
    :goto_0
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPartialCEP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getVersion()I

    move-result v5

    .line 532
    .local v5, "version":I
    if-nez v3, :cond_6

    .line 533
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1300(Lcom/mediatek/ims/ImsConferenceHandler;)I

    move-result v6

    if-le v6, v5, :cond_5

    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1300(Lcom/mediatek/ims/ImsConferenceHandler;)I

    move-result v6

    if-eq v6, v1, :cond_5

    .line 534
    const-string v1, "ImsConferenceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version is less than local version"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    .line 535
    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1300(Lcom/mediatek/ims/ImsConferenceHandler;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 538
    :cond_5
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6, v5}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1302(Lcom/mediatek/ims/ImsConferenceHandler;I)I

    .line 542
    :cond_6
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 545
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUserCount()I

    move-result v7

    .line 549
    .local v7, "userCount":I
    packed-switch v2, :pswitch_data_0

    .line 557
    if-eq v7, v1, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v7, v1, :cond_7

    goto :goto_1

    .line 554
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler$2;->partialUpdateParticipants(Ljava/util/List;)V

    .line 555
    goto :goto_2

    .line 551
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler$2;->fullUpdateParticipants(Ljava/util/List;)V

    .line 552
    goto :goto_2

    .line 560
    :cond_7
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler$2;->partialUpdateParticipants(Ljava/util/List;)V

    goto :goto_2

    .line 558
    :cond_8
    :goto_1
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler$2;->fullUpdateParticipants(Ljava/util/List;)V

    .line 566
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler$2;->isEmptyConference()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1400(Lcom/mediatek/ims/ImsConferenceHandler;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1500(Lcom/mediatek/ims/ImsConferenceHandler;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 567
    const-string v1, "ImsConferenceHandler"

    const-string v4, "no participants, terminate the conference"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1600()Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 569
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1600()Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 571
    :cond_9
    return-void

    .line 574
    :cond_a
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1000(Lcom/mediatek/ims/ImsConferenceHandler;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 575
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler$2;->restoreParticipantsAddressByLocalCache()V

    .line 578
    :cond_b
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1700(Lcom/mediatek/ims/ImsConferenceHandler;)V

    .line 579
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler$2;->updateLocalCache()V

    .line 580
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1502(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z

    .line 581
    return-void

    .line 507
    .end local v0    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .end local v2    # "cepState":I
    .end local v3    # "isPartialCEP":Z
    .end local v5    # "version":I
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    .end local v7    # "userCount":I
    :cond_c
    :goto_3
    const-string v0, "ImsConferenceHandler"

    const-string v1, "Failed to handleImsConfCallMessage due to data is empty"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEmptyConference()Z
    .locals 7

    .line 474
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 476
    .local v0, "userCount":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 477
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 479
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 480
    .local v3, "userHandle":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 481
    .local v4, "confInfo":Landroid/os/Bundle;
    const-string v5, "status"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "status":Ljava/lang/String;
    const-string v6, "disconnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 483
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1100(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "userHandle":Ljava/lang/String;
    .end local v4    # "confInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    goto :goto_0

    .line 484
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .restart local v3    # "userHandle":Ljava/lang/String;
    .restart local v4    # "confInfo":Landroid/os/Bundle;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 486
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "userHandle":Ljava/lang/String;
    .end local v4    # "confInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 488
    :cond_2
    if-nez v0, :cond_3

    .line 489
    const/4 v2, 0x1

    return v2

    .line 491
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;
    .locals 5
    .param p1, "user"    # Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 398
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "entity":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$300(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "userAddr":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 401
    .local v2, "userInfo":Landroid/os/Bundle;
    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v3, "display-text"

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v3, "endpoint"

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v3, "status"

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v3, "user-entity"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-object v2
.end method

.method private parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .locals 4
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 380
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 381
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 382
    .local v0, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 383
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 384
    .local v2, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;-><init>()V

    .line 385
    .local v3, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    nop

    .line 388
    invoke-virtual {v2, v0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    return-object v3

    .line 390
    .end local v0    # "inStream":Ljava/io/InputStream;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$100(Lcom/mediatek/ims/ImsConferenceHandler;)V

    .line 393
    const/4 v1, 0x0

    return-object v1
.end method

.method private partialUpdateParticipants(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 441
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    const-string v1, "partial update participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 443
    .local v1, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "entity":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v3, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->access$300(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "userAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v4}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1000(Lcom/mediatek/ims/ImsConferenceHandler;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler$2;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler$2;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v4

    .line 449
    .local v4, "userInfo":Landroid/os/Bundle;
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v7, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    .line 450
    invoke-static {v7, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 449
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "status":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 466
    :cond_1
    const-string v6, "dialing-out"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 467
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v2    # "entity":Ljava/lang/String;
    .end local v3    # "userAddr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    goto :goto_2

    .line 455
    .restart local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .restart local v2    # "entity":Ljava/lang/String;
    .restart local v3    # "userAddr":Ljava/lang/String;
    .restart local v4    # "userInfo":Landroid/os/Bundle;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v6, "connected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 456
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v6, "ImsConferenceHandler"

    const-string v7, "add unknow participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 458
    :cond_3
    const-string v6, "disconnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 460
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 461
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v7}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 462
    const-string v6, "ImsConferenceHandler"

    const-string v7, "remove unknow participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v2    # "entity":Ljava/lang/String;
    .end local v3    # "userAddr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 471
    :cond_5
    return-void
.end method

.method private restoreParticipantsAddressByLocalCache()V
    .locals 17

    .line 615
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v2}, Lcom/mediatek/ims/ImsConferenceHandler;->access$800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 616
    .local v1, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 619
    .local v2, "restoreList":Ljava/util/LinkedHashMap;
    new-instance v3, Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v4}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 622
    .local v3, "participants":Ljava/util/LinkedHashMap;
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 623
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 624
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 625
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 626
    .local v6, "userHandle":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 627
    .local v7, "confInfo":Landroid/os/Bundle;
    invoke-direct {v0, v6}, Lcom/mediatek/ims/ImsConferenceHandler$2;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "restoreAddr":Ljava/lang/String;
    iget-object v9, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v9, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1100(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 629
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 631
    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v9, "ImsConferenceHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wait for restore: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v11, v8}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    :cond_0
    const-string v9, "user"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v9, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v9}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v9, "ImsConferenceHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore participant: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    .line 638
    invoke-static {v11, v8}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 637
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v6    # "userHandle":Ljava/lang/String;
    .end local v7    # "confInfo":Landroid/os/Bundle;
    .end local v8    # "restoreAddr":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 644
    .local v5, "resIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 645
    .local v6, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move v8, v7

    .line 646
    .local v8, "restoreIndex":I
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 647
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v8, :cond_2

    .line 648
    goto :goto_3

    .line 650
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 651
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 652
    .local v10, "userHandle":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 653
    .local v11, "confInfo":Landroid/os/Bundle;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 655
    .local v12, "restoreAddr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 656
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 658
    :cond_3
    const-string v13, "status"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 659
    .local v13, "status":Ljava/lang/String;
    const-string v14, "disconnected"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 662
    goto :goto_2

    .line 664
    :cond_4
    iget-object v14, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v14}, Lcom/mediatek/ims/ImsConferenceHandler;->access$1800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v14

    invoke-virtual {v14, v12, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v14, "user"

    invoke-virtual {v11, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v14, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v14}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v14, "ImsConferenceHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore participant: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    .line 668
    invoke-static {v7, v12}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 667
    invoke-static {v14, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    add-int/lit8 v8, v8, 0x1

    .line 670
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v10    # "userHandle":Ljava/lang/String;
    .end local v11    # "confInfo":Landroid/os/Bundle;
    .end local v12    # "restoreAddr":Ljava/lang/String;
    .end local v13    # "status":Ljava/lang/String;
    nop

    .line 645
    const/4 v7, 0x0

    goto :goto_2

    .line 673
    :cond_5
    :goto_3
    invoke-direct {v0, v6}, Lcom/mediatek/ims/ImsConferenceHandler$2;->restoreUnknowParticipants(Ljava/util/ArrayList;)V

    .line 674
    return-void
.end method

.method private restoreUnknowParticipants(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 677
    .local p1, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 678
    .local v0, "restoredUnknowParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 679
    .local v1, "restoreIndex":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v2}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 680
    .local v3, "userInfo":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v1, :cond_0

    .line 681
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 685
    .local v4, "restoreAddr":Ljava/lang/String;
    const-string v5, "user"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v5}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 689
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 691
    :cond_1
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore unknow participants("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    add-int/lit8 v1, v1, 0x1

    .line 694
    .end local v3    # "userInfo":Landroid/os/Bundle;
    .end local v4    # "restoreAddr":Ljava/lang/String;
    goto :goto_0

    .line 696
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v2, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$402(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/util/List;)Ljava/util/List;

    .line 697
    return-void
.end method

.method private updateLocalCache()V
    .locals 6

    .line 602
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v0}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 603
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 605
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 606
    .local v2, "confInfo":Landroid/os/Bundle;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "status":Ljava/lang/String;
    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "addr":Ljava/lang/String;
    const-string v5, "disconnected"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 609
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v5}, Lcom/mediatek/ims/ImsConferenceHandler;->access$800(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 611
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v2    # "confInfo":Landroid/os/Bundle;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 612
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 701
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, "android.intent.action.ims.conference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    const-string v1, "message.content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$002(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z

    .line 708
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/ImsConferenceHandler$2;->handleImsConfCallMessage(ILjava/lang/String;)V

    .line 710
    .end local v1    # "data":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 711
    :cond_1
    const-string v1, "ImsConferenceHandler"

    const-string v2, "can\'t handle conference message since no call ID. Abnormal Case"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_0
    return-void
.end method
