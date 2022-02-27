.class Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;
.super Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityCallbackManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<",
        "Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;

.field final synthetic this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method private constructor <init>(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 1

    .line 214
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Lcom/android/ims/MmTelFeatureConnection$1;)V

    .line 216
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;

    invoke-direct {p1, p0, v0}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;Lcom/android/ims/MmTelFeatureConnection$1;)V

    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->mCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/MmTelFeatureConnection;Lcom/android/ims/MmTelFeatureConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p2, "x1"    # Lcom/android/ims/MmTelFeatureConnection$1;

    .line 214
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

    return-void
.end method


# virtual methods
.method createConnection()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 232
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v2, v2, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->access$700(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 233
    .local v1, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-eqz v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->mCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 236
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_0
    const-string v0, "MmTelFeatureConnection"

    const-string v2, "create: Couldn\'t get IImsMmTelFeature binder"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    return v0

    .line 233
    .end local v1    # "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeConnection()V
    .locals 4

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "binder":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 249
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget-object v3, v3, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-static {v2, v3}, Lcom/android/ims/MmTelFeatureConnection;->access$700(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 252
    goto :goto_0

    .line 253
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 250
    :catch_0
    move-exception v2

    .line 253
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    if-eqz v0, :cond_0

    .line 256
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->mCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager$CapabilityCallbackAdapter;

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 257
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MmTelFeatureConnection"

    const-string v3, "remove: IImsMmTelFeature binder is dead"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 261
    :cond_0
    const-string v1, "MmTelFeatureConnection"

    const-string v2, "remove: Couldn\'t get IImsMmTelFeature binder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_2
    return-void

    .line 253
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
