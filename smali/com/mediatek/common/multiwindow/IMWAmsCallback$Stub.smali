.class public abstract Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;
.super Landroid/os/Binder;
.source "IMWAmsCallback.java"

# interfaces
.implements Lcom/mediatek/common/multiwindow/IMWAmsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/multiwindow/IMWAmsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.multiwindow.IMWAmsCallback"

.field static final TRANSACTION_findProcessNameByToken:I = 0x2

.field static final TRANSACTION_findStackIdByTask:I = 0x5

.field static final TRANSACTION_findStackIdByToken:I = 0x4

.field static final TRANSACTION_moveActivityTaskToFront:I = 0x3

.field static final TRANSACTION_restoreStack:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.mediatek.common.multiwindow.IMWAmsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWAmsCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.mediatek.common.multiwindow.IMWAmsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const-string v0, "com.mediatek.common.multiwindow.IMWAmsCallback"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->findStackIdByTask(I)I

    move-result v3

    .line 98
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v2

    .line 84
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 87
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->findStackIdByToken(Landroid/os/IBinder;)I

    move-result v3

    .line 88
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v2

    .line 74
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->moveActivityTaskToFront(Landroid/os/IBinder;)Z

    move-result v3

    .line 78
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v2

    .line 64
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 67
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->findProcessNameByToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v2

    .line 53
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 57
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 58
    .local v3, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->restoreStack(Landroid/os/IBinder;Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
