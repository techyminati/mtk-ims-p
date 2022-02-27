.class final Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;
.super Lcom/android/ims/internal/IImsVideoCallCallback$Stub;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    .param p2, "x1"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;-><init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V

    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .line 122
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 128
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 109
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 110
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    .line 117
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 104
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .line 88
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 95
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 96
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 97
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 98
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoCallCallback;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->access$100(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method
