.class public Lcom/android/ims/internal/VideoPauseTracker;
.super Ljava/lang/Object;
.source "VideoPauseTracker.java"


# static fields
.field public static final SOURCE_DATA_ENABLED:I = 0x2

.field private static final SOURCE_DATA_ENABLED_STR:Ljava/lang/String; = "DATA_ENABLED"

.field public static final SOURCE_INCALL:I = 0x1

.field private static final SOURCE_INCALL_STR:Ljava/lang/String; = "INCALL"


# instance fields
.field private mPauseRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseRequestsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$sourcesToString$0(Lcom/android/ims/internal/VideoPauseTracker;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/Integer;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sourceToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # I

    .line 172
    packed-switch p1, :pswitch_data_0

    .line 178
    const-string v0, "unknown"

    return-object v0

    .line 174
    :pswitch_0
    const-string v0, "DATA_ENABLED"

    return-object v0

    .line 176
    :pswitch_1
    const-string v0, "INCALL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sourcesToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 188
    .local p1, "sources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/internal/-$$Lambda$VideoPauseTracker$s27lPMyD4hPTfNQr9bbkfdTbLK8;

    invoke-direct {v2, p0}, Lcom/android/ims/internal/-$$Lambda$VideoPauseTracker$s27lPMyD4hPTfNQr9bbkfdTbLK8;-><init>(Lcom/android/ims/internal/VideoPauseTracker;)V

    .line 190
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    .line 191
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    .line 189
    return-object v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearPauseRequests()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPaused()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldPauseVideoFor(I)Z
    .locals 7
    .param p1, "source"    # I

    .line 77
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/internal/VideoPauseTracker;->isPaused()Z

    move-result v1

    .line 79
    .local v1, "wasPaused":Z
    iget-object v2, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 82
    const-string v5, "shouldPauseVideoFor: source=%s, pendingRequests=%s - should pause"

    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    iget-object v4, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v4}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 82
    invoke-static {p0, v5, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    monitor-exit v0

    return v3

    .line 87
    :cond_0
    const-string v5, "shouldPauseVideoFor: source=%s, pendingRequests=%s - already paused"

    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    iget-object v6, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v6}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 87
    invoke-static {p0, v5, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    monitor-exit v0

    return v4

    .line 92
    .end local v1    # "wasPaused":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldResumeVideoFor(I)Z
    .locals 8
    .param p1, "source"    # I

    .line 108
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/internal/VideoPauseTracker;->isPaused()Z

    move-result v1

    .line 110
    .local v1, "wasPaused":Z
    iget-object v2, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/ims/internal/VideoPauseTracker;->isPaused()Z

    move-result v2

    .line 113
    .local v2, "isPaused":Z
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 114
    const-string v6, "shouldResumeVideoFor: source=%s, pendingRequests=%s - should resume"

    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    iget-object v4, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v4}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 114
    invoke-static {p0, v6, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    monitor-exit v0

    return v5

    .line 118
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 119
    const-string v6, "shouldResumeVideoFor: source=%s, pendingRequests=%s - stay paused"

    new-array v3, v3, [Ljava/lang/Object;

    .line 120
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    iget-object v7, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 119
    invoke-static {p0, v6, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    monitor-exit v0

    return v4

    .line 124
    :cond_1
    const-string v6, "shouldResumeVideoFor: source=%s, pendingRequests=%s - not paused"

    new-array v3, v3, [Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/ims/internal/VideoPauseTracker;->sourceToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    iget-object v4, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-direct {p0, v4}, Lcom/android/ims/internal/VideoPauseTracker;->sourcesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 124
    invoke-static {p0, v6, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    monitor-exit v0

    return v5

    .line 133
    .end local v1    # "wasPaused":Z
    .end local v2    # "isPaused":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public wasVideoPausedFromSource(I)Z
    .locals 3
    .param p1, "source"    # I

    .line 151
    iget-object v0, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/VideoPauseTracker;->mPauseRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
