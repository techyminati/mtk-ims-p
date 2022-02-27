.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
.super Ljava/lang/Object;
.source "IVoiceWakeupInteractionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVoiceWakeupDetected(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
