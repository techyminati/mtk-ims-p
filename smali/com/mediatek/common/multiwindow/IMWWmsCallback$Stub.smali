.class public abstract Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;
.super Landroid/os/Binder;
.source "IMWWmsCallback.java"

# interfaces
.implements Lcom/mediatek/common/multiwindow/IMWWmsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/multiwindow/IMWWmsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.multiwindow.IMWWmsCallback"

.field static final TRANSACTION_enableFocusedFrame:I = 0x3

.field static final TRANSACTION_miniMaxTask:I = 0x4

.field static final TRANSACTION_moveFloatingWindow:I = 0x1

.field static final TRANSACTION_resizeFloatingWindow:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.mediatek.common.multiwindow.IMWWmsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWWmsCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.mediatek.common.multiwindow.IMWWmsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "com.mediatek.common.multiwindow.IMWWmsCallback"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 86
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->miniMaxTask(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v2

    .line 77
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->enableFocusedFrame(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v2

    .line 64
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 71
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->resizeFloatingWindow(III)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v2

    .line 53
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->moveFloatingWindow(II)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v2

    .line 48
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
