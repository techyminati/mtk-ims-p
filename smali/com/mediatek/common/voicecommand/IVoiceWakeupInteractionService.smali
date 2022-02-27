.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;
.super Ljava/lang/Object;
.source "IVoiceWakeupInteractionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCurrentUserOnSwitch(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRecognition()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopRecognition()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
