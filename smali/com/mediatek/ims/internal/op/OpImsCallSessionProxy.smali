.class public interface abstract Lcom/mediatek/ims/internal/op/OpImsCallSessionProxy;
.super Ljava/lang/Object;
.source "OpImsCallSessionProxy.java"


# virtual methods
.method public abstract checkIncomingRttCallType(Landroid/content/Intent;)V
.end method

.method public abstract handleGttCapabilityIndication(Landroid/os/AsyncResult;Lcom/mediatek/ims/internal/IMtkImsCallSession;Ljava/lang/String;)V
.end method

.method public abstract handleRttECCRedialEvent(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
.end method

.method public abstract handleRttModifyRequestReceive(Landroid/os/AsyncResult;Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
.end method

.method public abstract handleRttModifyResponse(Landroid/os/AsyncResult;Ljava/lang/String;Landroid/telephony/ims/ImsCallSessionListener;)V
.end method

.method public abstract handleRttTextReceive(Landroid/os/AsyncResult;Ljava/lang/String;Landroid/telephony/ims/ImsCallSessionListener;)V
.end method

.method public abstract isRttEnabledForCallSession()Z
.end method

.method public abstract notifyRttECCRedialEvent(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
.end method

.method public abstract notifyTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
.end method

.method public abstract sendRttMessage(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;)V
.end method

.method public abstract sendRttModifyRequest(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Landroid/telephony/ims/ImsCallProfile;)V
.end method

.method public abstract sendRttModifyResponse(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Z)V
.end method

.method public abstract setRttModeForDial(Ljava/lang/String;Lcom/mediatek/ims/ril/ImsCommandsInterface;Z)V
.end method
