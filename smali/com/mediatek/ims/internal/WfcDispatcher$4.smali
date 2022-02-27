.class Lcom/mediatek/ims/internal/WfcDispatcher$4;
.super Landroid/os/Handler;
.source "WfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/WfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/WfcDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 223
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    .line 227
    .local v0, "what":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v4, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$600(Lcom/mediatek/ims/internal/WfcDispatcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 231
    packed-switch v0, :pswitch_data_0

    .line 305
    :pswitch_0
    const-string v2, "Wfc-IMSA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v4, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$600(Lcom/mediatek/ims/internal/WfcDispatcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 300
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$1200(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    .line 301
    goto/16 :goto_1

    .line 293
    :pswitch_2
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 294
    .local v2, "locationRsp":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish for transaction-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v3, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$1100(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    .line 296
    goto/16 :goto_1

    .line 271
    .end local v2    # "locationRsp":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    :pswitch_3
    move-object v2, v1

    check-cast v2, Landroid/location/Location;

    .line 272
    .local v2, "location":Landroid/location/Location;
    if-nez v2, :cond_0

    .line 273
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    const-string v4, "network location get null, unexpected result"

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 274
    return-void

    .line 277
    :cond_0
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 278
    .local v3, "latitude":D
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 279
    .local v5, "longitude":D
    iget-object v7, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update all GeoLocationTask with ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 281
    iget-object v7, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v7}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 282
    .local v8, "locationTask":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iput-wide v3, v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    .line 283
    iput-wide v5, v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    .line 284
    iget-object v9, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get network location, send EVENT_MSG_REQUEST_GEO_LOCATION for transactionId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 286
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/mediatek/ims/internal/WfcDispatcher$4;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 287
    .end local v8    # "locationTask":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    goto :goto_0

    .line 288
    :cond_1
    iget-object v7, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v7}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 289
    goto :goto_1

    .line 249
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "latitude":D
    .end local v5    # "longitude":D
    :pswitch_4
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 250
    .local v2, "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v3, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$1000(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 253
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    const-string v4, "getLastKnownLocation failed"

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 255
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/ims/internal/WfcDispatcher$4;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 233
    .end local v2    # "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    :pswitch_5
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 234
    .restart local v2    # "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push GeoLocation task transaction-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$800()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher$4;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 245
    nop

    .line 308
    .end local v2    # "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
