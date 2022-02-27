.class public final Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;
.super Ljava/lang/Object;
.source "IRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse;
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

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 92
    return-void
.end method


# virtual methods
.method public abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3696
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3697
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3698
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3700
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3702
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3703
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3705
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3706
    nop

    .line 3707
    return-void

    .line 3705
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 742
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 745
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 747
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 748
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1702
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1705
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1707
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x60

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1708
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1711
    nop

    .line 1712
    return-void

    .line 1710
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1399
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1402
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1404
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1408
    nop

    .line 1409
    return-void

    .line 1407
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 726
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 729
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 731
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 732
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 735
    nop

    .line 736
    return-void

    .line 734
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public acknowledgeRequest(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2251
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2252
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2255
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2257
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x81

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

.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 96
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3663
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3664
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3667
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3669
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3670
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3672
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3673
    nop

    .line 3674
    return-void

    .line 3672
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 609
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 612
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 614
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 615
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 618
    nop

    .line 619
    return-void

    .line 617
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 230
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 232
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 233
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 209
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 211
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 213
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 215
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 374
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 377
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 379
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 380
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 383
    nop

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public currentStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3115
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3116
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3119
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3121
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3122
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3124
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3125
    nop

    .line 3126
    return-void

    .line 3124
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4118
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4119
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4120
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4122
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4124
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4125
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4127
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4128
    nop

    .line 4129
    return-void

    .line 4127
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4134
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4135
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4136
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4138
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4140
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4141
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4143
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4144
    nop

    .line 4145
    return-void

    .line 4143
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 758
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 761
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 763
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 764
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 767
    nop

    .line 768
    return-void

    .line 766
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1550
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1551
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1554
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1556
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x57

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1557
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1560
    nop

    .line 1561
    return-void

    .line 1559
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1054
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1055
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1058
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1060
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1061
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1064
    nop

    .line 1065
    return-void

    .line 1063
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2634
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2635
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2638
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2640
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x98

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2641
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2644
    nop

    .line 2645
    return-void

    .line 2643
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 277
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 280
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 282
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 283
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 286
    nop

    .line 287
    return-void

    .line 285
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3131
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3132
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3133
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3135
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3137
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3138
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3140
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3141
    nop

    .line 3142
    return-void

    .line 3140
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2619
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2622
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2624
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x97

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2625
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2627
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2628
    nop

    .line 2629
    return-void

    .line 2627
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3069
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3071
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3073
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3074
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3076
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3077
    nop

    .line 3078
    return-void

    .line 3076
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 111
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1586
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1587
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1590
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1592
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x59

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1593
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1596
    nop

    .line 1597
    return-void

    .line 1595
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1153
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1156
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1158
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1159
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1162
    nop

    .line 1163
    return-void

    .line 1161
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3227
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3228
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3229
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3230
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3232
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3234
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3235
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3237
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3238
    nop

    .line 3239
    return-void

    .line 3237
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "allAllowed"    # Z
    .param p3, "carriers"    # Landroid/hardware/radio/V1_0/CarrierRestrictions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2185
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2186
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2188
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2189
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2191
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2193
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2194
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2196
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2197
    nop

    .line 2198
    return-void

    .line 2196
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 4101
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4102
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4103
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4104
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 4106
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4108
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4109
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4111
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4112
    nop

    .line 4113
    return-void

    .line 4111
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 1086
    .local p2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1087
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1089
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 1091
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1093
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1094
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1097
    nop

    .line 1098
    return-void

    .line 1096
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    .local p2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 873
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 875
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 877
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 879
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 880
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 883
    nop

    .line 884
    return-void

    .line 882
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3629
    .local p2, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3630
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3632
    invoke-static {v0, p2}, Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3634
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3636
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3637
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3639
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3640
    nop

    .line 3641
    return-void

    .line 3639
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 922
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 924
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 926
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 928
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 929
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 932
    nop

    .line 933
    return-void

    .line 931
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "hSid"    # Ljava/lang/String;
    .param p4, "hNid"    # Ljava/lang/String;
    .param p5, "min"    # Ljava/lang/String;
    .param p6, "prl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1513
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1515
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1521
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1523
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x55

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1524
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1527
    nop

    .line 1528
    return-void

    .line 1526
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    .local p2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 659
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 661
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 665
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 669
    nop

    .line 670
    return-void

    .line 668
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 692
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 694
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 695
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 697
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 699
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 700
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 1463
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1464
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1466
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1468
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1470
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x52

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1471
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1474
    nop

    .line 1475
    return-void

    .line 1473
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1266
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1267
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1269
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1271
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1273
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1274
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1277
    nop

    .line 1278
    return-void

    .line 1276
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1668
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1670
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1672
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1674
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1675
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1678
    nop

    .line 1679
    return-void

    .line 1677
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1751
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1752
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1754
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1756
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1758
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1759
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1762
    nop

    .line 1763
    return-void

    .line 1761
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2366
    .local p2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2367
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2369
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_2/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2371
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2373
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x88

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2374
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2376
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2377
    nop

    .line 2378
    return-void

    .line 2376
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 988
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 990
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 992
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 994
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 995
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 998
    nop

    .line 999
    return-void

    .line 997
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 625
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 627
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 628
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 630
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 632
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 633
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 636
    nop

    .line 637
    return-void

    .line 635
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2900
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2901
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2902
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2903
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2904
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2906
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2908
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2909
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2911
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2912
    nop

    .line 2913
    return-void

    .line 2911
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2918
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2919
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2921
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2923
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2925
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2926
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2928
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2929
    nop

    .line 2930
    return-void

    .line 2928
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 260
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 262
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/Call;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 264
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 266
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 267
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 270
    nop

    .line 271
    return-void

    .line 269
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2432
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2433
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2434
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2435
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_2/Call;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2437
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2439
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2440
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2442
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2443
    nop

    .line 2444
    return-void

    .line 2442
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3828
    .local p2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3829
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3831
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3833
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3835
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe0

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

.method public getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    .local p2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1005
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1007
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1009
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1011
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1012
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1015
    nop

    .line 1016
    return-void

    .line 1014
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/V1_0/DataRegStateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 457
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 459
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/DataRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 461
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 463
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 464
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 467
    nop

    .line 468
    return-void

    .line 466
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/V1_2/DataRegStateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2483
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2484
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2486
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/DataRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2488
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2490
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2491
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2494
    nop

    .line 2495
    return-void

    .line 2493
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

    .line 4476
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4477
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4479
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4481
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4482
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4483
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4485
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4486
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4487
    nop

    .line 4489
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4487
    return-object v2

    .line 4489
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imeisv"    # Ljava/lang/String;
    .param p4, "esn"    # Ljava/lang/String;
    .param p5, "meid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1567
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1569
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1574
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1576
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1577
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1580
    nop

    .line 1581
    return-void

    .line 1579
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3179
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3180
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3181
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3183
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3185
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3186
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3188
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3189
    nop

    .line 3190
    return-void

    .line 3188
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 774
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 776
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 778
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 780
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 781
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 784
    nop

    .line 785
    return-void

    .line 783
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3679
    .local p2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3680
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3682
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3684
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3686
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3687
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3689
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3690
    nop

    .line 3691
    return-void

    .line 3689
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "active"    # I
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3484
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3486
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3488
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcb

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

.method public getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 1414
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1415
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1417
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1419
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1421
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1422
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1425
    nop

    .line 1426
    return-void

    .line 1424
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "langs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3464
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3465
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3466
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3467
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3469
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3471
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xca

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

.method public getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2000
    .local p2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2001
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2003
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2005
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2007
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x72

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2008
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2011
    nop

    .line 2012
    return-void

    .line 2010
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

    .line 4401
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4402
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4404
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4406
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4407
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4408
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4410
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 4412
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 4414
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 4415
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 4416
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 4415
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 4419
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 4420
    nop

    .local v10, "_hidl_index_0":I
    :goto_0
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_0

    .line 4421
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 4423
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 4424
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4425
    nop

    .line 4427
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4420
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_0

    .line 4431
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_0
    nop

    .line 4433
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4431
    return-object v11

    .line 4433
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 293
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 295
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 297
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 299
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 300
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 4
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_0/CardStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 124
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 126
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 128
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 130
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 131
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/V1_2/CardStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2383
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2384
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2385
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2386
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2388
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2390
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x89

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2391
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2394
    nop

    .line 2395
    return-void

    .line 2393
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3244
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3245
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3247
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3249
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3251
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbd

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

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1801
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1803
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1804
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1806
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1808
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x66

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1809
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1812
    nop

    .line 1813
    return-void

    .line 1811
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "failCauseinfo"    # Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 406
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 408
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 410
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 412
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 413
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4185
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4187
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4189
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf6

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

.method public getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "activityInfo"    # Landroid/hardware/radio/V1_0/ActivityStatsInfo;
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2154
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2156
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2158
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7b

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

.method public getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 971
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 973
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 975
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 977
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 978
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 981
    nop

    .line 982
    return-void

    .line 980
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1201
    .local p2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1202
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1204
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1206
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1208
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1212
    nop

    .line 1213
    return-void

    .line 1211
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "manual"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 824
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 826
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 828
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 830
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 831
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 834
    nop

    .line 835
    return-void

    .line 833
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 474
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 476
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 480
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 482
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 483
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3811
    .local p2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3812
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3813
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3814
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3816
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3818
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdf

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

.method public getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "phbMemStorage"    # Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2717
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2718
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2719
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2720
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2722
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2724
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2725
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2728
    nop

    .line 2729
    return-void

    .line 2727
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2700
    .local p2, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2701
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2702
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2703
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2705
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2707
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2708
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2710
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2711
    nop

    .line 2712
    return-void

    .line 2710
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "nwType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1185
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1187
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1189
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1191
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1192
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1195
    nop

    .line 1196
    return-void

    .line 1194
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1332
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1333
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1335
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1337
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1339
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1340
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1343
    nop

    .line 1344
    return-void

    .line 1342
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2069
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2071
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2073
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x76

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2074
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2076
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2077
    nop

    .line 2078
    return-void

    .line 2076
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2534
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2535
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2537
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2539
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2541
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x92

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2542
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2544
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2545
    nop

    .line 2546
    return-void

    .line 2544
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3794
    .local p2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3795
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3797
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3799
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3801
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xde

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3802
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3804
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3805
    nop

    .line 3806
    return-void

    .line 3804
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sigStrength"    # Landroid/hardware/radio/V1_0/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 423
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 425
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 427
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 429
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 430
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 433
    nop

    .line 434
    return-void

    .line 432
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/V1_2/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2449
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2450
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2452
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2454
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2456
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2457
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2459
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2460
    nop

    .line 2461
    return-void

    .line 2459
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3646
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3647
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3648
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3649
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3651
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3653
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3654
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3656
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3657
    nop

    .line 3658
    return-void

    .line 3656
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3399
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3400
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3401
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3402
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3404
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3406
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc6

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

.method public getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsParams;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "param"    # Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3366
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3367
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3369
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3371
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3373
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3374
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3376
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3377
    nop

    .line 3378
    return-void

    .line 3376
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "memStatus"    # Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3596
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3597
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3598
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3599
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3601
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3603
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3604
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3606
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3607
    nop

    .line 3608
    return-void

    .line 3606
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1602
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1603
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1605
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1609
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1613
    nop

    .line 1614
    return-void

    .line 1612
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4311
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4312
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4313
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4314
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4316
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4318
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4319
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4321
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4322
    nop

    .line 4323
    return-void

    .line 4321
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1299
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1300
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1302
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1306
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1307
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1310
    nop

    .line 1311
    return-void

    .line 1309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "rat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1734
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1735
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1737
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1739
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1741
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x62

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1742
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1745
    nop

    .line 1746
    return-void

    .line 1744
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "voiceRegResponse"    # Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 440
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 442
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 444
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 446
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 447
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "voiceRegResponse"    # Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2466
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2467
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2468
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2469
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2471
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2473
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2474
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2476
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2477
    nop

    .line 2478
    return-void

    .line 2476
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1137
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1140
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1142
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1143
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1146
    nop

    .line 1147
    return-void

    .line 1145
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3893
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3894
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3895
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3897
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3899
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3900
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3902
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3903
    nop

    .line 3904
    return-void

    .line 3902
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3035
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3036
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3039
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3041
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb0

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

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 310
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 313
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 315
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 316
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 342
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 345
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 347
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 348
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 351
    nop

    .line 352
    return-void

    .line 350
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 326
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 329
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 331
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 332
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4346
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4347
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4348
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4350
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4352
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x100

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4353
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4355
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4356
    nop

    .line 4357
    return-void

    .line 4355
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1870
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1871
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1874
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1876
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1877
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1879
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1880
    nop

    .line 1881
    return-void

    .line 1879
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/V1_0/IccIoResult;
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 578
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 580
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 582
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 583
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 586
    nop

    .line 587
    return-void

    .line 585
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
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

    .line 1852
    .local p3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1853
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1855
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1856
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1858
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1860
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x69

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1861
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1864
    nop

    .line 1865
    return-void

    .line 1863
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1835
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1836
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1838
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1840
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1842
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x68

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1843
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1846
    nop

    .line 1847
    return-void

    .line 1845
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1886
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1887
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1889
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1891
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1893
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1894
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1897
    nop

    .line 1898
    return-void

    .line 1896
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

    .line 4363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4364
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4366
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4368
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4369
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4372
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4373
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 4375
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4373
    return-object v2

    .line 4375
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

    .line 4382
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4383
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4385
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4387
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4388
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4391
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4392
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 4394
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4392
    return-object v2

    .line 4394
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

    .line 4455
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4496
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4497
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4499
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4501
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4502
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4504
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4505
    nop

    .line 4506
    return-void

    .line 4504
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1903
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1904
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1906
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1908
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1910
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1911
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1914
    nop

    .line 1915
    return-void

    .line 1913
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1952
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1953
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1956
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1958
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1959
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1962
    nop

    .line 1963
    return-void

    .line 1961
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1936
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1937
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1940
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1942
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1943
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1945
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1946
    nop

    .line 1947
    return-void

    .line 1945
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1920
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1921
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1924
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1926
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1927
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1930
    nop

    .line 1931
    return-void

    .line 1929
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

    .line 4460
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4461
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4463
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4465
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4466
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4467
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4469
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4470
    nop

    .line 4471
    return-void

    .line 4469
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "lceInfo"    # Landroid/hardware/radio/V1_0/LceDataInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2135
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2137
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceDataInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2139
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2141
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7a

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

.method public queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2985
    .local p2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2986
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2988
    invoke-static {v0, p2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2990
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2992
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xad

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2993
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2995
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2996
    nop

    .line 2997
    return-void

    .line 2995
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3728
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3729
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3731
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3733
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3735
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xda

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3736
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3738
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3739
    nop

    .line 3740
    return-void

    .line 3738
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "catagory"    # I
    .param p3, "state"    # I
    .param p4, "retry_cnt"    # I
    .param p5, "autolock_cnt"    # I
    .param p6, "num_set"    # I
    .param p7, "total_set"    # I
    .param p8, "key_state"    # I
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3280
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3281
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3282
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3283
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3284
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3285
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3286
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3288
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3290
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3291
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3293
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3294
    nop

    .line 3295
    return-void

    .line 3293
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2551
    .local p2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2552
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2554
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2556
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2558
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x93

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2559
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2562
    nop

    .line 2563
    return-void

    .line 2561
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2783
    .local p2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2784
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2786
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2788
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2790
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2791
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2793
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2794
    nop

    .line 2795
    return-void

    .line 2793
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2601
    .local p2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2602
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2604
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2606
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2608
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2609
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2612
    nop

    .line 2613
    return-void

    .line 2611
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2584
    .local p2, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2585
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2586
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2587
    invoke-static {v0, p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2589
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2591
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x95

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2592
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2595
    nop

    .line 2596
    return-void

    .line 2594
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2750
    .local p2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2751
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2753
    invoke-static {v0, p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2755
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2757
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9f

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

.method public readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2851
    .local p2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2852
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2853
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2854
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2856
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2858
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2859
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2861
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2862
    nop

    .line 2863
    return-void

    .line 2861
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2834
    .local p2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2835
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2837
    invoke-static {v0, p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2839
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2841
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2842
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2845
    nop

    .line 2846
    return-void

    .line 2844
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2800
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2801
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2803
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2805
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2807
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2808
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2810
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2811
    nop

    .line 2812
    return-void

    .line 2810
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2650
    .local p2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2651
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2653
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2655
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2657
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x99

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2658
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2661
    nop

    .line 2662
    return-void

    .line 2660
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 2667
    .local p2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2668
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2670
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2672
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2674
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2675
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2677
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2678
    nop

    .line 2679
    return-void

    .line 2677
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sne"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2817
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2818
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2819
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2820
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2822
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2824
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2825
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2827
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2828
    nop

    .line 2829
    return-void

    .line 2827
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 390
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 393
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 395
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 396
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 399
    nop

    .line 400
    return-void

    .line 398
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reloadModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3580
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3581
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3582
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3584
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3586
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3587
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3589
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3590
    nop

    .line 3591
    return-void

    .line 3589
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3436
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3438
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc8

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

.method public reportAirplaneModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4201
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4203
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4205
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf7

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

.method public reportSimModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4217
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4219
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4221
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4222
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4224
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4225
    nop

    .line 4226
    return-void

    .line 4224
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1635
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1636
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1639
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1641
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1642
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1645
    nop

    .line 1646
    return-void

    .line 1644
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1651
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1652
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1655
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1657
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1658
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1661
    nop

    .line 1662
    return-void

    .line 1660
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/V1_0/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2017
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2018
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2020
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2022
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2024
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x73

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2025
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2028
    nop

    .line 2029
    return-void

    .line 2027
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1685
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1687
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1689
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1691
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1692
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1695
    nop

    .line 1696
    return-void

    .line 1694
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2050
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2051
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2054
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2056
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x75

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

.method public resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4150
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4151
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4152
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4154
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4156
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf4

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

.method public resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4007
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4009
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4011
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4012
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4014
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4015
    nop

    .line 4016
    return-void

    .line 4014
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public resetRadioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3957
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3958
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3961
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3963
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3964
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3966
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3967
    nop

    .line 3968
    return-void

    .line 3966
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3973
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3974
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3977
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3979
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3980
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3982
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3983
    nop

    .line 3984
    return-void

    .line 3982
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3018
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3019
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3021
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3023
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3025
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3026
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3028
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3029
    nop

    .line 3030
    return-void

    .line 3028
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3712
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3713
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3714
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3716
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3718
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3719
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3721
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3722
    nop

    .line 3723
    return-void

    .line 3721
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1365
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1366
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1369
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1371
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1372
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1375
    nop

    .line 1376
    return-void

    .line 1374
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1349
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1350
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1353
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1355
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1356
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1359
    nop

    .line 1360
    return-void

    .line 1358
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1381
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1382
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1384
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1386
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1388
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1389
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1392
    nop

    .line 1393
    return-void

    .line 1391
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2936
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2938
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2939
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2941
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2943
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2944
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2946
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2947
    nop

    .line 2948
    return-void

    .line 2946
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2203
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2204
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2207
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2209
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2210
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2213
    nop

    .line 2214
    return-void

    .line 2212
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 509
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 512
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 514
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2501
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2502
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2504
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2506
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2508
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x90

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2509
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2511
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2512
    nop

    .line 2513
    return-void

    .line 2511
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "commandResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1104
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1106
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1108
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1110
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1111
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1114
    nop

    .line 1115
    return-void

    .line 1113
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/V1_0/IccIoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1718
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1720
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1722
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1724
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x61

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1725
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1728
    nop

    .line 1729
    return-void

    .line 1727
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1818
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1819
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1821
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1823
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1825
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x67

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1826
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1829
    nop

    .line 1830
    return-void

    .line 1828
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3514
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3515
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3517
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 3519
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3521
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3522
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3524
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3525
    nop

    .line 3526
    return-void

    .line 3524
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3531
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3532
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3534
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3536
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3538
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xce

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3539
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3542
    nop

    .line 3543
    return-void

    .line 3541
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 544
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 546
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 548
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/V1_0/SendSmsResult;
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 527
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 529
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 531
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1121
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1124
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1126
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1127
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1130
    nop

    .line 1131
    return-void

    .line 1129
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 593
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 596
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 598
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 599
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 602
    nop

    .line 603
    return-void

    .line 601
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 939
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 942
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 944
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 945
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 948
    nop

    .line 949
    return-void

    .line 947
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "numAllowed"    # I
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2171
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2173
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2175
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2176
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2179
    nop

    .line 2180
    return-void

    .line 2178
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4085
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4086
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4087
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4089
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4091
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4092
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4094
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4095
    nop

    .line 4096
    return-void

    .line 4094
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1071
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1074
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1076
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1077
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1080
    nop

    .line 1081
    return-void

    .line 1079
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 808
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 811
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 813
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 814
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 817
    nop

    .line 818
    return-void

    .line 816
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3002
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3003
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3006
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3008
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xae

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3009
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3011
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3012
    nop

    .line 3013
    return-void

    .line 3011
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 676
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 679
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 681
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 685
    nop

    .line 686
    return-void

    .line 684
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3055
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3057
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb1

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

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 710
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 713
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 715
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 716
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 719
    nop

    .line 720
    return-void

    .line 718
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2272
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2274
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

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

.method public setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1496
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1497
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1500
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1502
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1503
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1506
    nop

    .line 1507
    return-void

    .line 1505
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1480
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1481
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1484
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1486
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x53

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1487
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1490
    nop

    .line 1491
    return-void

    .line 1489
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1251
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1254
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1256
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1257
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1260
    nop

    .line 1261
    return-void

    .line 1259
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1234
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1235
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1238
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1240
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1241
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1244
    nop

    .line 1245
    return-void

    .line 1243
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1768
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1769
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1772
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1774
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1775
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1778
    nop

    .line 1779
    return-void

    .line 1777
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2884
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2885
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2886
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2888
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2890
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2891
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2893
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2894
    nop

    .line 2895
    return-void

    .line 2893
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 643
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 646
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 648
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 652
    nop

    .line 653
    return-void

    .line 651
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2954
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2955
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2957
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2959
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xab

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2962
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2963
    nop

    .line 2964
    return-void

    .line 2962
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2969
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2970
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2973
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2975
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2976
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2978
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2979
    nop

    .line 2980
    return-void

    .line 2978
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1985
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1988
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1990
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x71

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1991
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1994
    nop

    .line 1995
    return-void

    .line 1993
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2035
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2038
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2040
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x74

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2041
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2044
    nop

    .line 2045
    return-void

    .line 2043
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setE911StateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4073
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4075
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xef

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4076
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4078
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4079
    nop

    .line 4080
    return-void

    .line 4078
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEccListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3099
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3100
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3103
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3105
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3106
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3108
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3109
    nop

    .line 3110
    return-void

    .line 3108
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3163
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3164
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3167
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3169
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3170
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3172
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3173
    nop

    .line 3174
    return-void

    .line 3172
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEccServiceCategoryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3083
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3084
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3087
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3089
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3090
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3092
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3093
    nop

    .line 3094
    return-void

    .line 3092
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3418
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3420
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3422
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc7

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

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 791
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 793
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 795
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 797
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 798
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 801
    nop

    .line 802
    return-void

    .line 800
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3861
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3862
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3865
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3867
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3868
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3870
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3871
    nop

    .line 3872
    return-void

    .line 3870
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3745
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3746
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3749
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3751
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdb

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

.method public setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1447
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1448
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1451
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1453
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x51

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1454
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1457
    nop

    .line 1458
    return-void

    .line 1456
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1431
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1432
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1435
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1437
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1438
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1441
    nop

    .line 1442
    return-void

    .line 1440
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3452
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3454
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3455
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3457
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3458
    nop

    .line 3459
    return-void

    .line 3457
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

    .line 4440
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4441
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4443
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4445
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4446
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4448
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4449
    nop

    .line 4450
    return-void

    .line 4448
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2219
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2220
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2223
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2225
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2226
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2229
    nop

    .line 2230
    return-void

    .line 2228
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1784
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1785
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1788
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1790
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x65

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1791
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1794
    nop

    .line 1795
    return-void

    .line 1793
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2416
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2417
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2418
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2420
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2422
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2423
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2425
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2426
    nop

    .line 2427
    return-void

    .line 2425
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1219
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1222
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1224
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1225
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1228
    nop

    .line 1229
    return-void

    .line 1227
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLteAccessStratumReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4038
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4041
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4043
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xed

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4044
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4046
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4047
    nop

    .line 4048
    return-void

    .line 4046
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4170
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4172
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf5

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

.method public setLteUplinkDataTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4053
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4054
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4057
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4059
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xee

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

.method public setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3195
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3196
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3199
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3201
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xba

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3202
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3204
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3205
    nop

    .line 3206
    return-void

    .line 3204
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 955
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 958
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 960
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 961
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 964
    nop

    .line 965
    return-void

    .line 963
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3300
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3301
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3306
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3307
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3310
    nop

    .line 3311
    return-void

    .line 3309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 841
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 844
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 846
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 847
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 850
    nop

    .line 851
    return-void

    .line 849
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 857
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 860
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 862
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 863
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 866
    nop

    .line 867
    return-void

    .line 865
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3613
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3614
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3615
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3617
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3619
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3620
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3622
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3623
    nop

    .line 3624
    return-void

    .line 3622
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setOperatorConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4279
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4280
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4281
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4283
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4285
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4286
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4289
    nop

    .line 4290
    return-void

    .line 4288
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setOverrideApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3925
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3926
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3927
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3929
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3931
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3932
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3934
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3935
    nop

    .line 3936
    return-void

    .line 3934
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3847
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3849
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3851
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3852
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3855
    nop

    .line 3856
    return-void

    .line 3854
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPdnNameReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3941
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3942
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3943
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3945
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3947
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3948
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3950
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3951
    nop

    .line 3952
    return-void

    .line 3950
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPdnReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3909
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3910
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3913
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3915
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3916
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3918
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3919
    nop

    .line 3920
    return-void

    .line 3918
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2734
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2735
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2738
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2740
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9e

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

.method public setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2868
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2869
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2870
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2872
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2874
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2875
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2877
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2878
    nop

    .line 2879
    return-void

    .line 2877
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1168
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1169
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1172
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1174
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1175
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1178
    nop

    .line 1179
    return-void

    .line 1177
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1317
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1320
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1322
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x49

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1323
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1326
    nop

    .line 1327
    return-void

    .line 1325
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPropImsHandoverResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4263
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4264
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4267
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4269
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4270
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4272
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4273
    nop

    .line 4274
    return-void

    .line 4272
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "rc"    # Landroid/hardware/radio/V1_0/RadioCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2083
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2084
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2086
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2088
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2090
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x77

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

.method public setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 493
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 496
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 498
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 499
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 502
    nop

    .line 503
    return-void

    .line 501
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4021
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4022
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4023
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4025
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4027
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xec

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4028
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4030
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4031
    nop

    .line 4032
    return-void

    .line 4030
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3548
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3549
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3552
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3554
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3555
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3557
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3558
    nop

    .line 3559
    return-void

    .line 3557
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2518
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2519
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2522
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2524
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x91

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2525
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2527
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2528
    nop

    .line 2529
    return-void

    .line 2527
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
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

    .line 3777
    .local p2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3778
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3780
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 3782
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3784
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3785
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3787
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3788
    nop

    .line 3789
    return-void

    .line 3787
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3765
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3767
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdc

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

.method public setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2400
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2401
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2404
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2406
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2407
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2409
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2410
    nop

    .line 2411
    return-void

    .line 2409
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSilentRebootResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4231
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4232
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4233
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4235
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4237
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4238
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4240
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4241
    nop

    .line 4242
    return-void

    .line 4240
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2235
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2236
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2239
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2241
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2242
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2245
    nop

    .line 2246
    return-void

    .line 2244
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2288
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2290
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x83

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2291
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2294
    nop

    .line 2295
    return-void

    .line 2293
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3263
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3265
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3267
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbe

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

.method public setSmsFwkReadyRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3500
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3502
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3504
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3505
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3507
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3508
    nop

    .line 3509
    return-void

    .line 3507
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3383
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3384
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3387
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3389
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3390
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3392
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3393
    nop

    .line 3394
    return-void

    .line 3392
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1620
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1623
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1625
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1626
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1629
    nop

    .line 1630
    return-void

    .line 1628
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4295
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4296
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4297
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4299
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4301
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4302
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4304
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4305
    nop

    .line 4306
    return-void

    .line 4304
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1022
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1025
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1027
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1028
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1030
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1284
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1287
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1289
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1290
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1293
    nop

    .line 1294
    return-void

    .line 1292
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3877
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3878
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3879
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3881
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3883
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3884
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3886
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3887
    nop

    .line 3888
    return-void

    .line 3886
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4247
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4248
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4249
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4251
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4253
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4254
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4256
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4257
    nop

    .line 4258
    return-void

    .line 4256
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1968
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1969
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1972
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1974
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x70

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1975
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1978
    nop

    .line 1979
    return-void

    .line 1977
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3147
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3148
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3151
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3153
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3154
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3157
    nop

    .line 3158
    return-void

    .line 3156
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "dcResponse"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 561
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 563
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 565
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 889
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 890
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 893
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 895
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 896
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 899
    nop

    .line 900
    return-void

    .line 898
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "status"    # Landroid/hardware/radio/V1_1/KeepaliveStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2332
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2333
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2335
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2337
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2339
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x86

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2340
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2342
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2343
    nop

    .line 2344
    return-void

    .line 2342
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "statusInfo"    # Landroid/hardware/radio/V1_0/LceStatusInfo;
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
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2103
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceStatusInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2105
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2107
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2108
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2111
    nop

    .line 2112
    return-void

    .line 2110
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2300
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2301
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2306
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x84

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

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 906
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 909
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 911
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 912
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 915
    nop

    .line 916
    return-void

    .line 914
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2349
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2350
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2353
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2355
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x87

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2356
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2358
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2359
    nop

    .line 2360
    return-void

    .line 2358
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "statusInfo"    # Landroid/hardware/radio/V1_0/LceStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2118
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2120
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceStatusInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2122
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2124
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x79

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2125
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2128
    nop

    .line 2129
    return-void

    .line 2127
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2317
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2320
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2322
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2323
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2325
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2326
    nop

    .line 2327
    return-void

    .line 2325
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public storeModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3564
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3565
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3568
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3570
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3571
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3573
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3574
    nop

    .line 3575
    return-void

    .line 3573
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3317
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3319
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3321
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3323
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3324
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3326
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3327
    nop

    .line 3328
    return-void

    .line 3326
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4328
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4329
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4330
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4331
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4333
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4335
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xff

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4336
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4338
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4339
    nop

    .line 4340
    return-void

    .line 4338
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 175
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 177
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 179
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 181
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 182
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 141
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 145
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 147
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 148
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 192
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 194
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 196
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 198
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 199
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 158
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 160
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 162
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 164
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 165
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 243
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 245
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 247
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 249
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 250
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 358
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 361
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 363
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 364
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3989
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3990
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3991
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3993
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3995
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xea

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 106
    const-string v0, "[class or subclass of vendor.mediatek.hardware.radio@3.4::IRadioResponse]@Proxy"

    return-object v0
.end method

.method public triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3211
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3212
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3215
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3217
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3218
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3220
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3221
    nop

    .line 3222
    return-void

    .line 3220
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

    .line 4511
    iget-object v0, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "event"    # Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3333
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3334
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3335
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3336
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3338
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3340
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3341
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3343
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3344
    nop

    .line 3345
    return-void

    .line 3343
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3350
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3351
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3352
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3354
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3356
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3357
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3359
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3360
    nop

    .line 3361
    return-void

    .line 3359
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2568
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2569
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2572
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2574
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x94

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2575
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2578
    nop

    .line 2579
    return-void

    .line 2577
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
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
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2769
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2771
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2773
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2774
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2776
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2777
    nop

    .line 2778
    return-void

    .line 2776
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1533
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1534
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1536
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1538
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1540
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x56

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1541
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1544
    nop

    .line 1545
    return-void

    .line 1543
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1038
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1040
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1042
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1044
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1045
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1048
    nop

    .line 1049
    return-void

    .line 1047
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2684
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2685
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2688
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2690
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2691
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2693
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2694
    nop

    .line 2695
    return-void

    .line 2693
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method
