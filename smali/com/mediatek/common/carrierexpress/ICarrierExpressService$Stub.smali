.class public abstract Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;
.super Landroid/os/Binder;
.source "ICarrierExpressService.java"

# interfaces
.implements Lcom/mediatek/common/carrierexpress/ICarrierExpressService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.carrierexpress.ICarrierExpressService"

.field static final TRANSACTION_getActiveOpPack:I = 0x1

.field static final TRANSACTION_getAllOpPackList:I = 0x4

.field static final TRANSACTION_getOpPackFromSimInfo:I = 0x2

.field static final TRANSACTION_getOperatorSubIdList:I = 0x5

.field static final TRANSACTION_setOpPackActive:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
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

    .line 39
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 88
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getOperatorSubIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 92
    .local v3, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 94
    return v2

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getAllOpPackList()Ljava/util/Map;

    move-result-object v1

    .line 82
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 84
    return v2

    .line 67
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 74
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->setOpPackActive(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v2

    .line 57
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getOpPackFromSimInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v2

    .line 49
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getActiveOpPack()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v2

    .line 44
    .end local v1    # "_result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
