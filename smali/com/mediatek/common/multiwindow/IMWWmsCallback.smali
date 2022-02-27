.class public interface abstract Lcom/mediatek/common/multiwindow/IMWWmsCallback;
.super Ljava/lang/Object;
.source "IMWWmsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract enableFocusedFrame(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract miniMaxTask(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract moveFloatingWindow(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resizeFloatingWindow(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
