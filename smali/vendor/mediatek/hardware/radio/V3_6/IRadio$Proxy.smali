.class public final Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;
.super Ljava/lang/Object;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_6/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_6/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public abortFemtocellList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4552
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4553
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4555
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4557
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x103

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4558
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4560
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4561
    nop

    .line 4562
    return-void

    .line 4560
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acceptCall(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 767
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 770
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 772
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 773
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 776
    nop

    .line 777
    return-void

    .line 775
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "ackPdu"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1741
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1743
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1744
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1746
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1748
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x61

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1749
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1752
    nop

    .line 1753
    return-void

    .line 1751
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsAck"    # Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1442
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1443
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1445
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1447
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1449
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1450
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1453
    nop

    .line 1454
    return-void

    .line 1452
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsAck"    # Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4350
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4351
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4352
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4353
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4355
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4357
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4358
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4360
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4361
    nop

    .line 4362
    return-void

    .line 4360
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeLastIncomingGsmSms(IZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 749
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 751
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 752
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 754
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 756
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 757
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 760
    nop

    .line 761
    return-void

    .line 759
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeLastIncomingGsmSmsEx(IZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4332
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4333
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4334
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4335
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4336
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4338
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4340
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4341
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4343
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4344
    nop

    .line 4345
    return-void

    .line 4343
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public addImsConferenceCallMember(IILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "confCallId"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "callToAdd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2890
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2891
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2893
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2894
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2897
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2899
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2900
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2902
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2903
    nop

    .line 2904
    return-void

    .line 2902
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 90
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelAvailableNetworks(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4520
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4521
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4523
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4525
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x101

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4526
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4528
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4529
    nop

    .line 4530
    return-void

    .line 4528
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public cancelPendingUssd(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 631
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 634
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 636
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 637
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 640
    nop

    .line 641
    return-void

    .line 639
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public cancelUssi(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3381
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3382
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3383
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3385
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3387
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3388
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3390
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3391
    nop

    .line 3392
    return-void

    .line 3390
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "oldPin2"    # Ljava/lang/String;
    .param p3, "newPin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 245
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 251
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 253
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 254
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 257
    nop

    .line 258
    return-void

    .line 256
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 226
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 232
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 234
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 235
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 238
    nop

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public conference(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 396
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 399
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 401
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 402
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 405
    nop

    .line 406
    return-void

    .line 404
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dailInfo"    # Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2945
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2946
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2948
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2950
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2952
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2953
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2955
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2956
    nop

    .line 2957
    return-void

    .line 2955
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public currentStatus(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "emcSessionId"    # I
    .param p3, "airplaneMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3533
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3534
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3536
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3537
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3539
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3541
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3542
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3544
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3545
    nop

    .line 3546
    return-void

    .line 3544
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public dataConnectionAttach(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5337
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5338
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5339
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5340
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5342
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5344
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5345
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5347
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5348
    nop

    .line 5349
    return-void

    .line 5347
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public dataConnectionDetach(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5354
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5355
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5356
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5357
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5359
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5361
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x130

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5362
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5364
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5365
    nop

    .line 5366
    return-void

    .line 5364
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deactivateDataCall(IIZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cid"    # I
    .param p3, "reasonRadioShutDown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 783
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 785
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 786
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 788
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 790
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 791
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 794
    nop

    .line 795
    return-void

    .line 793
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deactivateDataCall_1_2(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2520
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2522
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2523
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2525
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2527
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2528
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2531
    nop

    .line 2532
    return-void

    .line 2530
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deleteSmsOnRuim(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1592
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1593
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1595
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1597
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1599
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1600
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1603
    nop

    .line 1604
    return-void

    .line 1602
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deleteSmsOnSim(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1091
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1093
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1095
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1097
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1098
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1101
    nop

    .line 1102
    return-void

    .line 1100
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deleteUPBEntry(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "entryType"    # I
    .param p3, "adnIndex"    # I
    .param p4, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3705
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3706
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3708
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3709
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3710
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3712
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3714
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3715
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3717
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3718
    nop

    .line 3719
    return-void

    .line 3717
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public dial(ILandroid/hardware/radio/V1_0/Dial;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/V1_0/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 297
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 299
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 301
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 303
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 304
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 307
    nop

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public dialWithSipUri(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2981
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2982
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2983
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2984
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2986
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2988
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2989
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2991
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2992
    nop

    .line 2993
    return-void

    .line 2991
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "simAuth"    # Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4052
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4053
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4055
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4057
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4059
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4060
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4062
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4063
    nop

    .line 4064
    return-void

    .line 4062
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public eccPreferredRat(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "phoneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3552
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3554
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3556
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3558
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3559
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3561
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3562
    nop

    .line 3563
    return-void

    .line 3561
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public editUPBEntry(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3688
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3689
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3691
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3693
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3695
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3696
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3698
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3699
    nop

    .line 3700
    return-void

    .line 3698
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/V1_0/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3481
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3482
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3484
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3486
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3488
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3489
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3491
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3492
    nop

    .line 3493
    return-void

    .line 3491
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 105
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1625
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1626
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1629
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1631
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1632
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1635
    nop

    .line 1636
    return-void

    .line 1634
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public explicitCallTransfer(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1191
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1192
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1195
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1197
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1198
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1201
    nop

    .line 1202
    return-void

    .line 1200
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public forceReleaseCall(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3032
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3033
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3035
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3037
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3039
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xab

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3040
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3042
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3043
    nop

    .line 3044
    return-void

    .line 3042
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getATR(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4003
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4004
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4005
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4007
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4009
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4010
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4012
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4013
    nop

    .line 4014
    return-void

    .line 4012
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAllowedCarriers(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2233
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2234
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2237
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2239
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2240
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2242
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2243
    nop

    .line 2244
    return-void

    .line 2242
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getApcInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5196
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5197
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5198
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5200
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5202
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x127

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5203
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5205
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5206
    nop

    .line 5207
    return-void

    .line 5205
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAvailableBandModes(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1125
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1128
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1130
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1131
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1134
    nop

    .line 1135
    return-void

    .line 1133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAvailableNetworks(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 910
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 913
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 915
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 916
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 919
    nop

    .line 920
    return-void

    .line 918
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAvailableNetworksWithAct(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4487
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4488
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4489
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4491
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4493
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xff

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4494
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4496
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4497
    nop

    .line 4498
    return-void

    .line 4496
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getBasebandVersion(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 958
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 959
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 962
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 964
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 965
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 968
    nop

    .line 969
    return-void

    .line 967
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCDMASubscription(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1559
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1560
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1563
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1565
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x56

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1569
    nop

    .line 1570
    return-void

    .line 1568
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/V1_0/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 680
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 682
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 684
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 686
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 687
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 690
    nop

    .line 691
    return-void

    .line 689
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCallWaiting(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 714
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 716
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 718
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 720
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 721
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 724
    nop

    .line 725
    return-void

    .line 723
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCdmaBroadcastConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1509
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1510
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1513
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1515
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x53

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1516
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1519
    nop

    .line 1520
    return-void

    .line 1518
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCdmaRoamingPreference(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1307
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1308
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1311
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1313
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1314
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1317
    nop

    .line 1318
    return-void

    .line 1316
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCdmaSubscriptionSource(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1707
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1708
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1711
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1713
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1714
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1716
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1717
    nop

    .line 1718
    return-void

    .line 1716
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCellInfoList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1791
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1792
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1795
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1797
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1798
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1801
    nop

    .line 1802
    return-void

    .line 1800
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getClip(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1025
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1028
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1030
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1031
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1034
    nop

    .line 1035
    return-void

    .line 1033
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getClir(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 647
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 650
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 652
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 653
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 656
    nop

    .line 657
    return-void

    .line 655
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getColp(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3226
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3227
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3228
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3230
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3232
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3233
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3235
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3236
    nop

    .line 3237
    return-void

    .line 3235
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getColr(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3242
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3243
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3244
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3246
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3248
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3249
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3251
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3252
    nop

    .line 3253
    return-void

    .line 3251
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCurrentCalls(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 281
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 284
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 286
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 287
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 290
    nop

    .line 291
    return-void

    .line 289
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCurrentPOLList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4691
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4692
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4693
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4695
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4697
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4698
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4700
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4701
    nop

    .line 4702
    return-void

    .line 4700
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDataCallList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1041
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1044
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1046
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1047
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1050
    nop

    .line 1051
    return-void

    .line 1049
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDataRegistrationState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 476
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 479
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 481
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 482
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 485
    nop

    .line 486
    return-void

    .line 484
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5762
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5763
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5765
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5767
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5768
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5769
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5771
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5772
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5773
    nop

    .line 5775
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5773
    return-object v2

    .line 5775
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDeviceIdentity(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1609
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1610
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1613
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1615
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x59

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1616
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1619
    nop

    .line 1620
    return-void

    .line 1618
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEccNum(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3603
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3604
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3605
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3609
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3612
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3613
    nop

    .line 3614
    return-void

    .line 3612
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 801
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 803
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 806
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 808
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 810
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 811
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 814
    nop

    .line 815
    return-void

    .line 813
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getFemtocellList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4536
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4537
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4539
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4541
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x102

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4542
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4544
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4545
    nop

    .line 4546
    return-void

    .line 4544
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getGsmBroadcastActivation(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4283
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4284
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4285
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4287
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4289
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4290
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4292
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4293
    nop

    .line 4294
    return-void

    .line 4292
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getGsmBroadcastConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1459
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1460
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1463
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1465
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1466
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1469
    nop

    .line 1470
    return-void

    .line 1468
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getGsmBroadcastLangs(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4267
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4268
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4269
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4271
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4273
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4274
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4276
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4277
    nop

    .line 4278
    return-void

    .line 4276
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHardwareConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2047
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2048
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2051
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2053
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x73

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2054
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2057
    nop

    .line 2058
    return-void

    .line 2056
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5687
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5688
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5690
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5692
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5693
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5694
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5696
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 5698
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 5700
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 5701
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 5702
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 5701
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 5705
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 5706
    nop

    .local v10, "_hidl_index_0":I
    :goto_0
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_0

    .line 5707
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 5709
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 5710
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 5711
    nop

    .line 5713
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5706
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_0

    .line 5717
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_0
    nop

    .line 5719
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5717
    return-object v11

    .line 5719
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getIccCardStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 136
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 139
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 141
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 142
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getIccid(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4019
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4020
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4021
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4023
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4025
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4026
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4028
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4029
    nop

    .line 4030
    return-void

    .line 4028
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getImsCfgFeatureValue(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5249
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5250
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5251
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5252
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5253
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5255
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5257
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5258
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5260
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5261
    nop

    .line 5262
    return-void

    .line 5260
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getImsCfgProvisionValue(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5285
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5286
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5287
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5288
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5290
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5292
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5293
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5295
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5296
    nop

    .line 5297
    return-void

    .line 5295
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getImsCfgResourceCapValue(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5320
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5321
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5322
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5323
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5325
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5327
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5328
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5330
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5331
    nop

    .line 5332
    return-void

    .line 5330
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getImsRegistrationState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1843
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1844
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1847
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1849
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x67

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1850
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1853
    nop

    .line 1854
    return-void

    .line 1852
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getImsiForApp(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 314
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 316
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 318
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 320
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 321
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getLastCallFailCause(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 428
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 431
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 433
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 434
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getLteReleaseVersion(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5404
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5405
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5406
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5408
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5410
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x133

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5411
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5413
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5414
    nop

    .line 5415
    return-void

    .line 5413
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getModemActivityInfo(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2199
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2200
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2203
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2205
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2206
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2209
    nop

    .line 2210
    return-void

    .line 2208
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getMute(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1009
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1012
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1014
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1015
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1018
    nop

    .line 1019
    return-void

    .line 1017
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getNeighboringCids(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1241
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1244
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1246
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1247
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1250
    nop

    .line 1251
    return-void

    .line 1249
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getNetworkSelectionMode(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 861
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 864
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 866
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 867
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 870
    nop

    .line 871
    return-void

    .line 869
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getOperator(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 492
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 495
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 497
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 498
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPOLCapability(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4676
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4677
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4679
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4681
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4684
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4685
    nop

    .line 4686
    return-void

    .line 4684
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPhoneBookMemStorage(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3793
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3794
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3797
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3799
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3800
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3802
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3803
    nop

    .line 3804
    return-void

    .line 3802
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPhoneBookStringsLength(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3777
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3778
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3781
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3783
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3784
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3786
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3787
    nop

    .line 3788
    return-void

    .line 3786
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPreferredNetworkType(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1225
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1228
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1230
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1231
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1234
    nop

    .line 1235
    return-void

    .line 1233
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPreferredVoicePrivacy(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1373
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1374
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1377
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1379
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1380
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1383
    nop

    .line 1384
    return-void

    .line 1382
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getProvisionValue(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "provisionstring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2855
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2856
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2858
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2860
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2862
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2863
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2865
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2866
    nop

    .line 2867
    return-void

    .line 2865
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRadioCapability(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2116
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2117
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2120
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2122
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x77

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2123
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2126
    nop

    .line 2127
    return-void

    .line 2125
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRoamingEnable(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3172
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3173
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3175
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3177
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3179
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3180
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3182
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3183
    nop

    .line 3184
    return-void

    .line 3182
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRxTestResult(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4659
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4660
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4661
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4665
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x109

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4668
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4669
    nop

    .line 4670
    return-void

    .line 4668
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSignalStrength(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 444
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 447
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 449
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 450
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSignalStrengthWithWcdmaEcio(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4503
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4504
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4507
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4509
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x100

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4510
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4512
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4513
    nop

    .line 4514
    return-void

    .line 4512
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSmsMemStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4199
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4200
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4201
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4203
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4205
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xee

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4206
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4208
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4209
    nop

    .line 4210
    return-void

    .line 4208
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSmsParameters(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4166
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4167
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4170
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4172
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xec

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4173
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4175
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4176
    nop

    .line 4177
    return-void

    .line 4175
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSmsRuimMemoryStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4452
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4453
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4456
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4458
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4459
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4461
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4462
    nop

    .line 4463
    return-void

    .line 4461
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSmscAddress(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1641
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1642
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1645
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1647
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1648
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1651
    nop

    .line 1652
    return-void

    .line 1650
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSuppServProperty(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5541
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5542
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5543
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5544
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5546
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5548
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5549
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5551
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5552
    nop

    .line 5553
    return-void

    .line 5551
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getTTYMode(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1341
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1344
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1346
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x49

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1347
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1350
    nop

    .line 1351
    return-void

    .line 1349
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getVoiceRadioTechnology(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1775
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1776
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1779
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1781
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1782
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1785
    nop

    .line 1786
    return-void

    .line 1784
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getVoiceRegistrationState(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 460
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 463
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 465
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 466
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getXcapStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3397
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3398
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3401
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3403
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3404
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3406
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3407
    nop

    .line 3408
    return-void

    .line 3406
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public handleStkCallSetupRequestFromSim(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "accept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1175
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1177
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1179
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1181
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1182
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1185
    nop

    .line 1186
    return-void

    .line 1184
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public handleStkCallSetupRequestFromSimWithResCode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4762
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4763
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4764
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4765
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4767
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4769
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4770
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4772
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4773
    nop

    .line 4774
    return-void

    .line 4772
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangup(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 331
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 333
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 335
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 337
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 338
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 341
    nop

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupAll(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3446
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3447
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3448
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3450
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3452
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3453
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3455
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3456
    nop

    .line 3457
    return-void

    .line 3455
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupForegroundResumeBackground(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 364
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 367
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 369
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 370
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 373
    nop

    .line 374
    return-void

    .line 372
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupWaitingOrBackground(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 348
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 351
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 353
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 354
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 357
    nop

    .line 358
    return-void

    .line 356
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupWithReason(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5594
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5595
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5596
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5597
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5598
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5600
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5602
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5603
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5605
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5606
    nop

    .line 5607
    return-void

    .line 5605
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public holdCall(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2647
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2649
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2651
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2653
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x95

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2654
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2657
    nop

    .line 2658
    return-void

    .line 2656
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccCloseLogicalChannel(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1911
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1912
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1914
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1916
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1918
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1919
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1922
    nop

    .line 1923
    return-void

    .line 1921
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "iccIo"    # Landroid/hardware/radio/V1_0/IccIo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 597
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 599
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 601
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 603
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 604
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 607
    nop

    .line 608
    return-void

    .line 606
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "p2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1893
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1894
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1896
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1899
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1901
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1902
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1905
    nop

    .line 1906
    return-void

    .line 1904
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1876
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1877
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1879
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1881
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1883
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x69

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1884
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1887
    nop

    .line 1888
    return-void

    .line 1886
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/SimApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1928
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1929
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1931
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1933
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1935
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1936
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1939
    nop

    .line 1940
    return-void

    .line 1938
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public imsBearerActivationDone(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3049
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3050
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3052
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3053
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3055
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3057
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3058
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3060
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3061
    nop

    .line 3062
    return-void

    .line 3060
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public imsBearerDeactivationDone(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3067
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3068
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3069
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3070
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3071
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3073
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3075
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xad

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3076
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3078
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3079
    nop

    .line 3080
    return-void

    .line 3078
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public imsDeregNotification(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2680
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2681
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2683
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2685
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2687
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x97

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2688
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2690
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2691
    nop

    .line 2692
    return-void

    .line 2690
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public imsEctCommand(ILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2628
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2629
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2631
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2634
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2636
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x94

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2637
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2640
    nop

    .line 2641
    return-void

    .line 2639
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5649
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5650
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5652
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5654
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5655
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5656
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5658
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5659
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 5661
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5659
    return-object v2

    .line 5661
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5668
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5669
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5671
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5673
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5674
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5675
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5677
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5678
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 5680
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5678
    return-object v2

    .line 5680
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5741
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifyEPDGScreenState(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5576
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5577
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5578
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5579
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5581
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5583
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5584
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5586
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5587
    nop

    .line 5588
    return-void

    .line 5586
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5782
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5783
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5785
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5787
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5788
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5790
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5791
    nop

    .line 5792
    return-void

    .line 5790
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvReadItem(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "itemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1945
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1946
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1948
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1950
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1952
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1953
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1955
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1956
    nop

    .line 1957
    return-void

    .line 1955
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvResetConfig(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1996
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1997
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1999
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2001
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2003
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x70

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2004
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2007
    nop

    .line 2008
    return-void

    .line 2006
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvWriteCdmaPrl(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1979
    .local p2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1980
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1982
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1984
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1986
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1987
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1990
    nop

    .line 1991
    return-void

    .line 1989
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "item"    # Landroid/hardware/radio/V1_0/NvWriteItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1962
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1963
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1965
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/NvWriteItem;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1967
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1969
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1970
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1972
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1973
    nop

    .line 1974
    return-void

    .line 1972
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5746
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5747
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5749
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5751
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5752
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5753
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5755
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5756
    nop

    .line 5757
    return-void

    .line 5755
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public pullCall(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3104
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3105
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3107
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3110
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3112
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3113
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3115
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3116
    nop

    .line 3117
    return-void

    .line 3115
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public pullLceData(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2183
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2184
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2187
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2189
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2190
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2193
    nop

    .line 2194
    return-void

    .line 2192
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callInfoEx"    # Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3310
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3311
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3312
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3314
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3316
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3317
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3319
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3320
    nop

    .line 3321
    return-void

    .line 3319
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryFemtoCellSystemSelectionMode(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4587
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4588
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4590
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4592
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x105

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4593
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4595
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4596
    nop

    .line 4597
    return-void

    .line 4595
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryNetworkLock(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4069
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4070
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4072
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4074
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4076
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4077
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4079
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4080
    nop

    .line 4081
    return-void

    .line 4079
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryPhbStorageInfo(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3620
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3621
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3622
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3624
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3626
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3627
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3629
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3630
    nop

    .line 3631
    return-void

    .line 3629
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryUPBAvailable(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "eftype"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3863
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3864
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3865
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3866
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3868
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3870
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3871
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3873
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3874
    nop

    .line 3875
    return-void

    .line 3873
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryUPBCapability(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3672
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3673
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3674
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3676
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3678
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3679
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3681
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3682
    nop

    .line 3683
    return-void

    .line 3681
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readPhbEntry(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .param p3, "bIndex"    # I
    .param p4, "eIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3653
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3654
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3656
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3657
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3658
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3660
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3662
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3663
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3665
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3666
    nop

    .line 3667
    return-void

    .line 3665
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readPhoneBookEntryExt(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index1"    # I
    .param p3, "index2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3827
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3828
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3829
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3830
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3831
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3833
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3835
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3836
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3838
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3839
    nop

    .line 3840
    return-void

    .line 3838
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBAasList(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3934
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3935
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3937
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3938
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3940
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3942
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3943
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3945
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3946
    nop

    .line 3947
    return-void

    .line 3945
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBAnrEntry(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3916
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3917
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3918
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3919
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3920
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3922
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3924
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xde

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3925
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3927
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3928
    nop

    .line 3929
    return-void

    .line 3927
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBEmailEntry(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3880
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3881
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3883
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3884
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3886
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3888
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3889
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3891
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3892
    nop

    .line 3893
    return-void

    .line 3891
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBGasList(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3724
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3725
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3727
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3728
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3730
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3732
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3733
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3735
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3736
    nop

    .line 3737
    return-void

    .line 3735
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBGrpEntry(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3742
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3743
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3745
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3747
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3749
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3750
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3752
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3753
    nop

    .line 3754
    return-void

    .line 3752
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBSneEntry(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3898
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3899
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3900
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3901
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3902
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3904
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3906
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3907
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3909
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3910
    nop

    .line 3911
    return-void

    .line 3909
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public rejectCall(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 412
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 415
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 417
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 418
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reloadModemType(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "modemType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4436
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4437
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4438
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4440
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4442
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4443
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4445
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4446
    nop

    .line 4447
    return-void

    .line 4445
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeCbMsg(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "channelId"    # I
    .param p3, "serialId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4232
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4233
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4234
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4235
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4236
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4238
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4240
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4241
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4243
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4244
    nop

    .line 4245
    return-void

    .line 4243
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeImsConferenceCallMember(IILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "confCallId"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "callToRemove"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2909
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2910
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2912
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2913
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2916
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2918
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2919
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2921
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2922
    nop

    .line 2923
    return-void

    .line 2921
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportAirplaneMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5420
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5421
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5422
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5423
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5425
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5427
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x134

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5428
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5430
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5431
    nop

    .line 5432
    return-void

    .line 5430
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportSimMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "simMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5437
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5438
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5439
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5440
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5442
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5444
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x135

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5445
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5447
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5448
    nop

    .line 5449
    return-void

    .line 5447
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportSmsMemoryStatus(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1674
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1675
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1677
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1679
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1681
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1684
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1685
    nop

    .line 1686
    return-void

    .line 1684
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportStkServiceIsRunning(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1692
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1695
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1697
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1698
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1701
    nop

    .line 1702
    return-void

    .line 1700
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "authContext"    # I
    .param p3, "authData"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2063
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2064
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2066
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2067
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2070
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2072
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x74

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2073
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2075
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2076
    nop

    .line 2077
    return-void

    .line 2075
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public requestIsimAuthentication(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1723
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1724
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1726
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1728
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1730
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x60

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1731
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1734
    nop

    .line 1735
    return-void

    .line 1733
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public requestShutdown(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2100
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2101
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2104
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2106
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x76

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2107
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2109
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2110
    nop

    .line 2111
    return-void

    .line 2109
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public resetAllConnections(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5371
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5372
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5373
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5375
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5377
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x131

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5378
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5380
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5381
    nop

    .line 5382
    return-void

    .line 5380
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public resetMdDataRetryCount(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4913
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4914
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4915
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4916
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4918
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4920
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x118

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4921
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4923
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4924
    nop

    .line 4925
    return-void

    .line 4923
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public resetRadio(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4864
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4865
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4866
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4868
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4870
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x115

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4871
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4873
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4874
    nop

    .line 4875
    return-void

    .line 4873
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public resetSuppServ(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3413
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3414
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3415
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3417
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3419
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3420
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3422
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3423
    nop

    .line 3424
    return-void

    .line 3422
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public responseAcknowledgement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2301
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2302
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2306
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2307
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2310
    nop

    .line 2311
    return-void

    .line 2309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public restartRILD(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4880
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4881
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4882
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4884
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4886
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x116

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4887
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4889
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4890
    nop

    .line 4891
    return-void

    .line 4889
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public resumeCall(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2663
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2664
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2665
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2666
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2668
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2670
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2671
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2674
    nop

    .line 2675
    return-void

    .line 2673
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "nafFqdn"    # Ljava/lang/String;
    .param p3, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p4, "forceRun"    # Z
    .param p5, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3343
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3344
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3345
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3346
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3348
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3349
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3351
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3353
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3354
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3356
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3357
    nop

    .line 3358
    return-void

    .line 3356
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "act"    # Ljava/lang/String;
    .param p4, "csgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4567
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4568
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4569
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4570
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4571
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4572
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4574
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4576
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x104

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4577
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4579
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4580
    nop

    .line 4581
    return-void

    .line 4579
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendAtciRequest(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4847
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4848
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4850
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 4852
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4854
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x114

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4855
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4857
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4858
    nop

    .line 4859
    return-void

    .line 4857
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendBurstDtmf(ILjava/lang/String;II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dtmf"    # Ljava/lang/String;
    .param p3, "on"    # I
    .param p4, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1407
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1409
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1411
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1413
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1415
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1416
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1419
    nop

    .line 1420
    return-void

    .line 1418
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendCDMAFeatureCode(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "featureCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1390
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1392
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1394
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1396
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1397
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1400
    nop

    .line 1401
    return-void

    .line 1399
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1426
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1428
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1430
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1432
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1433
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1436
    nop

    .line 1437
    return-void

    .line 1435
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendCnap(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cnapssMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3258
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3259
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3261
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3263
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3265
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3266
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3269
    nop

    .line 3270
    return-void

    .line 3268
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendDeviceState(IIZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "deviceStateType"    # I
    .param p3, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2249
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2250
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2252
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2253
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2255
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2257
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2258
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2260
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2261
    nop

    .line 2262
    return-void

    .line 2260
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendDtmf(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 525
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 527
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 529
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 531
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 532
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 535
    nop

    .line 536
    return-void

    .line 534
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendEmbmsAtCommand(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3138
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3139
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3141
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3143
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3145
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3146
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3148
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3149
    nop

    .line 3150
    return-void

    .line 3148
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendEnvelope(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1141
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1143
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1145
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1147
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1148
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1151
    nop

    .line 1152
    return-void

    .line 1150
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1759
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1761
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1763
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1765
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x62

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1766
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1769
    nop

    .line 1770
    return-void

    .line 1768
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/ImsSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1859
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1860
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1862
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1864
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1866
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x68

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1867
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1870
    nop

    .line 1871
    return-void

    .line 1869
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/ImsSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4299
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4300
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4302
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4306
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4307
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4310
    nop

    .line 4311
    return-void

    .line 4309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendRequestRaw(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4367
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4368
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4369
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4370
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 4372
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4374
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4375
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4377
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4378
    nop

    .line 4379
    return-void

    .line 4377
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendRequestStrings(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4384
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4385
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4386
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4387
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4389
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4391
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4392
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4395
    nop

    .line 4396
    return-void

    .line 4394
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 559
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 561
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 563
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 565
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 569
    nop

    .line 570
    return-void

    .line 568
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 542
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 544
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 546
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 548
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 549
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 552
    nop

    .line 553
    return-void

    .line 551
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendSubsidyLockRequest(IILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "reqType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5630
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5631
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5632
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5633
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5634
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 5636
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5638
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x140

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5639
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5641
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5642
    nop

    .line 5643
    return-void

    .line 5641
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendTerminalResponseToSim(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "commandResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1158
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1160
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1162
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1164
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1165
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1168
    nop

    .line 1169
    return-void

    .line 1167
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ussd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 614
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 616
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 618
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 620
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 621
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 624
    nop

    .line 625
    return-void

    .line 623
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendUssi(IILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "action"    # I
    .param p3, "ussiString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3364
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3365
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3366
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3367
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3369
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3371
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3372
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3374
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3375
    nop

    .line 3376
    return-void

    .line 3374
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendVsimNotification(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "transactionId"    # I
    .param p3, "eventId"    # I
    .param p4, "simType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4126
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4127
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4128
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4129
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4130
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4131
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4133
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4135
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xea

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4136
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4138
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4139
    nop

    .line 4140
    return-void

    .line 4138
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendVsimOperation(IIIIILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "transactionId"    # I
    .param p3, "eventId"    # I
    .param p4, "result"    # I
    .param p5, "dataLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4145
    .local p6, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4146
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4148
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4149
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4150
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4151
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4152
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 4154
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4156
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4157
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4159
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4160
    nop

    .line 4161
    return-void

    .line 4159
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public separateConnection(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 975
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 977
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 979
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 981
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 982
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 985
    nop

    .line 986
    return-void

    .line 984
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "allAllowed"    # Z
    .param p3, "carriers"    # Landroid/hardware/radio/V1_0/CarrierRestrictions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2215
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2216
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2218
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2219
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2221
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2223
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2224
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2226
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2227
    nop

    .line 2228
    return-void

    .line 2226
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setApcMode(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "reportMode"    # I
    .param p4, "interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5177
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5178
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5179
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5180
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5181
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5182
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5184
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5186
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x126

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5187
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5189
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5190
    nop

    .line 5191
    return-void

    .line 5189
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setBandMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1108
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1110
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1112
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1114
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1115
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1118
    nop

    .line 1119
    return-void

    .line 1117
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 841
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 842
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 844
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 848
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 850
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 851
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 854
    nop

    .line 855
    return-void

    .line 853
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;
    .param p5, "cfmPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3189
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3190
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3192
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3195
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3197
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3199
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3200
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3202
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3203
    nop

    .line 3204
    return-void

    .line 3202
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callInfo"    # Landroid/hardware/radio/V1_0/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 697
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 699
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 701
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 703
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 704
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 707
    nop

    .line 708
    return-void

    .line 706
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "callInfoEx"    # Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3326
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3327
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3328
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3329
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3331
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3333
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3334
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3336
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3337
    nop

    .line 3338
    return-void

    .line 3336
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCallIndication(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "callId"    # I
    .param p4, "seqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3462
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3463
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3464
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3465
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3466
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3467
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3469
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3471
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3472
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3474
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3475
    nop

    .line 3476
    return-void

    .line 3474
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCallWaiting(IZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 731
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 733
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 734
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 736
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 738
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 739
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2317
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2318
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2320
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2322
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2324
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x83

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2325
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2328
    nop

    .line 2329
    return-void

    .line 2327
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCdmaBroadcastActivation(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1543
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1545
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1547
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1549
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x55

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1550
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1553
    nop

    .line 1554
    return-void

    .line 1552
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCdmaBroadcastConfig(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1525
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1526
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1528
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1532
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1533
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1536
    nop

    .line 1537
    return-void

    .line 1535
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCdmaRoamingPreference(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1290
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1291
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1293
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1295
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1297
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1298
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1301
    nop

    .line 1302
    return-void

    .line 1300
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCdmaSubscriptionSource(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cdmaSub"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1274
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1276
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1278
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1280
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1281
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1284
    nop

    .line 1285
    return-void

    .line 1283
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCellInfoListRate(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1807
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1808
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1810
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1812
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1814
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x65

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1815
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1818
    nop

    .line 1819
    return-void

    .line 1817
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setClip(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "clipEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3209
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3210
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3211
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3212
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3214
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3216
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3217
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3219
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3220
    nop

    .line 3221
    return-void

    .line 3219
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setClir(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 663
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 665
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 667
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 669
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 670
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 673
    nop

    .line 674
    return-void

    .line 672
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setColp(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "colpEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3275
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3276
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3277
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3278
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3280
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3282
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3283
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3285
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3286
    nop

    .line 3287
    return-void

    .line 3285
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setColr(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "colrEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3292
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3293
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3295
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3297
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3299
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xba

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3300
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3302
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3303
    nop

    .line 3304
    return-void

    .line 3302
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setDataAllowed(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2030
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2031
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2033
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2035
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2037
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x72

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2038
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2041
    nop

    .line 2042
    return-void

    .line 2040
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setDataProfile(ILjava/util/ArrayList;Z)V
    .locals 5
    .param p1, "serial"    # I
    .param p3, "isRoaming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/DataProfileInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2082
    .local p2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2083
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2085
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2086
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2088
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2090
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x75

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2091
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2093
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2094
    nop

    .line 2095
    return-void

    .line 2093
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setE911State(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4982
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4983
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4984
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4985
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4987
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4989
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4990
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4992
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4993
    nop

    .line 4994
    return-void

    .line 4992
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEccList(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "list1"    # Ljava/lang/String;
    .param p3, "list2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3515
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3516
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3517
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3518
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3521
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3523
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3524
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3526
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3527
    nop

    .line 3528
    return-void

    .line 3526
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEccNum(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ecc_list_with_card"    # Ljava/lang/String;
    .param p3, "ecc_list_no_card"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3585
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3586
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3587
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3588
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3589
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3591
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3593
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3594
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3596
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3597
    nop

    .line 3598
    return-void

    .line 3596
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEccServiceCategory(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "serviceCategory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3498
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3499
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3500
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3501
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3503
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3505
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3506
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3508
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3509
    nop

    .line 3510
    return-void

    .line 3508
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEmergencyAddressId(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5119
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5120
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5121
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5122
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5124
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5126
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x123

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5127
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5129
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5130
    nop

    .line 5131
    return-void

    .line 5129
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEtws(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4215
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4216
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4217
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4218
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4220
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4222
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xef

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4223
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4225
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4226
    nop

    .line 4227
    return-void

    .line 4225
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "lockState"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 821
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 823
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 825
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 827
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 829
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 831
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 832
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 835
    nop

    .line 836
    return-void

    .line 834
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setFdMode(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "param1"    # I
    .param p4, "param2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4726
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4727
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4728
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4729
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4730
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4731
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4733
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4735
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4736
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4738
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4739
    nop

    .line 4740
    return-void

    .line 4738
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setFemtoCellSystemSelectionMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4602
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4603
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4605
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4609
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x106

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4612
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4613
    nop

    .line 4614
    return-void

    .line 4612
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setGsmBroadcastActivation(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1492
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1493
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1495
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1497
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1499
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x52

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1500
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1503
    nop

    .line 1504
    return-void

    .line 1502
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setGsmBroadcastConfig(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1475
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1476
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1478
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1480
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1482
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x51

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1483
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1486
    nop

    .line 1487
    return-void

    .line 1485
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setGsmBroadcastLangs(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "langs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4250
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4251
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4252
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4253
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4255
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4257
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4258
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4260
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4261
    nop

    .line 4262
    return-void

    .line 4260
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5726
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5727
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5729
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5731
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5732
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5734
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5735
    nop

    .line 5736
    return-void

    .line 5734
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsBearerNotification(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5212
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5213
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5214
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5215
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5217
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5219
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x128

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5220
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5222
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5223
    nop

    .line 5224
    return-void

    .line 5222
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsCfgFeatureValue(IIIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5229
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5230
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5231
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5232
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5233
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5234
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5235
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5237
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5239
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x129

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5240
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5242
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5243
    nop

    .line 5244
    return-void

    .line 5242
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsCfgProvisionValue(IILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5267
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5268
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5269
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5270
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5271
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5273
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5275
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5276
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5278
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5279
    nop

    .line 5280
    return-void

    .line 5278
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsCfgResourceCapValue(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5302
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5303
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5304
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5305
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5306
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5308
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5310
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5311
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5313
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5314
    nop

    .line 5315
    return-void

    .line 5313
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2697
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2698
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2700
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2702
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2704
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x98

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2705
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2707
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2708
    nop

    .line 2709
    return-void

    .line 2707
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsRegistrationReport(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3122
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3123
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3126
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3128
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3129
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3131
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3132
    nop

    .line 3133
    return-void

    .line 3131
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsRtpReport(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pdnId"    # I
    .param p3, "networkId"    # I
    .param p4, "timer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3085
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3086
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3087
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3088
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3089
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3090
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3092
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3094
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xae

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3095
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3098
    nop

    .line 3099
    return-void

    .line 3097
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsVideoEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2816
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2817
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2819
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2821
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2823
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2824
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2827
    nop

    .line 2828
    return-void

    .line 2826
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImsVoiceEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2799
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2800
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2802
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2804
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2806
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2807
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2809
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2810
    nop

    .line 2811
    return-void

    .line 2809
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setImscfg(IZZZZZZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "volteEnable"    # Z
    .param p3, "vilteEnable"    # Z
    .param p4, "vowifiEnable"    # Z
    .param p5, "viwifiEnable"    # Z
    .param p6, "smsEnable"    # Z
    .param p7, "eimsEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2833
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2834
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2835
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2836
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2837
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2838
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2839
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2840
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2841
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2843
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2845
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2846
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2848
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2849
    nop

    .line 2850
    return-void

    .line 2848
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setIndicationFilter(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "indicationFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2267
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2268
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2270
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2272
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2274
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2275
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2278
    nop

    .line 2279
    return-void

    .line 2277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setIndicationFilter_1_2(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "indicationFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2437
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2439
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2441
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2443
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2444
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2446
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2447
    nop

    .line 2448
    return-void

    .line 2446
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dataProfileInfo"    # Landroid/hardware/radio/V1_0/DataProfileInfo;
    .param p3, "modemCognitive"    # Z
    .param p4, "isRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1825
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1827
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1828
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1829
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1831
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1833
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x66

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1834
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1836
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1837
    nop

    .line 1838
    return-void

    .line 1836
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "hysteresisMs"    # I
    .param p3, "hysteresisDlKbps"    # I
    .param p4, "hysteresisUlKbps"    # I
    .param p7, "accessNetwork"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2473
    .local p5, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2474
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2476
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2477
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2478
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2479
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2480
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2481
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2483
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2485
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2486
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2489
    nop

    .line 2490
    return-void

    .line 2488
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "serial"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "latitude"    # Ljava/lang/String;
    .param p5, "longitude"    # Ljava/lang/String;
    .param p6, "accuracy"    # Ljava/lang/String;
    .param p7, "method"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;
    .param p9, "state"    # Ljava/lang/String;
    .param p10, "zip"    # Ljava/lang/String;
    .param p11, "countryCode"    # Ljava/lang/String;
    .param p12, "ueWlanMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5092
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v1, v0

    .line 5093
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5094
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5095
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5096
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5097
    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5098
    move-object/from16 v6, p5

    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5099
    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5100
    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5101
    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5102
    move-object/from16 v10, p9

    invoke-virtual {v1, v10}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5103
    move-object/from16 v11, p10

    invoke-virtual {v1, v11}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5104
    move-object/from16 v12, p11

    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5105
    move-object/from16 v13, p12

    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5107
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v14, v0

    .line 5109
    .local v14, "_hidl_reply":Landroid/os/HwParcel;
    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x122

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v14, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5110
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5112
    invoke-virtual {v14}, Landroid/os/HwParcel;->release()V

    .line 5113
    nop

    .line 5114
    return-void

    .line 5112
    :catchall_0
    move-exception v0

    invoke-virtual {v14}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setLocationUpdates(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1257
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1259
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1261
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1263
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1264
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1267
    nop

    .line 1268
    return-void

    .line 1266
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLteAccessStratumReport(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4947
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4948
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4949
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4950
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4952
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4954
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4955
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4957
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4958
    nop

    .line 4959
    return-void

    .line 4957
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLteReleaseVersion(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5387
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5388
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5389
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5390
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5392
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5394
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x132

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5395
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5397
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5398
    nop

    .line 5399
    return-void

    .line 5397
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLteUplinkDataTransfer(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "state"    # I
    .param p3, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4964
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4965
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4966
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4967
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4968
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4970
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4972
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4973
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4975
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4976
    nop

    .line 4977
    return-void

    .line 4975
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "keys"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2962
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2963
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2964
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2965
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2969
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2971
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2972
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2974
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2975
    nop

    .line 2976
    return-void

    .line 2974
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setModemPower(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3969
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3970
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3972
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3974
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3976
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3977
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3979
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3980
    nop

    .line 3981
    return-void

    .line 3979
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setMute(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 991
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 992
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 994
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 996
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 998
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 999
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1002
    nop

    .line 1003
    return-void

    .line 1001
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "srcIp"    # Ljava/lang/String;
    .param p5, "srcPort"    # I
    .param p6, "dstIp"    # Ljava/lang/String;
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5136
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5137
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5139
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5140
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 5141
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5143
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5146
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5148
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x124

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5149
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5151
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5152
    nop

    .line 5153
    return-void

    .line 5151
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "category"    # I
    .param p3, "lockop"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "data_imsi"    # Ljava/lang/String;
    .param p6, "gid1"    # Ljava/lang/String;
    .param p7, "gid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4086
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4087
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4088
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4089
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4090
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4091
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4092
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4093
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4094
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4096
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4098
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4099
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4101
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4102
    nop

    .line 4103
    return-void

    .line 4101
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 876
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 877
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 880
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 882
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 883
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 886
    nop

    .line 887
    return-void

    .line 885
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkSelectionModeManual(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 893
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 895
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 897
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 899
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 900
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 903
    nop

    .line 904
    return-void

    .line 902
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "act"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4468
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4469
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4470
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4471
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4472
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4473
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4475
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4477
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4478
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4480
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4481
    nop

    .line 4482
    return-void

    .line 4480
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setOperatorConfiguration(IILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5505
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5506
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5507
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5508
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5509
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5511
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5513
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x139

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5514
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5516
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5517
    nop

    .line 5518
    return-void

    .line 5516
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setOverrideApn(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "overridApn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4796
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4797
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4798
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4799
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4801
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4803
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x111

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4804
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4806
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4807
    nop

    .line 4808
    return-void

    .line 4806
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPOLEntry(IILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .param p3, "numeric"    # Ljava/lang/String;
    .param p4, "nAct"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4707
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4708
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4709
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4710
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4711
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4712
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4714
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4716
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4717
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4719
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4720
    nop

    .line 4721
    return-void

    .line 4719
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPdnNameReuse(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "apnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4813
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4814
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4815
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4816
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4818
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4820
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x112

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4821
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4823
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4824
    nop

    .line 4825
    return-void

    .line 4823
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPdnReuse(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pdnReuse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4779
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4780
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4782
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4784
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4786
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x110

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4787
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4789
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4790
    nop

    .line 4791
    return-void

    .line 4789
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "storage"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3809
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3810
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3811
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3812
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3813
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3815
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3817
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3818
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3820
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3821
    nop

    .line 3822
    return-void

    .line 3820
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPhonebookReady(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ready"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3952
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3953
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3955
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3957
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3959
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3962
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3963
    nop

    .line 3964
    return-void

    .line 3962
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPreferredNetworkType(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "nwType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1207
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1208
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1210
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1212
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1214
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1215
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1218
    nop

    .line 1219
    return-void

    .line 1217
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPreferredVoicePrivacy(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1356
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1357
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1361
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1363
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1364
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1367
    nop

    .line 1368
    return-void

    .line 1366
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPropImsHandover(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5488
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5489
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5490
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5491
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5493
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5495
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x138

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5496
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5498
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5499
    nop

    .line 5500
    return-void

    .line 5498
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "provisionstring"    # Ljava/lang/String;
    .param p3, "provisionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2872
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2873
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2875
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2876
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2878
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2880
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2881
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2883
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2884
    nop

    .line 2885
    return-void

    .line 2883
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2132
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2133
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2135
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2137
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2139
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2140
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2143
    nop

    .line 2144
    return-void

    .line 2142
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRadioPower(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 508
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 510
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 512
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 514
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 515
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRcsUaEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2782
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2783
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2785
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2787
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2789
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2790
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2792
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2793
    nop

    .line 2794
    return-void

    .line 2792
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRemoveRestrictEutranMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4930
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4931
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4932
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4933
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4935
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4937
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x119

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4938
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4940
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4941
    nop

    .line 4942
    return-void

    .line 4940
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V
    .locals 5
    .param p1, "radioResponse"    # Landroid/hardware/radio/V1_0/IRadioResponse;
    .param p2, "radioIndication"    # Landroid/hardware/radio/V1_0/IRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 118
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 120
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 122
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 124
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 125
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 126
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 129
    nop

    .line 130
    return-void

    .line 128
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V
    .locals 5
    .param p1, "atciResponse"    # Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .param p2, "atciIndication"    # Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4830
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4831
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4832
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 4833
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 4835
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4837
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x113

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4838
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4840
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4841
    nop

    .line 4842
    return-void

    .line 4840
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V
    .locals 5
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2556
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2557
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2559
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2561
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2563
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2564
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2565
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2568
    nop

    .line 2569
    return-void

    .line 2567
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V
    .locals 5
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2538
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2539
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2540
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2541
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2543
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2545
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2546
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2549
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2550
    nop

    .line 2551
    return-void

    .line 2549
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V
    .locals 5
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2574
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2575
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2576
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2577
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2579
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2581
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2582
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2585
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2586
    nop

    .line 2587
    return-void

    .line 2585
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V
    .locals 5
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2592
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2593
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2594
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2595
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2597
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2599
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2600
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2603
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2604
    nop

    .line 2605
    return-void

    .line 2603
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V
    .locals 5
    .param p1, "sublockResp"    # Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .param p2, "sublockInd"    # Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5613
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5614
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5615
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 5616
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 5618
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5620
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5621
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5623
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5624
    nop

    .line 5625
    return-void

    .line 5623
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResumeRegistration(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4401
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4402
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4403
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4404
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4406
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4408
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4409
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4411
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4412
    nop

    .line 4413
    return-void

    .line 4411
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRoamingEnable(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3155
    .local p2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3156
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3158
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3160
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3162
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3163
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3165
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3166
    nop

    .line 3167
    return-void

    .line 3165
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRxTestConfig(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "antType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4641
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4642
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4643
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4644
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4646
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4648
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x108

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4651
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4652
    nop

    .line 4653
    return-void

    .line 4651
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setServiceStateToModem(IIIIIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "voiceRegState"    # I
    .param p3, "dataRegState"    # I
    .param p4, "voiceRoamingType"    # I
    .param p5, "dataRoamingType"    # I
    .param p6, "rilVoiceRegState"    # I
    .param p7, "rilDataRegState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4620
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4621
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4622
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4623
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4624
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4625
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4626
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4627
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4629
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4631
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x107

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4632
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4634
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4635
    nop

    .line 4636
    return-void

    .line 4634
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "hysteresisMs"    # I
    .param p3, "hysteresisDb"    # I
    .param p5, "accessNetwork"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2453
    .local p4, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2454
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2456
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2457
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2458
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2459
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2461
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2463
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2464
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2466
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2467
    nop

    .line 2468
    return-void

    .line 2466
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSilentReboot(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5454
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5455
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5456
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5457
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5459
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5461
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x136

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5462
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5464
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5465
    nop

    .line 5466
    return-void

    .line 5464
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSimCardPower(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "powerUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2284
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2285
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2287
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2289
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2291
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2292
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2294
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2295
    nop

    .line 2296
    return-void

    .line 2294
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSimCardPower_1_1(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "powerUp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2334
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2335
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2336
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2337
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2339
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2341
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x84

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2342
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2345
    nop

    .line 2346
    return-void

    .line 2344
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSimPower(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4035
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4036
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4037
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4038
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4040
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4042
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4043
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4045
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4046
    nop

    .line 4047
    return-void

    .line 4045
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSmsFwkReady(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4317
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4318
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4320
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4322
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4323
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4325
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4326
    nop

    .line 4327
    return-void

    .line 4325
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4182
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4183
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4185
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4187
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4189
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xed

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4190
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4192
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4193
    nop

    .line 4194
    return-void

    .line 4192
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSmscAddress(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1657
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1658
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1660
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1662
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1664
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1665
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1668
    nop

    .line 1669
    return-void

    .line 1667
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5523
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5524
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5525
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5526
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5527
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5529
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5531
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5532
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5534
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5535
    nop

    .line 5536
    return-void

    .line 5534
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSuppServiceNotifications(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1056
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1057
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1059
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1061
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1063
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1064
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1067
    nop

    .line 1068
    return-void

    .line 1066
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setTTYMode(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1323
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1324
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1326
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1328
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1330
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1331
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1334
    nop

    .line 1335
    return-void

    .line 1333
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setTrm(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4745
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4746
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4747
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4748
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4750
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4752
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4753
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4755
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4756
    nop

    .line 4757
    return-void

    .line 4755
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setTxPowerStatus(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5471
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5472
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5473
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5474
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5476
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5478
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x137

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5479
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5481
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5482
    nop

    .line 5483
    return-void

    .line 5481
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "uiccSub"    # Landroid/hardware/radio/V1_0/SelectUiccSub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2013
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2014
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2016
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SelectUiccSub;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2018
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2020
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x71

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2021
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2023
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2024
    nop

    .line 2025
    return-void

    .line 2023
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setViWifiEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2765
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2766
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2767
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2768
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2770
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2772
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2773
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2775
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2776
    nop

    .line 2777
    return-void

    .line 2775
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setVilteEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2748
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2749
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2751
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2753
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2755
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2756
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2758
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2759
    nop

    .line 2760
    return-void

    .line 2758
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setVoiceDomainPreference(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "vdp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4999
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5000
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5001
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5002
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5004
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5006
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5007
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5009
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5010
    nop

    .line 5011
    return-void

    .line 5009
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setVoicePreferStatus(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3568
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3569
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3570
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3571
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3573
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3575
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xca

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3576
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3578
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3579
    nop

    .line 3580
    return-void

    .line 3578
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setVolteEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2714
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2715
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2717
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2719
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2721
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x99

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2722
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2724
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2725
    nop

    .line 2726
    return-void

    .line 2724
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWfcEnable(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2731
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2732
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2734
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2736
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2738
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2739
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2741
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2742
    nop

    .line 2743
    return-void

    .line 2741
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWfcProfile(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "wfcPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2928
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2929
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2931
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2933
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2935
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2936
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2938
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2939
    nop

    .line 2940
    return-void

    .line 2938
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "associated"    # I
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "apMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5035
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5036
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5037
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5038
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5039
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5040
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5041
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5043
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5045
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5046
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5048
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5049
    nop

    .line 5050
    return-void

    .line 5048
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWifiEnabled(ILjava/lang/String;II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "isWifiEnabled"    # I
    .param p4, "isFlightModeOn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5016
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5017
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5018
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5019
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5020
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5021
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5023
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5025
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5026
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5028
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5029
    nop

    .line 5030
    return-void

    .line 5028
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv6Addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5073
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5074
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5075
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5076
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5077
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5078
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5080
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5082
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x121

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5083
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5085
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5086
    nop

    .line 5087
    return-void

    .line 5085
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWifiPingResult(IIII)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rat"    # I
    .param p3, "latency"    # I
    .param p4, "pktloss"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5158
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5159
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5160
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5161
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5162
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5163
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5165
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5167
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x125

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5168
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5170
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5171
    nop

    .line 5172
    return-void

    .line 5170
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWifiSignalLevel(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rssi"    # I
    .param p3, "snr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5055
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5056
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5057
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5058
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5059
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5061
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5063
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x120

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5064
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5066
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5067
    nop

    .line 5068
    return-void

    .line 5066
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "radioTechnology"    # I
    .param p3, "dataProfileInfo"    # Landroid/hardware/radio/V1_0/DataProfileInfo;
    .param p4, "modemCognitive"    # Z
    .param p5, "roamingAllowed"    # Z
    .param p6, "isRoaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 576
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 578
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 579
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 580
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 581
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 582
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 584
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 586
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 587
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 590
    nop

    .line 591
    return-void

    .line 589
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "accessNetwork"    # I
    .param p3, "dataProfileInfo"    # Landroid/hardware/radio/V1_0/DataProfileInfo;
    .param p4, "modemCognitive"    # Z
    .param p5, "roamingAllowed"    # Z
    .param p6, "isRoaming"    # Z
    .param p7, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/radio/V1_0/DataProfileInfo;",
            "ZZZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2495
    .local p8, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2496
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2498
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2499
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2500
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2501
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2502
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2503
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2504
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2505
    invoke-virtual {v0, p9}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2507
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2509
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2510
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2512
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2513
    nop

    .line 2514
    return-void

    .line 2512
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setupXcapUserAgentString(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3429
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3430
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3431
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3432
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3434
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3436
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3437
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3439
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3440
    nop

    .line 3441
    return-void

    .line 3439
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startDtmf(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 926
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 928
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 930
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 932
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 933
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 936
    nop

    .line 937
    return-void

    .line 935
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "keepalive"    # Landroid/hardware/radio/V1_1/KeepaliveRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2384
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2385
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2387
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2389
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2391
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x87

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2392
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2394
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2395
    nop

    .line 2396
    return-void

    .line 2394
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startLceService(IIZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "reportInterval"    # I
    .param p3, "pullMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2149
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2150
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2152
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2153
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2155
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2157
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x79

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2158
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2161
    nop

    .line 2162
    return-void

    .line 2160
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "request"    # Landroid/hardware/radio/V1_1/NetworkScanRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2351
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2352
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2353
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2354
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2356
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2358
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2359
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2362
    nop

    .line 2363
    return-void

    .line 2361
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "request"    # Landroid/hardware/radio/V1_2/NetworkScanRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2419
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2420
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2422
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2424
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2426
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x89

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2427
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2429
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2430
    nop

    .line 2431
    return-void

    .line 2429
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopDtmf(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 943
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 946
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 948
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 949
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopKeepalive(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "sessionHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2401
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2402
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2404
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2406
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2408
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x88

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2409
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2412
    nop

    .line 2413
    return-void

    .line 2411
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopLceService(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2167
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2168
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2171
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2173
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2174
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2177
    nop

    .line 2178
    return-void

    .line 2176
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopNetworkScan(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2368
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2369
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2372
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2374
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x86

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2375
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2377
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2378
    nop

    .line 2379
    return-void

    .line 2377
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public storeModemType(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "modemType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4418
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4419
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4420
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4421
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4423
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4425
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4426
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4428
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4429
    nop

    .line 4430
    return-void

    .line 4428
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyDepersonalization(ILjava/lang/String;I)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "netPin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4108
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4109
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4111
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4112
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4114
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4116
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4117
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4119
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4120
    nop

    .line 4121
    return-void

    .line 4119
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5558
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5559
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5560
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5561
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5563
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5565
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5568
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5569
    nop

    .line 5570
    return-void

    .line 5568
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 189
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 194
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 196
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 197
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 152
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 154
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 159
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 160
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 207
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 209
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 213
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 215
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 216
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 219
    nop

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 170
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 172
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 176
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 178
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 179
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyNetworkDepersonalization(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "netPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 264
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 266
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 268
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 270
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 271
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public switchWaitingOrHoldingAndActive(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 380
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 383
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 385
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 386
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 389
    nop

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public syncDataSettingsToMd(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4896
    .local p2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4897
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4898
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4899
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 4901
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4903
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x117

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4904
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4906
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4907
    nop

    .line 4908
    return-void

    .line 4906
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 100
    const-string v0, "[class or subclass of vendor.mediatek.hardware.radio@3.6::IRadio]@Proxy"

    return-object v0
.end method

.method public triggerModeSwitchByEcc(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3986
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3987
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3988
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3989
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3991
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3993
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3994
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3996
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3997
    nop

    .line 3998
    return-void

    .line 3996
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5797
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public videoCallAccept(III)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "videoMode"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2610
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2611
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2613
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2614
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2616
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2618
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x93

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2619
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2621
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2622
    nop

    .line 2623
    return-void

    .line 2621
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public vtDial(ILandroid/hardware/radio/V1_0/Dial;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/V1_0/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3015
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3016
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3018
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3020
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3022
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3023
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3026
    nop

    .line 3027
    return-void

    .line 3025
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public vtDialWithSipUri(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2998
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2999
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3000
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3001
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3003
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3005
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3006
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3008
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3009
    nop

    .line 3010
    return-void

    .line 3008
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "phbEntry"    # Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3636
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3637
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3639
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3641
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3643
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xce

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3644
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3646
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3647
    nop

    .line 3648
    return-void

    .line 3646
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "phbEntryExt"    # Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3845
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3846
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3847
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3848
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3850
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3852
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xda

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3853
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3855
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3856
    nop

    .line 3857
    return-void

    .line 3855
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cdmaSms"    # Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1576
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1578
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1580
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1582
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x57

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1586
    nop

    .line 1587
    return-void

    .line 1585
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsWriteArgs"    # Landroid/hardware/radio/V1_0/SmsWriteArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1074
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1076
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1078
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1080
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1081
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1084
    nop

    .line 1085
    return-void

    .line 1083
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writeUPBGrpEntry(IILjava/util/ArrayList;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3759
    .local p3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3760
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3762
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3763
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3765
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3767
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_6/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3768
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3770
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3771
    nop

    .line 3772
    return-void

    .line 3770
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method
