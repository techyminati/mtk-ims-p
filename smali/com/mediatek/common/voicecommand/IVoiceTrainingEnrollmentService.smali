.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
.super Ljava/lang/Object;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;
    }
.end annotation


# virtual methods
.method public abstract enrollSoundModel(IILjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unEnrollSoundModel()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
