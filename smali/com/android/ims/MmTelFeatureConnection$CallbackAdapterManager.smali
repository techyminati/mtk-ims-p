.class abstract Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
.super Ljava/lang/Object;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CallbackAdapterManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackAdapterManager"


# instance fields
.field private mHasConnected:Z

.field protected final mLocalCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method private constructor <init>(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 0

    .line 83
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 87
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLocalCallbacks:Ljava/util/Set;

    .line 88
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mHasConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/MmTelFeatureConnection;Lcom/android/ims/MmTelFeatureConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p2, "x1"    # Lcom/android/ims/MmTelFeatureConnection$1;

    .line 83
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mHasConnected:Z

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->createConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mHasConnected:Z

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Can not create connection!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const-string v0, "CallbackAdapterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local callback added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLocalCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 123
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mHasConnected:Z

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->removeConnection()V

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mHasConnected:Z

    .line 129
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const-string v0, "CallbackAdapterManager"

    const-string v1, "Closing connection and clearing callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLocalCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 132
    return-void

    .line 129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method abstract createConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;, "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<TT;>;"
    .local p1, "localCallback":Ljava/lang/Object;, "TT;"
    const-string v0, "CallbackAdapterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local callback removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLocalCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 113
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mHasConnected:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mLocalCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->removeConnection()V

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;->mHasConnected:Z

    .line 119
    :cond_0
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract removeConnection()V
.end method
