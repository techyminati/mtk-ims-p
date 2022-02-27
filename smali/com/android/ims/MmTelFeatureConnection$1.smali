.class Lcom/android/ims/MmTelFeatureConnection$1;
.super Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method constructor <init>(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 309
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public imsFeatureCreated(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v1, v1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    if-eq v1, p1, :cond_0

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_0
    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection;->access$800(Lcom/android/ims/MmTelFeatureConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    const-string v2, "MmTelFeatureConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmTel enabled on slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v2, v1}, Lcom/android/ims/MmTelFeatureConnection;->access$802(Lcom/android/ims/MmTelFeatureConnection;Z)Z

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v2, v1}, Lcom/android/ims/MmTelFeatureConnection;->access$902(Lcom/android/ims/MmTelFeatureConnection;Z)Z

    .line 329
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency calling enabled on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    :goto_0
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public imsFeatureRemoved(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v1, v1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    if-eq v1, p1, :cond_0

    .line 341
    monitor-exit v0

    return-void

    .line 343
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTel removed on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1000(Lcom/android/ims/MmTelFeatureConnection;)V

    .line 347
    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->access$902(Lcom/android/ims/MmTelFeatureConnection;Z)Z

    .line 351
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency calling disabled on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public imsStatusChanged(III)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$000(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 361
    :try_start_0
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsStatusChanged: slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v1, v1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->access$1102(Lcom/android/ims/MmTelFeatureConnection;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 365
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1200(Lcom/android/ims/MmTelFeatureConnection;)Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1200(Lcom/android/ims/MmTelFeatureConnection;)Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;->notifyStateChanged()V

    .line 369
    :cond_0
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
