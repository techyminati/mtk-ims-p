.class Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigProvider;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 64
    const-string v0, "ImsConfigProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "deviceContext":Landroid/content/Context;
    const-string v1, "imsconfig.db"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const-string v1, "ImsConfigProvider"

    const-string v2, "[onReceive] Failed to move database"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const-string v1, "ImsConfigProvider"

    const-string v2, "[onReceive] Move database successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigProvider;

    new-instance v2, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    invoke-direct {v2, v0}, Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->mDatabaseHelper:Lcom/mediatek/ims/config/internal/SqlDatabaseHelper;

    .line 74
    const-string v1, "ImsConfigProvider"

    const-string v2, "[onReceive] Create mDatabaseHelper again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigProvider$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigProvider;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    return-void
.end method
