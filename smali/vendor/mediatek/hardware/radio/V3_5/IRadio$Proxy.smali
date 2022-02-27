.class public final Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;
.super Ljava/lang/Object;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_5/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_5/IRadio;
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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 105
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

    .line 4570
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4571
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4572
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4574
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4576
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x103

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

.method public acceptCall(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 786
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 789
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 791
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 792
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 795
    nop

    .line 796
    return-void

    .line 794
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

    .line 1759
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1760
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1762
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1763
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1765
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1767
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x61

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1768
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1771
    nop

    .line 1772
    return-void

    .line 1770
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

    .line 1461
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1462
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1464
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1466
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1468
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1469
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1472
    nop

    .line 1473
    return-void

    .line 1471
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

    .line 4369
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4370
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4371
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4372
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4374
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4376
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4377
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4379
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4380
    nop

    .line 4381
    return-void

    .line 4379
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

    .line 767
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 768
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 770
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 771
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 773
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 775
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 776
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 779
    nop

    .line 780
    return-void

    .line 778
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

    .line 4351
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4352
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4353
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4354
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4355
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4357
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4359
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4360
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4362
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4363
    nop

    .line 4364
    return-void

    .line 4362
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
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa3

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

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 109
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 4538
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4539
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4540
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4542
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4544
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x101

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4545
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4547
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4548
    nop

    .line 4549
    return-void

    .line 4547
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

    .line 649
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 650
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 653
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 655
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 656
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 659
    nop

    .line 660
    return-void

    .line 658
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

    .line 3400
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3401
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3402
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3404
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3406
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3407
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3409
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3410
    nop

    .line 3411
    return-void

    .line 3409
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

    .line 267
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 270
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 272
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 276
    nop

    .line 277
    return-void

    .line 275
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
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

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

.method public conference(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 415
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 418
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 420
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 421
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 424
    nop

    .line 425
    return-void

    .line 423
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

    .line 2964
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2965
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2967
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2969
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2971
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa6

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

    .line 3552
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3553
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3554
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3555
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3556
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3558
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3560
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3564
    nop

    .line 3565
    return-void

    .line 3563
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

    .line 5356
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5357
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5358
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5359
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5361
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5363
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5364
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5366
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5367
    nop

    .line 5368
    return-void

    .line 5366
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

    .line 5373
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5374
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5375
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5376
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5378
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5380
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x130

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5381
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5383
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5384
    nop

    .line 5385
    return-void

    .line 5383
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

    .line 801
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 802
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 804
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 805
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 807
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 809
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 810
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 813
    nop

    .line 814
    return-void

    .line 812
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

    .line 2538
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2539
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2540
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2541
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2542
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2544
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2546
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

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

.method public deleteSmsOnRuim(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1611
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1612
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1614
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1616
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1618
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1619
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1622
    nop

    .line 1623
    return-void

    .line 1621
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

    .line 1109
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1110
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1112
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1114
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1116
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1117
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1120
    nop

    .line 1121
    return-void

    .line 1119
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

    .line 3729
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3731
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3733
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3734
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3736
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3737
    nop

    .line 3738
    return-void

    .line 3736
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

    .line 315
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 316
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 318
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 320
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 322
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 323
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 326
    nop

    .line 327
    return-void

    .line 325
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

    .line 3000
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3001
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3003
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3005
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3007
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3008
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3011
    nop

    .line 3012
    return-void

    .line 3010
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

    .line 4071
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4072
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4074
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4076
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4078
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4079
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4081
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4082
    nop

    .line 4083
    return-void

    .line 4081
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

    .line 3570
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3571
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3572
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3573
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3575
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3577
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3578
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3580
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3581
    nop

    .line 3582
    return-void

    .line 3580
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

    .line 3707
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3708
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3709
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3710
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3712
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3714
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd1

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

.method public emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/V1_0/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3500
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3501
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3503
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3505
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3507
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3508
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3510
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3511
    nop

    .line 3512
    return-void

    .line 3510
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 124
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

    .line 1644
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1645
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1648
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1650
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1651
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1654
    nop

    .line 1655
    return-void

    .line 1653
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

    .line 1210
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1211
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1214
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1216
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1217
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1220
    nop

    .line 1221
    return-void

    .line 1219
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

    .line 3051
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3052
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3054
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3056
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3058
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xab

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3059
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3062
    nop

    .line 3063
    return-void

    .line 3061
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

    .line 4022
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4023
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4024
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4026
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4028
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4029
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4031
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4032
    nop

    .line 4033
    return-void

    .line 4031
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

    .line 2252
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2253
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2256
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2258
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2259
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2262
    nop

    .line 2263
    return-void

    .line 2261
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

    .line 5215
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5216
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5217
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5219
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5221
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x127

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5222
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5224
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5225
    nop

    .line 5226
    return-void

    .line 5224
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

    .line 1143
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1144
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1147
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1149
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1150
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1153
    nop

    .line 1154
    return-void

    .line 1152
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

    .line 928
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 929
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 932
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 934
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 935
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 938
    nop

    .line 939
    return-void

    .line 937
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

    .line 4506
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4507
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4508
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4510
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4512
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xff

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4513
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4515
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4516
    nop

    .line 4517
    return-void

    .line 4515
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

    .line 977
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 978
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 981
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 983
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 984
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 987
    nop

    .line 988
    return-void

    .line 986
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

    .line 1578
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1579
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1582
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1584
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x56

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1585
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1588
    nop

    .line 1589
    return-void

    .line 1587
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

    .line 698
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 699
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 701
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 703
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 705
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 706
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 709
    nop

    .line 710
    return-void

    .line 708
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

    .line 732
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 733
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 735
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 737
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 739
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 740
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 743
    nop

    .line 744
    return-void

    .line 742
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

    .line 1528
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1529
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1532
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1534
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x53

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1535
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1538
    nop

    .line 1539
    return-void

    .line 1537
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

    .line 1326
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1327
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1330
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1332
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1333
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1336
    nop

    .line 1337
    return-void

    .line 1335
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

    .line 1726
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1727
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1730
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1732
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1733
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1736
    nop

    .line 1737
    return-void

    .line 1735
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

    .line 1810
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1811
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1814
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1816
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1817
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1819
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1820
    nop

    .line 1821
    return-void

    .line 1819
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

    .line 1043
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1044
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1047
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1049
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1050
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1053
    nop

    .line 1054
    return-void

    .line 1052
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

    .line 665
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 666
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 669
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 671
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 672
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 675
    nop

    .line 676
    return-void

    .line 674
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

    .line 3245
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3246
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3249
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3251
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3252
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3254
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3255
    nop

    .line 3256
    return-void

    .line 3254
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

    .line 3261
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3262
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3263
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3265
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3267
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3268
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3270
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3271
    nop

    .line 3272
    return-void

    .line 3270
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

    .line 299
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 300
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 303
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 305
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 306
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 309
    nop

    .line 310
    return-void

    .line 308
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

    .line 4710
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4711
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4712
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4714
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4716
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10b

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

.method public getDataCallList(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1060
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1063
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1065
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1066
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1069
    nop

    .line 1070
    return-void

    .line 1068
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

    .line 494
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 495
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 498
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 500
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 501
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 504
    nop

    .line 505
    return-void

    .line 503
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

    .line 5781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5782
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5784
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5786
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5787
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5788
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5790
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5791
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5792
    nop

    .line 5794
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5792
    return-object v2

    .line 5794
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

    .line 1628
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1629
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1632
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1634
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x59

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1635
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1638
    nop

    .line 1639
    return-void

    .line 1637
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

    .line 3622
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3623
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3624
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3626
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3628
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3629
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3631
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3632
    nop

    .line 3633
    return-void

    .line 3631
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

    .line 819
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 820
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 822
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 825
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 827
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 829
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 830
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 833
    nop

    .line 834
    return-void

    .line 832
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

    .line 4554
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4555
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4556
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4558
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4560
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x102

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4563
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4564
    nop

    .line 4565
    return-void

    .line 4563
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

    .line 4302
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4303
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4304
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4306
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4308
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4309
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4311
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4312
    nop

    .line 4313
    return-void

    .line 4311
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

    .line 1478
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1479
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1482
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1484
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1485
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1488
    nop

    .line 1489
    return-void

    .line 1487
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

    .line 4286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4287
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4288
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4290
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4292
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4293
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4295
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4296
    nop

    .line 4297
    return-void

    .line 4295
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

    .line 2066
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2067
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2070
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2072
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x73

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

    .line 5706
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5707
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5709
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5711
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5712
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5713
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 5717
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 5719
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 5720
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 5721
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 5720
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 5724
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 5725
    nop

    .local v10, "_hidl_index_0":I
    :goto_0
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_0

    .line 5726
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 5728
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 5729
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 5730
    nop

    .line 5732
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5725
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_0

    .line 5736
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_0
    nop

    .line 5738
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5736
    return-object v11

    .line 5738
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

    .line 154
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 155
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 158
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 160
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 161
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 164
    nop

    .line 165
    return-void

    .line 163
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

    .line 4038
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4039
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4042
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4044
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4045
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4047
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4048
    nop

    .line 4049
    return-void

    .line 4047
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

    .line 5268
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5269
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5270
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5271
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5272
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5274
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5276
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5279
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5280
    nop

    .line 5281
    return-void

    .line 5279
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

    .line 5304
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5305
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5306
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5307
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5309
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5311
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5312
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5314
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5315
    nop

    .line 5316
    return-void

    .line 5314
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

    .line 5339
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5340
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5341
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5342
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5344
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5346
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5347
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5349
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5350
    nop

    .line 5351
    return-void

    .line 5349
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

    .line 1862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1863
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1866
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1868
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x67

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1869
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1872
    nop

    .line 1873
    return-void

    .line 1871
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

    .line 332
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 333
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 335
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 337
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 339
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 340
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 343
    nop

    .line 344
    return-void

    .line 342
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

    .line 446
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 447
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 450
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 452
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 453
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 456
    nop

    .line 457
    return-void

    .line 455
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

    .line 5423
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5424
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5425
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5427
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5429
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x133

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5430
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5432
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5433
    nop

    .line 5434
    return-void

    .line 5432
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

    .line 2218
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2219
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2222
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2224
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2225
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2227
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2228
    nop

    .line 2229
    return-void

    .line 2227
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

    .line 1027
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1028
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1031
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1033
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1034
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1037
    nop

    .line 1038
    return-void

    .line 1036
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

    .line 1259
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1260
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1263
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1265
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1266
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1269
    nop

    .line 1270
    return-void

    .line 1268
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

    .line 879
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 880
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 883
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 885
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 886
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 889
    nop

    .line 890
    return-void

    .line 888
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

    .line 510
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 511
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 514
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 516
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 517
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 520
    nop

    .line 521
    return-void

    .line 519
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

    .line 4694
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4695
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4696
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4698
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4700
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4701
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4703
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4704
    nop

    .line 4705
    return-void

    .line 4703
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

    .line 3812
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3813
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3814
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3816
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3818
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3819
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3821
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3822
    nop

    .line 3823
    return-void

    .line 3821
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

    .line 3796
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3797
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3798
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3800
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3802
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3803
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3805
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3806
    nop

    .line 3807
    return-void

    .line 3805
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

    .line 1243
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1244
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1247
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1249
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1250
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1253
    nop

    .line 1254
    return-void

    .line 1252
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

    .line 1392
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1393
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1396
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1398
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1399
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1402
    nop

    .line 1403
    return-void

    .line 1401
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

    .line 2874
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2875
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2876
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2877
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2879
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2881
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2882
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2884
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2885
    nop

    .line 2886
    return-void

    .line 2884
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

    .line 2135
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2136
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2139
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2141
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x77

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2142
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2144
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

    .line 3191
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3192
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3194
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3196
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3198
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3199
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3201
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3202
    nop

    .line 3203
    return-void

    .line 3201
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

    .line 4677
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4678
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4679
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4680
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4682
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4684
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x109

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4685
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4687
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4688
    nop

    .line 4689
    return-void

    .line 4687
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

    .line 462
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 463
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 466
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 468
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 469
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 472
    nop

    .line 473
    return-void

    .line 471
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

    .line 4522
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4523
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4524
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4526
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4528
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x100

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4529
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4531
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4532
    nop

    .line 4533
    return-void

    .line 4531
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

    .line 4218
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4219
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4222
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4224
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xee

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4225
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4227
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4228
    nop

    .line 4229
    return-void

    .line 4227
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

    .line 4185
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4186
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4189
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4191
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xec

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4192
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4194
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4195
    nop

    .line 4196
    return-void

    .line 4194
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

    .line 4471
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4472
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4473
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4475
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4477
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfd

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

.method public getSmscAddress(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1660
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1661
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1664
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1666
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1667
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1670
    nop

    .line 1671
    return-void

    .line 1669
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

    .line 5560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5561
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5562
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5563
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5565
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5567
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5568
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5570
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5571
    nop

    .line 5572
    return-void

    .line 5570
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

    .line 1359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1360
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1363
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1365
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x49

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1366
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1369
    nop

    .line 1370
    return-void

    .line 1368
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

    .line 1794
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1795
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1798
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1800
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1801
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1804
    nop

    .line 1805
    return-void

    .line 1803
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

    .line 478
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 479
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 482
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 484
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 485
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 488
    nop

    .line 489
    return-void

    .line 487
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

    .line 3416
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3417
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3418
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3420
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3422
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3423
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3425
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3426
    nop

    .line 3427
    return-void

    .line 3425
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

    .line 1193
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1194
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1196
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1198
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1200
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1201
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1204
    nop

    .line 1205
    return-void

    .line 1203
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

    .line 4781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4782
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4783
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4784
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4786
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4788
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4789
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4791
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4792
    nop

    .line 4793
    return-void

    .line 4791
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

    .line 349
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 350
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 352
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 354
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 356
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 357
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 360
    nop

    .line 361
    return-void

    .line 359
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

    .line 3465
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3466
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3467
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3469
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3471
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc3

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

.method public hangupForegroundResumeBackground(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 383
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 386
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 388
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 389
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 392
    nop

    .line 393
    return-void

    .line 391
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

    .line 366
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 367
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 370
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 372
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 373
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 376
    nop

    .line 377
    return-void

    .line 375
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

    .line 5613
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5614
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5615
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5616
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5617
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5619
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5621
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5622
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5624
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5625
    nop

    .line 5626
    return-void

    .line 5624
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .locals 1

    .line 129
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 2665
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2666
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2668
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2670
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2672
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x95

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2673
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2675
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2676
    nop

    .line 2677
    return-void

    .line 2675
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

    .line 1930
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1931
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1933
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1935
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1937
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1938
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1941
    nop

    .line 1942
    return-void

    .line 1940
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

    .line 615
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 616
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 618
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 620
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 622
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 623
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 626
    nop

    .line 627
    return-void

    .line 625
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

    .line 1912
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1913
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1915
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1918
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1920
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1921
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1924
    nop

    .line 1925
    return-void

    .line 1923
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

    .line 1895
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1896
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1898
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1900
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1902
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x69

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1903
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1906
    nop

    .line 1907
    return-void

    .line 1905
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

    .line 1947
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1948
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1950
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1952
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1954
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1955
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1957
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1958
    nop

    .line 1959
    return-void

    .line 1957
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

    .line 3068
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3069
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3070
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3071
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3072
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3074
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3076
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3077
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3079
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3080
    nop

    .line 3081
    return-void

    .line 3079
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

    .line 3086
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3087
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3089
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3090
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3092
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3094
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xad

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

.method public imsDeregNotification(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2700
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2701
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2702
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2704
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2706
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x97

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2707
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2709
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2710
    nop

    .line 2711
    return-void

    .line 2709
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

    .line 2647
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2648
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2650
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2651
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2653
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2655
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x94

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2656
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2658
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2659
    nop

    .line 2660
    return-void

    .line 2658
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
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5674
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5675
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5677
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5678
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 5680
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5678
    return-object v2

    .line 5680
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
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5693
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5694
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 5696
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5697
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 5699
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5697
    return-object v2

    .line 5699
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

    .line 5760
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 5595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5596
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5597
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5598
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5600
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5602
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13d

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

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5801
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5802
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5804
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5806
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5807
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5809
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5810
    nop

    .line 5811
    return-void

    .line 5809
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

    .line 1964
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1965
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1967
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1969
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1971
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1972
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1974
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1975
    nop

    .line 1976
    return-void

    .line 1974
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

    .line 2015
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2016
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2018
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2020
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2022
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x70

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2023
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2025
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2026
    nop

    .line 2027
    return-void

    .line 2025
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

    .line 1998
    .local p2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1999
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2001
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2003
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2005
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2006
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2009
    nop

    .line 2010
    return-void

    .line 2008
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

    .line 1981
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1982
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1984
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/NvWriteItem;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1986
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1988
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1989
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1991
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1992
    nop

    .line 1993
    return-void

    .line 1991
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

    .line 5765
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5766
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5768
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5770
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5771
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 5772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5774
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5775
    nop

    .line 5776
    return-void

    .line 5774
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

    .line 3123
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3124
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3126
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3127
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3129
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3131
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3132
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3134
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3135
    nop

    .line 3136
    return-void

    .line 3134
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

    .line 2202
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2203
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2204
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2206
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2208
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2211
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2212
    nop

    .line 2213
    return-void

    .line 2211
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

    .line 3328
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3329
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3331
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3333
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3335
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3336
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3338
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3339
    nop

    .line 3340
    return-void

    .line 3338
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

    .line 4605
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4606
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4607
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4609
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4611
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x105

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4612
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4614
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4615
    nop

    .line 4616
    return-void

    .line 4614
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

    .line 4088
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4089
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4091
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4093
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4095
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4096
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4098
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4099
    nop

    .line 4100
    return-void

    .line 4098
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

    .line 3638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3639
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3640
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3641
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3645
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3646
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3648
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3649
    nop

    .line 3650
    return-void

    .line 3648
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

    .line 3881
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3882
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3884
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3885
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3887
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3889
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3890
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3892
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3893
    nop

    .line 3894
    return-void

    .line 3892
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

    .line 3691
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3692
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3693
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3695
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3697
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3698
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3700
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3701
    nop

    .line 3702
    return-void

    .line 3700
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

    .line 3672
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3673
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3674
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3675
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3676
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3677
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3679
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3681
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3684
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3685
    nop

    .line 3686
    return-void

    .line 3684
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

    .line 3846
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3847
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3848
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3849
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3850
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3852
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3854
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3855
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3857
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3858
    nop

    .line 3859
    return-void

    .line 3857
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

    .line 3953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3954
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3956
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3957
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3959
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3961
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3962
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3964
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3965
    nop

    .line 3966
    return-void

    .line 3964
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

    .line 3935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3936
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3937
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3938
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3939
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3941
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3943
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xde

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3944
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3946
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3947
    nop

    .line 3948
    return-void

    .line 3946
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

    .line 3899
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3900
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3902
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3903
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3905
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3907
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3908
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3910
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3911
    nop

    .line 3912
    return-void

    .line 3910
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

    .line 3743
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3744
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3745
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3746
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3747
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3749
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3751
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3752
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3754
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3755
    nop

    .line 3756
    return-void

    .line 3754
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

    .line 3761
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3762
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3764
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3766
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3768
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3769
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3771
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3772
    nop

    .line 3773
    return-void

    .line 3771
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

    .line 3917
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3918
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3919
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3920
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3921
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3923
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3925
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3926
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3928
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3929
    nop

    .line 3930
    return-void

    .line 3928
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

    .line 430
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 431
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 434
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 436
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 437
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 440
    nop

    .line 441
    return-void

    .line 439
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

    .line 4454
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4455
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4457
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4459
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4461
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4462
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4464
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4465
    nop

    .line 4466
    return-void

    .line 4464
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

    .line 4251
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4252
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4253
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4254
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4255
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4257
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4259
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4260
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4262
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4263
    nop

    .line 4264
    return-void

    .line 4262
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

    .line 2932
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2933
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2935
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2937
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2938
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2940
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2941
    nop

    .line 2942
    return-void

    .line 2940
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

    .line 5439
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5440
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5441
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5442
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5444
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5446
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x134

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5447
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5449
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5450
    nop

    .line 5451
    return-void

    .line 5449
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

    .line 5456
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5457
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5458
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5459
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5461
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5463
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x135

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5464
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5466
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5467
    nop

    .line 5468
    return-void

    .line 5466
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

    .line 1693
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1694
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1696
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1698
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1700
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1701
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1704
    nop

    .line 1705
    return-void

    .line 1703
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

    .line 1710
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1711
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1714
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1716
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1717
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1720
    nop

    .line 1721
    return-void

    .line 1719
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

    .line 2082
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2083
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2085
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2086
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2089
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2091
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x74

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2092
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2095
    nop

    .line 2096
    return-void

    .line 2094
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

    .line 1742
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1743
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1745
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1747
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1749
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x60

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1750
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1753
    nop

    .line 1754
    return-void

    .line 1752
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

    .line 2119
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2120
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2123
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2125
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x76

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2126
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2129
    nop

    .line 2130
    return-void

    .line 2128
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

    .line 5390
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5391
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5392
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5394
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5396
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x131

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5397
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5399
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5400
    nop

    .line 5401
    return-void

    .line 5399
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

    .line 4932
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4933
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4934
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4935
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4937
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4939
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x118

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4940
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4942
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4943
    nop

    .line 4944
    return-void

    .line 4942
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

    .line 4883
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4884
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4885
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4887
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4889
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x115

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4890
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4892
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4893
    nop

    .line 4894
    return-void

    .line 4892
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

    .line 3432
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3433
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3436
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3438
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3439
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3441
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3442
    nop

    .line 3443
    return-void

    .line 3441
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

    .line 2320
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2321
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2323
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2325
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2326
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2328
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2329
    nop

    .line 2330
    return-void

    .line 2328
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

    .line 4899
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4900
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4901
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4903
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4905
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x116

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4906
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4908
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4909
    nop

    .line 4910
    return-void

    .line 4908
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

    .line 2682
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2683
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2685
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2687
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2689
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2690
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2693
    nop

    .line 2694
    return-void

    .line 2692
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

    .line 3362
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3363
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3365
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3368
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3370
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3372
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3373
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3375
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3376
    nop

    .line 3377
    return-void

    .line 3375
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

    .line 4586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4587
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4588
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4589
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4590
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4591
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4593
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4595
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x104

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4596
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4598
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4599
    nop

    .line 4600
    return-void

    .line 4598
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

    .line 4866
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4867
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4868
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4869
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 4871
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4873
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x114

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4874
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4876
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4877
    nop

    .line 4878
    return-void

    .line 4876
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
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1430
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1432
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1434
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1435
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1438
    nop

    .line 1439
    return-void

    .line 1437
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

    .line 1408
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1409
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1411
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1413
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1415
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4c

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

.method public sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1445
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1447
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1449
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1451
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1452
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1455
    nop

    .line 1456
    return-void

    .line 1454
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

    .line 3277
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3278
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3280
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3282
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3284
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3285
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3287
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3288
    nop

    .line 3289
    return-void

    .line 3287
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

    .line 2268
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2269
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2271
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2272
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2274
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2276
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2280
    nop

    .line 2281
    return-void

    .line 2279
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

    .line 543
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 544
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 546
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 548
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 550
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 551
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 554
    nop

    .line 555
    return-void

    .line 553
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

    .line 3157
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3158
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3159
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3160
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3162
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3164
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3165
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3167
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3168
    nop

    .line 3169
    return-void

    .line 3167
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

    .line 1159
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1160
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1162
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1164
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1166
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1167
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1170
    nop

    .line 1171
    return-void

    .line 1169
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

    .line 1777
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1778
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1780
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1782
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1784
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x62

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1785
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1788
    nop

    .line 1789
    return-void

    .line 1787
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

    .line 1878
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1879
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1881
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1883
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1885
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x68

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1886
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1889
    nop

    .line 1890
    return-void

    .line 1888
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

    .line 4318
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4319
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4320
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4321
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4323
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4325
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4326
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4328
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4329
    nop

    .line 4330
    return-void

    .line 4328
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

    .line 4386
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4387
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4388
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4389
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 4391
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4393
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4394
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4396
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4397
    nop

    .line 4398
    return-void

    .line 4396
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

    .line 4403
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4404
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4405
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4406
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4408
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4410
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4411
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4413
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4414
    nop

    .line 4415
    return-void

    .line 4413
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

    .line 577
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 578
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 580
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 582
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 584
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 585
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 588
    nop

    .line 589
    return-void

    .line 587
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

    .line 560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 561
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 563
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 565
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 567
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 568
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 571
    nop

    .line 572
    return-void

    .line 570
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

    .line 5649
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5650
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5651
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5652
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5653
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 5655
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5657
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x140

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5658
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5660
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5661
    nop

    .line 5662
    return-void

    .line 5660
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

    .line 1176
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1177
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1179
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1181
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1183
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1184
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1187
    nop

    .line 1188
    return-void

    .line 1186
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

    .line 632
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 633
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 635
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 637
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 639
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 640
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 643
    nop

    .line 644
    return-void

    .line 642
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

    .line 3382
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3383
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3385
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3386
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3388
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3390
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3391
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3393
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3394
    nop

    .line 3395
    return-void

    .line 3393
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

    .line 4145
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

    .line 4152
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4154
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xea

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4155
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4157
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4158
    nop

    .line 4159
    return-void

    .line 4157
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

    .line 4164
    .local p6, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4165
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4166
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4167
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4168
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4169
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4170
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4171
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 4173
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4175
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4176
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4178
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4179
    nop

    .line 4180
    return-void

    .line 4178
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

    .line 993
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 994
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 996
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 998
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1000
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1001
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1004
    nop

    .line 1005
    return-void

    .line 1003
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

    .line 2234
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2235
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2237
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2238
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2240
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2242
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2243
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2246
    nop

    .line 2247
    return-void

    .line 2245
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

    .line 5196
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5197
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5198
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5199
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5200
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5201
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5203
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5205
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x126

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5206
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5208
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5209
    nop

    .line 5210
    return-void

    .line 5208
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

    .line 1126
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1127
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1129
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1131
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1133
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1134
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1137
    nop

    .line 1138
    return-void

    .line 1136
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

    .line 860
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 861
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 863
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 867
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 869
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 870
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 873
    nop

    .line 874
    return-void

    .line 872
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

    .line 3208
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3209
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3210
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3211
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3214
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3216
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3218
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3219
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3221
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3222
    nop

    .line 3223
    return-void

    .line 3221
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

    .line 715
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 716
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 718
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 720
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 722
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 723
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 726
    nop

    .line 727
    return-void

    .line 725
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

    .line 3345
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3346
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3348
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3350
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3352
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3353
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3355
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3356
    nop

    .line 3357
    return-void

    .line 3355
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
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3485
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3486
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3488
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3490
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3491
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3493
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3494
    nop

    .line 3495
    return-void

    .line 3493
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

    .line 749
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 750
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 752
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 753
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 755
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 757
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 758
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 761
    nop

    .line 762
    return-void

    .line 760
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

    .line 2336
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2337
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2339
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2341
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2343
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x83

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2344
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2346
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2347
    nop

    .line 2348
    return-void

    .line 2346
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

    .line 1561
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1562
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1564
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1566
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1568
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x55

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1569
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1572
    nop

    .line 1573
    return-void

    .line 1571
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

    .line 1544
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1545
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1547
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1549
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1551
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1552
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1555
    nop

    .line 1556
    return-void

    .line 1554
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

    .line 1309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1310
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1312
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1314
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1316
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1317
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1320
    nop

    .line 1321
    return-void

    .line 1319
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

    .line 1292
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1293
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1295
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1297
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1299
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1300
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1303
    nop

    .line 1304
    return-void

    .line 1302
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

    .line 1826
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1827
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1829
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1831
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1833
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x65

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

.method public setClip(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "clipEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3228
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3229
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3231
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3233
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3235
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3236
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3238
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3239
    nop

    .line 3240
    return-void

    .line 3238
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

    .line 681
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 682
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 684
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 686
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 688
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 689
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 692
    nop

    .line 693
    return-void

    .line 691
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

    .line 3294
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3295
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3296
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3297
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3299
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3301
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3302
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3304
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3305
    nop

    .line 3306
    return-void

    .line 3304
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

    .line 3311
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3312
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3313
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3314
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3316
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3318
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xba

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3319
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3321
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3322
    nop

    .line 3323
    return-void

    .line 3321
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

    .line 2049
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2050
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2052
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2054
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2056
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x72

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2057
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2060
    nop

    .line 2061
    return-void

    .line 2059
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

    .line 2101
    .local p2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2102
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2104
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2105
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2107
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2109
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x75

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2110
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2112
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2113
    nop

    .line 2114
    return-void

    .line 2112
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

    .line 5001
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5002
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5003
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5004
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5006
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5008
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5009
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5011
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5012
    nop

    .line 5013
    return-void

    .line 5011
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

    .line 3534
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3535
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3536
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3537
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3540
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3542
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3543
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3545
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3546
    nop

    .line 3547
    return-void

    .line 3545
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

    .line 3604
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3605
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3607
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3610
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3612
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3613
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3615
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3616
    nop

    .line 3617
    return-void

    .line 3615
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

    .line 3517
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3518
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3520
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3522
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3524
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3525
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3527
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3528
    nop

    .line 3529
    return-void

    .line 3527
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

    .line 5138
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5139
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5140
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5141
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5143
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5145
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x123

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5146
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5148
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5149
    nop

    .line 5150
    return-void

    .line 5148
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

    .line 4234
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4235
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4237
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4239
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4241
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xef

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4242
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4244
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4245
    nop

    .line 4246
    return-void

    .line 4244
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

    .line 839
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 840
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 842
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 844
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 846
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 848
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 850
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

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

    .line 4749
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4750
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4752
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4754
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4755
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4757
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4758
    nop

    .line 4759
    return-void

    .line 4757
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

    .line 4621
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4622
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4623
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4624
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4626
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4628
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x106

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4629
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4631
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4632
    nop

    .line 4633
    return-void

    .line 4631
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

    .line 1511
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1512
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1514
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1516
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1518
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x52

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1519
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1522
    nop

    .line 1523
    return-void

    .line 1521
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

    .line 1494
    .local p2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1495
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1497
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1499
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1501
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x51

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1502
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1505
    nop

    .line 1506
    return-void

    .line 1504
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

    .line 4269
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4270
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4271
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4272
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4274
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4276
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4279
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4280
    nop

    .line 4281
    return-void

    .line 4279
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

    .line 5745
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5746
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5748
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5750
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5751
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5753
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5754
    nop

    .line 5755
    return-void

    .line 5753
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

    .line 5231
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5232
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5233
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5234
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5236
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5238
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x128

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5239
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5241
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5242
    nop

    .line 5243
    return-void

    .line 5241
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

    .line 5248
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5249
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5250
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5251
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5252
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5253
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5254
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5256
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5258
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x129

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5259
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5261
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5262
    nop

    .line 5263
    return-void

    .line 5261
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

    .line 5286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5287
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5288
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5289
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5290
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5292
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5294
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5295
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5297
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5298
    nop

    .line 5299
    return-void

    .line 5297
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

    .line 5321
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5322
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5323
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5324
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5325
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5327
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5329
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5330
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5332
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5333
    nop

    .line 5334
    return-void

    .line 5332
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

    .line 2716
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2717
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2719
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2721
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2723
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x98

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2724
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2726
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2727
    nop

    .line 2728
    return-void

    .line 2726
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

    .line 3141
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3142
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3145
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3147
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3148
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3150
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3151
    nop

    .line 3152
    return-void

    .line 3150
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
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3108
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3109
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3111
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3113
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xae

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3114
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3116
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3117
    nop

    .line 3118
    return-void

    .line 3116
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

    .line 2835
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2836
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2838
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2840
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2842
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2843
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2845
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2846
    nop

    .line 2847
    return-void

    .line 2845
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

    .line 2818
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2819
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2821
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2823
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2825
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2826
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2828
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2829
    nop

    .line 2830
    return-void

    .line 2828
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

    .line 2852
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2853
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2855
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2856
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2857
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2858
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2859
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2860
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2862
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2864
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2865
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2867
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2868
    nop

    .line 2869
    return-void

    .line 2867
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

    .line 2286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2287
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2289
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2291
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2293
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2294
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2296
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2297
    nop

    .line 2298
    return-void

    .line 2296
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

    .line 2455
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2456
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2458
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2460
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2462
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2463
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2465
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2466
    nop

    .line 2467
    return-void

    .line 2465
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

    .line 1843
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1844
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1846
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1847
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1848
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1850
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1852
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x66

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1853
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1856
    nop

    .line 1857
    return-void

    .line 1855
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

    .line 2492
    .local p5, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2493
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2495
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2496
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2497
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2498
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2499
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2500
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2502
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2504
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2505
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2508
    nop

    .line 2509
    return-void

    .line 2507
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

    .line 5111
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v1, v0

    .line 5112
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5113
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5114
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5115
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5116
    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5117
    move-object/from16 v6, p5

    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5118
    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5119
    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5120
    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5121
    move-object/from16 v10, p9

    invoke-virtual {v1, v10}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5122
    move-object/from16 v11, p10

    invoke-virtual {v1, v11}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5123
    move-object/from16 v12, p11

    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5124
    move-object/from16 v13, p12

    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5126
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v14, v0

    .line 5128
    .local v14, "_hidl_reply":Landroid/os/HwParcel;
    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x122

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v14, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5129
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5131
    invoke-virtual {v14}, Landroid/os/HwParcel;->release()V

    .line 5132
    nop

    .line 5133
    return-void

    .line 5131
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

    .line 1275
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1276
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1278
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1280
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1282
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1283
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1286
    nop

    .line 1287
    return-void

    .line 1285
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

    .line 4966
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4967
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4968
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4969
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4971
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4973
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4974
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4976
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4977
    nop

    .line 4978
    return-void

    .line 4976
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

    .line 5406
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5407
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5408
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5409
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5411
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5413
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x132

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5414
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5416
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5417
    nop

    .line 5418
    return-void

    .line 5416
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

    .line 4983
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4984
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4985
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4986
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4987
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4989
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4991
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4992
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4994
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4995
    nop

    .line 4996
    return-void

    .line 4994
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

    .line 2985
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2988
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2990
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2991
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2993
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2994
    nop

    .line 2995
    return-void

    .line 2993
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

    .line 3988
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3989
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3990
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3991
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3993
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3995
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3996
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3998
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3999
    nop

    .line 4000
    return-void

    .line 3998
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

    .line 1010
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1011
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1013
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1015
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1017
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1018
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1021
    nop

    .line 1022
    return-void

    .line 1020
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

    .line 5155
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5156
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5157
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5158
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5159
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 5160
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5162
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5163
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5165
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5167
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x124

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

    .line 4105
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4106
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4107
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4108
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4109
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4110
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4111
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4112
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4115
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4117
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4118
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4120
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4121
    nop

    .line 4122
    return-void

    .line 4120
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

    .line 895
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 896
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 899
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 901
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 902
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 905
    nop

    .line 906
    return-void

    .line 904
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

    .line 911
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 912
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 914
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 916
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 918
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 919
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 922
    nop

    .line 923
    return-void

    .line 921
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

    .line 4487
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4488
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4489
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4490
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4491
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4492
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4494
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4496
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4497
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4499
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4500
    nop

    .line 4501
    return-void

    .line 4499
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

    .line 5524
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5525
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5526
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5527
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5528
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5532
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x139

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5533
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5535
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5536
    nop

    .line 5537
    return-void

    .line 5535
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

    .line 4815
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4816
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4817
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4818
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4820
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4822
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x111

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4823
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4825
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4826
    nop

    .line 4827
    return-void

    .line 4825
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
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4731
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4733
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4735
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10c

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

.method public setPdnNameReuse(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "apnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4832
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4833
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4834
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4835
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4837
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4839
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x112

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4840
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4842
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4843
    nop

    .line 4844
    return-void

    .line 4842
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

    .line 4798
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4799
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4800
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4801
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4803
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4805
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x110

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4806
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4808
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4809
    nop

    .line 4810
    return-void

    .line 4808
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

    .line 3828
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3829
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3831
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3834
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3836
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3837
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3839
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3840
    nop

    .line 3841
    return-void

    .line 3839
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

    .line 3971
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3972
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3973
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3974
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3976
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3978
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3979
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3981
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3982
    nop

    .line 3983
    return-void

    .line 3981
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

    .line 1226
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1227
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1229
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1231
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1233
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1234
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1237
    nop

    .line 1238
    return-void

    .line 1236
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

    .line 1375
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1376
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1378
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1380
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1382
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1383
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1386
    nop

    .line 1387
    return-void

    .line 1385
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

    .line 5507
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5508
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5509
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5510
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5512
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5514
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x138

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5515
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5517
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5518
    nop

    .line 5519
    return-void

    .line 5517
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

    .line 2891
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2892
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2894
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2897
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2899
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa2

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

.method public setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2151
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2152
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2154
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2156
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2158
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2159
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2162
    nop

    .line 2163
    return-void

    .line 2161
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

    .line 526
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 527
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 529
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 531
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 533
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 537
    nop

    .line 538
    return-void

    .line 536
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

    .line 2801
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2802
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2804
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2806
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2808
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2809
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2812
    nop

    .line 2813
    return-void

    .line 2811
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

    .line 4949
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4950
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4951
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4952
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4954
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4956
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x119

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4957
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4959
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4960
    nop

    .line 4961
    return-void

    .line 4959
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

    .line 136
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 137
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 139
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 141
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 143
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 144
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 145
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 148
    nop

    .line 149
    return-void

    .line 147
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

    .line 4849
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4850
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4851
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 4852
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 4854
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4856
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x113

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4857
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4859
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4860
    nop

    .line 4861
    return-void

    .line 4859
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

    .line 2575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2576
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2577
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2578
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2580
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2582
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2583
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2584
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2586
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2587
    nop

    .line 2588
    return-void

    .line 2586
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

    .line 2557
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2558
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2559
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2560
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2562
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2564
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2565
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2569
    nop

    .line 2570
    return-void

    .line 2568
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

    .line 2593
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2594
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2595
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2596
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2598
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2600
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2601
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2605
    nop

    .line 2606
    return-void

    .line 2604
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

    .line 2611
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2612
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2613
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2614
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2616
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2618
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2619
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2620
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2622
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2623
    nop

    .line 2624
    return-void

    .line 2622
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

    .line 5632
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5633
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.5::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5634
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 5635
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 5637
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5639
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5640
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5642
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5643
    nop

    .line 5644
    return-void

    .line 5642
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

    .line 4420
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4421
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4422
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4423
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4425
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4427
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4428
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4430
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4431
    nop

    .line 4432
    return-void

    .line 4430
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

    .line 3174
    .local p2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3175
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3177
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3179
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3181
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3182
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3184
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3185
    nop

    .line 3186
    return-void

    .line 3184
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

    .line 4660
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4661
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4662
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4663
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4665
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4667
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x108

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4668
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4670
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4671
    nop

    .line 4672
    return-void

    .line 4670
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

    .line 4638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4639
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4640
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4641
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4642
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4643
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4644
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4645
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4646
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4648
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4650
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x107

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4651
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4654
    nop

    .line 4655
    return-void

    .line 4653
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

    .line 2472
    .local p4, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2473
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2475
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2476
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2477
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2478
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2480
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2482
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2483
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2485
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2486
    nop

    .line 2487
    return-void

    .line 2485
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

    .line 5473
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5474
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5475
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5476
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5478
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5480
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x136

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5481
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5483
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5484
    nop

    .line 5485
    return-void

    .line 5483
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

    .line 2303
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2304
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2306
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2308
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2310
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2311
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2313
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2314
    nop

    .line 2315
    return-void

    .line 2313
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

    .line 2353
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2354
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2356
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2358
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2360
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x84

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2361
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2364
    nop

    .line 2365
    return-void

    .line 2363
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

    .line 4054
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4055
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4057
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4059
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4061
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4062
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4064
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4065
    nop

    .line 4066
    return-void

    .line 4064
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

    .line 4335
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4336
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4337
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4339
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4341
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4342
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4344
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4345
    nop

    .line 4346
    return-void

    .line 4344
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

    .line 4201
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4202
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4203
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4204
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4206
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4208
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xed

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4211
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4212
    nop

    .line 4213
    return-void

    .line 4211
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

    .line 1676
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1677
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1679
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1681
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1683
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1684
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1687
    nop

    .line 1688
    return-void

    .line 1686
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

    .line 5542
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5543
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5544
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5545
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5546
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5548
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5550
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5551
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5553
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5554
    nop

    .line 5555
    return-void

    .line 5553
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

    .line 1075
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1076
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1078
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1080
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1082
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1083
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1086
    nop

    .line 1087
    return-void

    .line 1085
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

    .line 1342
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1343
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1345
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1347
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1349
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1353
    nop

    .line 1354
    return-void

    .line 1352
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

    .line 4764
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4765
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4766
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4767
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4769
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4771
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4774
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4775
    nop

    .line 4776
    return-void

    .line 4774
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

    .line 5490
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5491
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5492
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5493
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5495
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5497
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x137

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5498
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5500
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5501
    nop

    .line 5502
    return-void

    .line 5500
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

    .line 2032
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2033
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2035
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SelectUiccSub;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2037
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2039
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x71

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2040
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2042
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2043
    nop

    .line 2044
    return-void

    .line 2042
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

    .line 2784
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2785
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2787
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2789
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2791
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2792
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2795
    nop

    .line 2796
    return-void

    .line 2794
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

    .line 2767
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2768
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2769
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2770
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2772
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2774
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2775
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2777
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2778
    nop

    .line 2779
    return-void

    .line 2777
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

    .line 5018
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5019
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5020
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5021
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5023
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5025
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11d

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

.method public setVoicePreferStatus(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3587
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3588
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3589
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3590
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3592
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3594
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xca

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3595
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3597
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3598
    nop

    .line 3599
    return-void

    .line 3597
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

    .line 2733
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2734
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2736
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2738
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2740
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x99

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2741
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2743
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2744
    nop

    .line 2745
    return-void

    .line 2743
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

    .line 2750
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2751
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2753
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2755
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2757
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2758
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2760
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2761
    nop

    .line 2762
    return-void

    .line 2760
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

    .line 2947
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2948
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2950
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2952
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2954
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2955
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2958
    nop

    .line 2959
    return-void

    .line 2957
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

    .line 5054
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5055
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5056
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5057
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5058
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5059
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5060
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5062
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5064
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5065
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5067
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5068
    nop

    .line 5069
    return-void

    .line 5067
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
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5042
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5044
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5045
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5047
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5048
    nop

    .line 5049
    return-void

    .line 5047
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

    .line 5092
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5093
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5094
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5095
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5096
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5099
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5101
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x121

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5102
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5104
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5105
    nop

    .line 5106
    return-void

    .line 5104
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
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x125

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

    .line 5074
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5075
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5076
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5077
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5078
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5080
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5082
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x120

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

    .line 594
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 595
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 597
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 598
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 599
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 600
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 601
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 603
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 605
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 606
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 609
    nop

    .line 610
    return-void

    .line 608
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

    .line 2514
    .local p8, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2515
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2516
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2517
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2518
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2519
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2520
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2521
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2522
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2523
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2524
    invoke-virtual {v0, p9}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2526
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2528
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2529
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2531
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2532
    nop

    .line 2533
    return-void

    .line 2531
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

    .line 3448
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3449
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3451
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3453
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3455
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3456
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3458
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3459
    nop

    .line 3460
    return-void

    .line 3458
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

    .line 944
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 945
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 947
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 949
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 951
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 952
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 955
    nop

    .line 956
    return-void

    .line 954
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

    .line 2403
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2404
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2406
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2408
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2410
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x87

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2411
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2413
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2414
    nop

    .line 2415
    return-void

    .line 2413
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

    .line 2168
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2169
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2171
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2172
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2174
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2176
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x79

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2177
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2180
    nop

    .line 2181
    return-void

    .line 2179
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

    .line 2370
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2371
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2373
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2375
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2377
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2378
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2381
    nop

    .line 2382
    return-void

    .line 2380
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

    .line 2438
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2439
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2441
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2443
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2445
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x89

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2446
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2448
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2449
    nop

    .line 2450
    return-void

    .line 2448
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

    .line 961
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 962
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 965
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 967
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 968
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 971
    nop

    .line 972
    return-void

    .line 970
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

    .line 2420
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2421
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2423
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2425
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2427
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x88

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2428
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2430
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2431
    nop

    .line 2432
    return-void

    .line 2430
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

    .line 2186
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2187
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2190
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2192
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2193
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2195
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2196
    nop

    .line 2197
    return-void

    .line 2195
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

    .line 2387
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2388
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2391
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2393
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x86

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2394
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2396
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2397
    nop

    .line 2398
    return-void

    .line 2396
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

    .line 4437
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4438
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4439
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4440
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4442
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4444
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4445
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4447
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4448
    nop

    .line 4449
    return-void

    .line 4447
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

    .line 4127
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4128
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4130
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4133
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4135
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe9

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

.method public supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5577
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 5578
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5579
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 5580
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5582
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 5584
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 5585
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5587
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 5588
    nop

    .line 5589
    return-void

    .line 5587
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

    .line 207
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 208
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 210
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 213
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 215
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

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

    .line 170
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 171
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 176
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 178
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

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
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

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

    .line 193
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 195
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 197
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 198
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 201
    nop

    .line 202
    return-void

    .line 200
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

    .line 282
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 283
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 285
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 287
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 289
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 290
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 293
    nop

    .line 294
    return-void

    .line 292
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

    .line 398
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 399
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 402
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 404
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 408
    nop

    .line 409
    return-void

    .line 407
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

    .line 4915
    .local p2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4916
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4917
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4918
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 4920
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4922
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x117

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4923
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4925
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4926
    nop

    .line 4927
    return-void

    .line 4925
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 119
    const-string v0, "[class or subclass of vendor.mediatek.hardware.radio@3.5::IRadio]@Proxy"

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

    .line 4005
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4006
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4007
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4008
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4010
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4012
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4013
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4015
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4016
    nop

    .line 4017
    return-void

    .line 4015
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

    .line 5816
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 2629
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2630
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2632
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2633
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2635
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2637
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x93

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2638
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2640
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2641
    nop

    .line 2642
    return-void

    .line 2640
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

    .line 3034
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3035
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3037
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3039
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3041
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3042
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3044
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3045
    nop

    .line 3046
    return-void

    .line 3044
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

    .line 3017
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3018
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3019
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3020
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3022
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3024
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3025
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3027
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3028
    nop

    .line 3029
    return-void

    .line 3027
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

    .line 3655
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3656
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3658
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3660
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3662
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xce

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

.method public writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "phbEntryExt"    # Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3864
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3865
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3866
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3867
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3869
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3871
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xda

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3872
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3874
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3875
    nop

    .line 3876
    return-void

    .line 3874
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

    .line 1594
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1595
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1597
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1599
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1601
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x57

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1602
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1605
    nop

    .line 1606
    return-void

    .line 1604
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

    .line 1092
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1093
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1095
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1097
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1099
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1100
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1103
    nop

    .line 1104
    return-void

    .line 1102
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

    .line 3778
    .local p3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3779
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3780
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3781
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3782
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3784
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3786
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_5/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3787
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3789
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3790
    nop

    .line 3791
    return-void

    .line 3789
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method
