.class public interface abstract Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
.super Ljava/lang/Object;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract callSessionDeviceSwitchFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionDeviceSwitched(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionTransferFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract callSessionTransferred(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
