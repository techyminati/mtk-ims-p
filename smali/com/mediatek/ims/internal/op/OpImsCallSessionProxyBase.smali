.class public Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;
.super Ljava/lang/Object;
.source "OpImsCallSessionProxyBase.java"

# interfaces
.implements Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpImsCallSessionProxyBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIncomingRttCallType(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 138
    const-string v0, "checkIncomingRttCallType"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public handleGttCapabilityIndication(Landroid/os/AsyncResult;Lcom/mediatek/ims/internal/IMtkImsCallSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "proxy"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p3, "callId"    # Ljava/lang/String;

    .line 70
    const-string v0, "handleGttCapabilityIndication"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public handleRttECCRedialEvent(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 1
    .param p1, "proxy"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 75
    const-string v0, "handleRttECCRedialEvent"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public handleRttModifyRequestReceive(Landroid/os/AsyncResult;Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "proxy"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p5, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 94
    const-string v0, "handleRttModifyRequestReceive"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public handleRttModifyResponse(Landroid/os/AsyncResult;Ljava/lang/String;Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 88
    const-string v0, "handleRttModifyResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public handleRttTextReceive(Landroid/os/AsyncResult;Ljava/lang/String;Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 82
    const-string v0, "handleRttTextReceive"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public isRttEnabledForCallSession()Z
    .locals 1

    .line 143
    const-string v0, "isRttEnabledForCallSession"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public notifyRttECCRedialEvent(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 1
    .param p1, "mtkListener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .param p2, "mtkImsCallSessionProxy"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 108
    const-string v0, "notifyRttECCRedialEvent"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public notifyTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    .locals 1
    .param p1, "mtkListener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .param p2, "mtkImsCallSessionProxy"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p3, "localCapability"    # I
    .param p4, "remoteCapability"    # I
    .param p5, "localTextStatus"    # I
    .param p6, "realRemoteCapability"    # I

    .line 102
    const-string v0, "notifyTextCapabilityChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected printDefaultLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "funcName"    # Ljava/lang/String;

    .line 63
    const-string v0, "OpImsCallSessionProxyBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " call to OP base"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;)V
    .locals 1
    .param p1, "callIdString"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "rttMessage"    # Ljava/lang/String;

    .line 115
    const-string v0, "sendRttMessage"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public sendRttModifyRequest(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "callIdString"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 121
    const-string v0, "sendRttModifyRequest"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public sendRttModifyResponse(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Z)V
    .locals 1
    .param p1, "callIdString"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "response"    # Z

    .line 127
    const-string v0, "sendRttModifyResponse"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setRttModeForDial(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Z)V
    .locals 2
    .param p1, "callIdString"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "isRtt"    # Z

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRttModeForDial + isRtt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/op/OpImsCallSessionProxyBase;->printDefaultLog(Ljava/lang/String;)V

    .line 134
    return-void
.end method
