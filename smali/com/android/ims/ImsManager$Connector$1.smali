.class Lcom/android/ims/ImsManager$Connector$1;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager$Connector;


# direct methods
.method constructor <init>(Lcom/android/ims/ImsManager$Connector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager$Connector;

    .line 216
    iput-object p1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyStateChanged()V
    .locals 2

    .line 219
    const-string v0, "post a runnable for state changed notification"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->access$000(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v0}, Lcom/android/ims/ImsManager$Connector;->access$200(Lcom/android/ims/ImsManager$Connector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v1}, Lcom/android/ims/ImsManager$Connector;->access$100(Lcom/android/ims/ImsManager$Connector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method public notifyUnavailable()V
    .locals 2

    .line 241
    const-string v0, "post a runnable for unavailable notification"

    invoke-static {v0}, Lcom/android/ims/ImsManager;->access$000(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v0}, Lcom/android/ims/ImsManager$Connector;->access$200(Lcom/android/ims/ImsManager$Connector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v1}, Lcom/android/ims/ImsManager$Connector;->access$300(Lcom/android/ims/ImsManager$Connector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method
