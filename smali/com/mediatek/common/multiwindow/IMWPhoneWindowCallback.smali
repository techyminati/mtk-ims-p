.class public interface abstract Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;
.super Ljava/lang/Object;
.source "IMWPhoneWindowCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract setFloatDecorVisibility(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWindowType(Landroid/os/IBinder;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
