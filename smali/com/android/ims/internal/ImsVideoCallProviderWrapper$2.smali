.class Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderWrapper.java"


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
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 150
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeVideoQuality(I)V

    .line 217
    goto/16 :goto_2

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 214
    goto/16 :goto_2

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setCallDataUsage(J)V

    .line 210
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$500(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/RegistrantList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 211
    goto/16 :goto_2

    .line 198
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 200
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 201
    .local v1, "width":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 202
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changePeerDimensions(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v1    # "width":I
    .end local v2    # "height":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 205
    nop

    .line 206
    goto/16 :goto_2

    .line 204
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 195
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->handleCallSessionEvent(I)V

    .line 196
    goto/16 :goto_2

    .line 175
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 177
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 178
    .local v1, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 179
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 181
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 184
    iget-object v4, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v4}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$400(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;

    .line 185
    .local v5, "callback":Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    if-eqz v5, :cond_0

    .line 186
    invoke-interface {v5, v1, v2, v3}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;->onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    .end local v5    # "callback":Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;
    :cond_0
    goto :goto_0

    .line 191
    .end local v1    # "status":I
    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 192
    nop

    .line 193
    goto :goto_2

    .line 191
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 156
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 157
    .local v0, "videoProfile":Landroid/telecom/VideoProfile;
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$200(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 157
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    .line 158
    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$300(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    const-string v2, "receiveSessionModifyRequest: requestedVideoState=%s; rejecting as video is disabled."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 160
    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$000(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v5}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    goto :goto_1

    .line 167
    :catch_0
    move-exception v1

    .line 169
    :goto_1
    return-void

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v1, v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 173
    .end local v0    # "videoProfile":Landroid/telecom/VideoProfile;
    nop

    .line 221
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
