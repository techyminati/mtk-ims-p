.class public Lcom/mediatek/ims/ril/DefaultOpImsRIL;
.super Ljava/lang/Object;
.source "DefaultOpImsRIL.java"

# interfaces
.implements Lcom/mediatek/ims/ril/OpImsCommandsInterface;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public cancelDeviceSwitch(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 145
    return-void
.end method

.method public cancelUssiFrom(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 130
    return-void
.end method

.method public deviceSwitch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 140
    return-void
.end method

.method public dialFrom(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "fromAddress"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "isVideoCall"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .line 120
    return-void
.end method

.method public registerForGttCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public registerForRttModifyRequestReceive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public registerForRttModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public registerForRttTextReceive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public sendRttModifyRequest(IILandroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "newMode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 61
    return-void
.end method

.method public sendRttText(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 66
    return-void
.end method

.method public sendUssiFrom(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "ussi"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 125
    return-void
.end method

.method public setEmergencyCallConfig(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "isForceEcc"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 135
    return-void
.end method

.method public setRttMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 55
    return-void
.end method

.method public setRttModifyRequestResponse(IILandroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 72
    return-void
.end method

.method public unregisterForGttCapabilityIndicator(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public unregisterForRttModifyRequestReceive(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 114
    return-void
.end method

.method public unregisterForRttModifyResponse(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 93
    return-void
.end method

.method public unregisterForRttTextReceive(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 103
    return-void
.end method
