.class public interface abstract Lcom/mediatek/ims/ril/OpImsCommandsInterface;
.super Ljava/lang/Object;
.source "OpImsCommandsInterface.java"


# virtual methods
.method public abstract cancelDeviceSwitch(Landroid/os/Message;)V
.end method

.method public abstract cancelUssiFrom(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract deviceSwitch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract dialFrom(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/Message;)V
.end method

.method public abstract registerForGttCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttModifyRequestReceive(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRttTextReceive(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendRttModifyRequest(IILandroid/os/Message;)V
.end method

.method public abstract sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract sendUssiFrom(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setEmergencyCallConfig(IZLandroid/os/Message;)V
.end method

.method public abstract setRttMode(ILandroid/os/Message;)V
.end method

.method public abstract setRttModifyRequestResponse(IILandroid/os/Message;)V
.end method

.method public abstract unregisterForGttCapabilityIndicator(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttModifyRequestReceive(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttModifyResponse(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRttTextReceive(Landroid/os/Handler;)V
.end method
