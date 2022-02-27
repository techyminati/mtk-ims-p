.class Lcom/android/ims/ImsUt$IImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsUtListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsUt;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsUt;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsUt;Lcom/android/ims/ImsUt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/ImsUt;
    .param p2, "x1"    # Lcom/android/ims/ImsUt$1;

    .line 648
    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;)V

    return-void
.end method


# virtual methods
.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 1
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 742
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Landroid/os/Registrant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    invoke-static {v0}, Lcom/android/ims/ImsUt;->access$100(Lcom/android/ims/ImsUt;)Landroid/os/Registrant;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 745
    :cond_0
    return-void
.end method

.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 701
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 703
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, v1, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, v3, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v2, v3, p3}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    .line 705
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, v2, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v1

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 715
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 717
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, v1, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, v3, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v2, v3, p3}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    .line 719
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, v2, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    monitor-exit v1

    .line 721
    return-void

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 729
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 731
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, v1, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, v3, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v2, v3, p3}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    .line 733
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, v2, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    monitor-exit v1

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    .line 677
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 679
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, v1, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, v3, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v2, v3, p3}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    .line 681
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, v2, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    monitor-exit v1

    .line 683
    return-void

    .line 682
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 687
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 689
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, v1, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, v3, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v2, v3, p3}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 691
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, v2, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    monitor-exit v1

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 664
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 666
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, v1, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 667
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, v3, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v2, v3, p3}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 668
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, v2, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    .line 654
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 656
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v1, v1, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v3, v3, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;)V

    .line 658
    iget-object v2, p0, Lcom/android/ims/ImsUt$IImsUtListenerProxy;->this$0:Lcom/android/ims/ImsUt;

    iget-object v2, v2, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
