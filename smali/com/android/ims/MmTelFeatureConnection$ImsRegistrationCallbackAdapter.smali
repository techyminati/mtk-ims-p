.class Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;
.super Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationCallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager<",
        "Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRegistrationCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;

.field final synthetic this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method private constructor <init>(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 1

    .line 140
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/MmTelFeatureConnection$CallbackAdapterManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Lcom/android/ims/MmTelFeatureConnection$1;)V

    .line 142
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;

    invoke-direct {p1, p0, v0}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;Lcom/android/ims/MmTelFeatureConnection$1;)V

    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mRegistrationCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/MmTelFeatureConnection;Lcom/android/ims/MmTelFeatureConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/MmTelFeatureConnection;
    .param p2, "x1"    # Lcom/android/ims/MmTelFeatureConnection$1;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;)V

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

    .line 187
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 188
    .local v0, "imsRegistration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mRegistrationCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsRegistration;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 190
    const/4 v1, 0x1

    return v1

    .line 192
    :cond_0
    const-string v1, "MmTelFeatureConnection"

    const-string v2, "ImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, 0x0

    return v1
.end method

.method removeConnection()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 200
    .local v0, "imsRegistration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$400(Lcom/android/ims/MmTelFeatureConnection;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->mRegistrationCallbackAdapter:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter$RegistrationCallbackAdapter;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsRegistration;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MmTelFeatureConnection"

    const-string v3, "removeConnection: couldn\'t remove registration callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 207
    :cond_0
    const-string v1, "MmTelFeatureConnection"

    const-string v2, "ImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_1
    return-void
.end method
