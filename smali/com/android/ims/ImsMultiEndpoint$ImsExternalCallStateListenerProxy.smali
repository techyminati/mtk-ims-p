.class Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;
.super Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;
.source "ImsMultiEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsMultiEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsExternalCallStateListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsExternalCallStateListener;

.field final synthetic this$0:Lcom/android/ims/ImsMultiEndpoint;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsMultiEndpoint;Lcom/android/ims/ImsExternalCallStateListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/android/ims/ImsExternalCallStateListener;

    .line 42
    iput-object p1, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->this$0:Lcom/android/ims/ImsMultiEndpoint;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    .line 44
    return-void
.end method


# virtual methods
.method public onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "externalCallState":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const-string v0, "ImsMultiEndpoint"

    const-string v1, "onImsExternalCallStateUpdate"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    .line 59
    :cond_0
    return-void
.end method
