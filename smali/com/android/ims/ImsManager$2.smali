.class Lcom/android/ims/ImsManager$2;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/ImsManager;->createImsService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method constructor <init>(Lcom/android/ims/ImsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;

    .line 2142
    iput-object p1, p0, Lcom/android/ims/ImsManager$2;->this$0:Lcom/android/ims/ImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyStateChanged()V
    .locals 2

    .line 2145
    iget-object v0, p0, Lcom/android/ims/ImsManager$2;->this$0:Lcom/android/ims/ImsManager;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->access$600(Lcom/android/ims/ImsManager;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/ims/-$$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0;->INSTANCE:Lcom/android/ims/-$$Lambda$a4IO_gY853vtN_bjQR9bZYk4Js0;

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2146
    return-void
.end method

.method public notifyUnavailable()V
    .locals 2

    .line 2150
    iget-object v0, p0, Lcom/android/ims/ImsManager$2;->this$0:Lcom/android/ims/ImsManager;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->access$600(Lcom/android/ims/ImsManager;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;->INSTANCE:Lcom/android/ims/-$$Lambda$VPAygt3Y-cyud4AweDbrpru2LJ8;

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2151
    return-void
.end method
