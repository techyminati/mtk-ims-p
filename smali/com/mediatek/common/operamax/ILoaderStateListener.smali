.class public interface abstract Lcom/mediatek/common/operamax/ILoaderStateListener;
.super Ljava/lang/Object;
.source "ILoaderStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSavingState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTunnelState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
