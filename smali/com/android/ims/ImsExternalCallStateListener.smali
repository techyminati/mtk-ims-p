.class public Lcom/android/ims/ImsExternalCallStateListener;
.super Ljava/lang/Object;
.source "ImsExternalCallStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "externalCallState":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    return-void
.end method
