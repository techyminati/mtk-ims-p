.class public Lcom/android/ims/ImsEcbm;
.super Ljava/lang/Object;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsEcbm"


# instance fields
.field private final miEcbm:Lcom/android/ims/internal/IImsEcbm;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsEcbm;)V
    .locals 2
    .param p1, "iEcbm"    # Lcom/android/ims/internal/IImsEcbm;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "ImsEcbm"

    const-string v1, "ImsEcbm created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    .line 55
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "exitEmergencyCallbackMode()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V
    .locals 4
    .param p1, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsEcbm;->miEcbm:Lcom/android/ims/internal/IImsEcbm;

    new-instance v1, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;-><init>(Lcom/android/ims/ImsEcbm;Lcom/android/ims/ImsEcbmStateListener;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setEcbmStateListener()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
