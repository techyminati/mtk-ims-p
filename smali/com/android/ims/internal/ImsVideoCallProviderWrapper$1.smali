.class Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;
.super Ljava/lang/Object;
.source "ImsVideoCallProviderWrapper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 75
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$000(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 79
    return-void
.end method
