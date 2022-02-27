.class public Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Landroid/telephony/ims/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsCall;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsCall;

    .line 2297
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2841
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2843
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2846
    return-void

    .line 2851
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2852
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2853
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2854
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2856
    if-eqz v1, :cond_1

    .line 2858
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2861
    goto :goto_0

    .line 2859
    :catch_0
    move-exception v0

    .line 2860
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionConferenceExtendFailed :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2863
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2854
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2868
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2871
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2872
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: not supported for transient conference session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2874
    return-void

    .line 2877
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2, p3}, Lcom/android/ims/ImsCall;->createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2879
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_1

    .line 2881
    return-void

    .line 2886
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2887
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v2, v2, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2888
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2890
    if-eqz v2, :cond_2

    .line 2892
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2895
    goto :goto_0

    .line 2893
    :catch_0
    move-exception v1

    .line 2894
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtendReceived :: "

    invoke-virtual {v3, v4, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2897
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 2888
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2806
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2809
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2812
    return-void

    .line 2815
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2, p3}, Lcom/android/ims/ImsCall;->createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2817
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_1

    .line 2818
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2819
    return-void

    .line 2824
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2825
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v2, v2, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2826
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2827
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2829
    if-eqz v2, :cond_2

    .line 2831
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2834
    goto :goto_0

    .line 2832
    :catch_0
    move-exception v1

    .line 2833
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtended :: "

    invoke-virtual {v3, v4, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2836
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 2827
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 3010
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3012
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3013
    return-void
.end method

.method public callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3093
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandover :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3099
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3100
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3101
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    if-eqz v1, :cond_0

    .line 3105
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3109
    goto :goto_0

    .line 3107
    :catch_0
    move-exception v0

    .line 3108
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandover :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3111
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3101
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3116
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 3122
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3123
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3124
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    if-eqz v1, :cond_0

    .line 3128
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3132
    goto :goto_0

    .line 3130
    :catch_0
    move-exception v0

    .line 3131
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandoverFailed :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3134
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3124
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2425
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHeld :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2433
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->shouldSkipResetMergePending()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2434
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2438
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2440
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget v1, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 2442
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->mergeInternal()V

    .line 2443
    monitor-exit v0

    return-void

    .line 2446
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iput v2, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2447
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2449
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsCall;->updateHoldStateIfNecessary(Z)V

    .line 2451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2453
    if-eqz v1, :cond_2

    .line 2455
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2458
    goto :goto_0

    .line 2456
    :catch_0
    move-exception v0

    .line 2457
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2460
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 2451
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2464
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2466
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2470
    return-void

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2476
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2477
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2478
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2480
    const/4 v0, 0x0

    .line 2483
    .local v0, "isHoldForMerge":Z
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2484
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget v3, v3, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2485
    const/4 v0, 0x1

    .line 2488
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iput v2, v3, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2489
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v3, v3, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2491
    .local v3, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v4, v2}, Lcom/android/ims/ImsCall;->updateHoldStateIfNecessary(Z)V

    .line 2493
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2495
    if-eqz v3, :cond_2

    .line 2497
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2500
    goto :goto_0

    .line 2498
    :catch_0
    move-exception v1

    .line 2499
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionHoldFailed :: "

    invoke-virtual {v2, v4, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2502
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 2493
    .end local v3    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2478
    .end local v0    # "isHoldForMerge":Z
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2512
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2514
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2518
    return-void

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2524
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2525
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2528
    if-eqz v1, :cond_1

    .line 2530
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2533
    goto :goto_0

    .line 2531
    :catch_0
    move-exception v0

    .line 2532
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHoldReceived :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2535
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2526
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2901
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionInviteParticipantsRequestDelivered ::"

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2903
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2906
    return-void

    .line 2911
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2913
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resetConferenceMergingFlag()V

    .line 2915
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2916
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2918
    if-eqz v1, :cond_1

    .line 2920
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2923
    goto :goto_0

    .line 2921
    :catch_0
    move-exception v0

    .line 2922
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestDelivered :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2925
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2916
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2930
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2932
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2935
    return-void

    .line 2940
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2942
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resetConferenceMergingFlag()V

    .line 2944
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2945
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2947
    if-eqz v1, :cond_1

    .line 2949
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2952
    goto :goto_0

    .line 2950
    :catch_0
    move-exception v0

    .line 2951
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestFailed :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2954
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2945
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "newSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 2688
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: newSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2689
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    goto :goto_1

    .line 2694
    :cond_0
    if-eqz p1, :cond_2

    .line 2695
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->doesCallSessionExistsInMerge(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2696
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2699
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    .line 2701
    :goto_1
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2705
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2709
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2714
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2715
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2716
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1

    .line 2717
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2719
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: No merge host for this conference!"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2721
    :goto_0
    monitor-exit v0

    .line 2722
    return-void

    .line 2721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2645
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2648
    return-void
.end method

.method public callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    .line 3071
    invoke-static {}, Lcom/android/ims/ImsCall;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3072
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMultipartyStateChanged isMultiParty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "Y"

    goto :goto_0

    .line 3073
    :cond_0
    const-string v2, "N"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3072
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3078
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3079
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3080
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3082
    if-eqz v1, :cond_2

    .line 3084
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3087
    goto :goto_1

    .line 3085
    :catch_0
    move-exception v0

    .line 3086
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionMultipartyStateChanged :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3089
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void

    .line 3080
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2300
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2302
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2306
    return-void

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2312
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2315
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->copyCallProfileIfNecessary(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    if-eqz v1, :cond_1

    .line 2321
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2324
    goto :goto_0

    .line 2322
    :catch_0
    move-exception v0

    .line 2323
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionProgressing :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2326
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2317
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2958
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRemoveParticipantsRequestDelivered ::"

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2960
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2963
    return-void

    .line 2968
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2969
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2970
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    if-eqz v1, :cond_1

    .line 2974
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2977
    goto :goto_0

    .line 2975
    :catch_0
    move-exception v0

    .line 2976
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestDelivered :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2979
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2970
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2984
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2986
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2987
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2989
    return-void

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2995
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2996
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2998
    if-eqz v1, :cond_1

    .line 3000
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3003
    goto :goto_0

    .line 3001
    :catch_0
    move-exception v0

    .line 3002
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestFailed :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3005
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2996
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2588
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2590
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2593
    return-void

    .line 2596
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2597
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2598
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2602
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2603
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2604
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2605
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    if-eqz v0, :cond_1

    .line 2609
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2612
    goto :goto_0

    .line 2610
    :catch_0
    move-exception v1

    .line 2611
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeFailed :: "

    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2614
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2605
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2598
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2618
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2620
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2623
    return-void

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2629
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2630
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2631
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    if-eqz v1, :cond_1

    .line 2635
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2638
    goto :goto_0

    .line 2636
    :catch_0
    move-exception v0

    .line 2637
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeReceived :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2640
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2631
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2545
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2547
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2548
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2550
    return-void

    .line 2557
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->shouldSkipResetMergePending()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2558
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2570
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2571
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v2, v2, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2572
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2573
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iput v1, v3, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2574
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iput-boolean v1, v3, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2575
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    if-eqz v2, :cond_2

    .line 2579
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2582
    goto :goto_0

    .line 2580
    :catch_0
    move-exception v0

    .line 2581
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: "

    invoke-virtual {v1, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2584
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 2575
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 3210
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3211
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3212
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3214
    if-eqz v1, :cond_0

    .line 3216
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3219
    goto :goto_0

    .line 3217
    :catch_0
    move-exception v0

    .line 3218
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyResponseReceived:: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3221
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3212
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3167
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRttModifyRequestReceived"

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3169
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3170
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3171
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3173
    iget-object v0, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3174
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionRttModifyRequestReceived:: ignoring request, requested profile is not RTT."

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3176
    return-void

    .line 3179
    :cond_0
    if-eqz v1, :cond_1

    .line 3181
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3184
    goto :goto_0

    .line 3182
    :catch_0
    move-exception v0

    .line 3183
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyRequestReceived:: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3186
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3171
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .locals 4
    .param p1, "status"    # I

    .line 3192
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyResponseReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3193
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3194
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3195
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3197
    if-eqz v1, :cond_0

    .line 3199
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3202
    goto :goto_0

    .line 3200
    :catch_0
    move-exception v0

    .line 3201
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyResponseReceived:: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3204
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3195
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2365
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2371
    return-void

    .line 2376
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2377
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2378
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$002(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 2379
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2381
    if-eqz v1, :cond_1

    .line 2383
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2386
    goto :goto_0

    .line 2384
    :catch_0
    move-exception v0

    .line 2385
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2388
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2379
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2330
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2332
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2336
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2342
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    return-void

    .line 2349
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2350
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2351
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    if-eqz v1, :cond_1

    .line 2356
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2359
    goto :goto_0

    .line 2357
    :catch_0
    move-exception v0

    .line 2358
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2361
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2352
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2338
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2339
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 3139
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3140
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3142
    return-void

    .line 3145
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", suppServiceInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3150
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3151
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3152
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3154
    if-eqz v1, :cond_1

    .line 3156
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3159
    goto :goto_0

    .line 3157
    :catch_0
    move-exception v0

    .line 3158
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionSuppServiceReceived :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3161
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3152
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2392
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2394
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2399
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2400
    return-void

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->checkIfConferenceMerge(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2407
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget v0, v0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    if-eqz v0, :cond_1

    .line 2408
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: overrideReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget v2, v2, Lcom/android/ims/ImsCall;->mOverrideReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2409
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget v1, v1, Lcom/android/ims/ImsCall;->mOverrideReason:I

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 2410
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object p2, v0

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2419
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2421
    return-void
.end method

.method public callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I

    .line 3044
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTtyModeReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3048
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3049
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3050
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3052
    if-eqz v1, :cond_0

    .line 3054
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3057
    goto :goto_0

    .line 3055
    :catch_0
    move-exception v0

    .line 3056
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTtyModeReceived :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3059
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3050
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2752
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2754
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2757
    return-void

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2763
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2764
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2765
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2767
    if-eqz v1, :cond_1

    .line 2769
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2772
    goto :goto_0

    .line 2770
    :catch_0
    move-exception v0

    .line 2771
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateFailed :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2774
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2765
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2778
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2780
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2783
    return-void

    .line 2788
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2789
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2790
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$102(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    .line 2791
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2792
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    if-eqz v1, :cond_1

    .line 2796
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2799
    goto :goto_0

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateReceived :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2801
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2792
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2726
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2729
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2731
    return-void

    .line 2736
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2737
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2738
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2739
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2741
    if-eqz v1, :cond_1

    .line 2743
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2746
    goto :goto_0

    .line 2744
    :catch_0
    move-exception v0

    .line 2745
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdated :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2748
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2739
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 3018
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ussdMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3021
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3022
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3024
    return-void

    .line 3029
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3030
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3031
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3033
    if-eqz v1, :cond_1

    .line 3035
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3038
    goto :goto_0

    .line 3036
    :catch_0
    move-exception v0

    .line 3037
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUssdMessageReceived :: "

    invoke-virtual {v2, v3, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3040
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3031
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected doesCallSessionExistsInMerge(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 2
    .param p1, "cs"    # Landroid/telephony/ims/ImsCallSession;

    .line 2656
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 2658
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 2659
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 2657
    :goto_0
    return v1
.end method
