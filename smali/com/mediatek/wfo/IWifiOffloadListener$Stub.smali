.class public abstract Lcom/mediatek/wfo/IWifiOffloadListener$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadListener.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.wfo.IWifiOffloadListener"

.field static final TRANSACTION_onHandover:I = 0x1

.field static final TRANSACTION_onRequestImsSwitch:I = 0x3

.field static final TRANSACTION_onRoveOut:I = 0x2

.field static final TRANSACTION_onWifiPdnOOSStateChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/wfo/IWifiOffloadListener;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
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

    .line 38
    const-string v0, "com.mediatek.wfo.IWifiOffloadListener"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 82
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onWifiPdnOOSStateChanged(II)V

    .line 88
    return v2

    .line 72
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    nop

    .line 77
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onRequestImsSwitch(IZ)V

    .line 78
    return v2

    .line 60
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 64
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    nop

    .line 66
    .restart local v1    # "_arg1":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 67
    .local v4, "_arg2":I
    invoke-virtual {p0, v3, v1, v4}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onRoveOut(IZI)V

    .line 68
    return v2

    .line 48
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 54
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 55
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onHandover(III)V

    .line 56
    return v2

    .line 43
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
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
