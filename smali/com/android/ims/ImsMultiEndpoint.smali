.class public Lcom/android/ims/ImsMultiEndpoint;
.super Ljava/lang/Object;
.source "ImsMultiEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsMultiEndpoint"


# instance fields
.field private final mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V
    .locals 2
    .param p1, "iImsMultiEndpoint"    # Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "ImsMultiEndpoint"

    const-string v1, "ImsMultiEndpoint created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 70
    return-void
.end method


# virtual methods
.method public isBinderAlive()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMultiEndpoint;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V
    .locals 4
    .param p1, "externalCallStateListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 75
    :try_start_0
    const-string v0, "ImsMultiEndpoint"

    const-string v1, "setExternalCallStateListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint;->mImsMultiendpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    new-instance v1, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;-><init>(Lcom/android/ims/ImsMultiEndpoint;Lcom/android/ims/ImsExternalCallStateListener;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsMultiEndpoint;->setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setExternalCallStateListener could not be set."

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
