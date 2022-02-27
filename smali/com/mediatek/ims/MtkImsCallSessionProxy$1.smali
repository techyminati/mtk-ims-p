.class Lcom/mediatek/ims/MtkImsCallSessionProxy$1;
.super Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;
.source "MtkImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 77
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callTerminated()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 172
    return-void
.end method

.method public cancelDeviceSwitch()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->cancelDeviceSwitch()V

    .line 137
    return-void
.end method

.method public close()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->close()V

    .line 82
    return-void
.end method

.method public deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->explicitCallTransfer()V

    .line 122
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->isIncomingCallMultiparty()Z

    move-result v0

    return v0
.end method

.method public notifyDeviceSwitchFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 156
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyDeviceSwitchFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 157
    return-void
.end method

.method public notifyDeviceSwitched()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyDeviceSwitched()V

    .line 162
    return-void
.end method

.method public notifyRttECCRedialEvent()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRttECCRedialEvent()V

    .line 142
    return-void
.end method

.method public notifyTextCapabilityChanged(IIII)V
    .locals 1
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteCapability"    # I

    .line 149
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyTextCapabilityChanged(IIII)V

    .line 152
    return-void
.end method

.method public resume()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->resume()V

    .line 167
    return-void
.end method

.method public sendDtmfbyTarget(CLandroid/os/Message;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "target"    # Landroid/os/Messenger;

    .line 116
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->sendDtmfbyTarget(CLandroid/os/Message;Landroid/os/Messenger;)V

    .line 117
    return-void
.end method

.method public setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V

    .line 107
    return-void
.end method

.method public setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V

    .line 97
    return-void
.end method

.method public unattendedCallTransfer(Ljava/lang/String;I)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->unattendedCallTransfer(Ljava/lang/String;I)V

    .line 127
    return-void
.end method
