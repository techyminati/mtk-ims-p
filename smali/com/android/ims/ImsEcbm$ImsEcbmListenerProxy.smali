.class Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;
.super Lcom/android/ims/internal/IImsEcbmListener$Stub;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsEcbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsEcbmListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsEcbmStateListener;

.field final synthetic this$0:Lcom/android/ims/ImsEcbm;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsEcbm;Lcom/android/ims/ImsEcbmStateListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/android/ims/ImsEcbmStateListener;

    .line 85
    iput-object p1, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->this$0:Lcom/android/ims/ImsEcbm;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbmListener$Stub;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    .line 87
    return-void
.end method


# virtual methods
.method public enteredECBM()V
    .locals 2

    .line 91
    const-string v0, "ImsEcbm"

    const-string v1, "enteredECBM ::"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMEntered()V

    .line 96
    :cond_0
    return-void
.end method

.method public exitedECBM()V
    .locals 2

    .line 100
    const-string v0, "ImsEcbm"

    const-string v1, "exitedECBM ::"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMExited()V

    .line 105
    :cond_0
    return-void
.end method
