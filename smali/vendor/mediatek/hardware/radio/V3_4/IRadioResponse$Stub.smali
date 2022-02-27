.class public abstract Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4515
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 4518
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 4568
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4569
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4570
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4571
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4572
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 4540
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x22t
        0x1ft
        0x59t
        -0x3at
        -0x9t
        0x9t
        0x7ct
        0x17t
        -0xdt
        -0x13t
        0x63t
        0x22t
        0x67t
        -0x42t
        -0x3bt
        0x67t
        -0x25t
        -0x69t
        0x4ft
        -0x2et
        -0x4ft
        0x4et
        0x59t
        0xft
        0x2ct
        0x59t
        0x24t
        -0x50t
        0x77t
        0x55t
        0x1bt
        -0x6t
    .end array-data

    :array_1
    .array-data 1
        -0x18t
        0x74t
        0x3bt
        0xdt
        0x4at
        0x0t
        -0x8t
        -0x68t
        0xat
        -0x74t
        0x18t
        -0x2at
        -0x2ct
        -0x2dt
        0x14t
        -0x5ct
        -0x68t
        -0x18t
        -0x6ft
        -0x7t
        -0x20t
        -0x47t
        -0x40t
        0x54t
        -0x26t
        -0x74t
        0x73t
        0x71t
        0x2et
        -0x56t
        0x42t
        0x7t
    .end array-data

    :array_2
    .array-data 1
        -0x26t
        -0x74t
        0x6at
        -0x17t
        -0x6ft
        -0x3at
        -0x5ct
        -0x4et
        -0x7ct
        -0x34t
        0x6et
        0x44t
        0x53t
        0x32t
        -0x20t
        0x64t
        -0x1et
        -0x72t
        -0x18t
        -0x60t
        -0x6ct
        -0x7et
        -0x13t
        0x5at
        -0x1t
        -0x7t
        -0x2ft
        0x59t
        -0x14t
        0x66t
        -0x6ct
        -0x49t
    .end array-data

    :array_3
    .array-data 1
        0x5t
        -0x56t
        0x3dt
        -0x1at
        0x13t
        0xat
        -0x69t
        -0x78t
        -0x3t
        -0x4at
        -0xct
        -0x2dt
        -0x34t
        0x57t
        -0x3dt
        -0x16t
        -0x70t
        -0x10t
        0x67t
        -0x19t
        0x7at
        0x5et
        0x9t
        -0x2at
        -0x59t
        0x72t
        -0x14t
        0x7ft
        0x6bt
        -0x36t
        0x33t
        -0x2et
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        -0x7dt
        0x3at
        -0x12t
        -0x30t
        -0x33t
        0x1dt
        0x59t
        0x43t
        0x7at
        -0x36t
        0x21t
        0xbt
        -0x1bt
        -0x70t
        -0x57t
        0x53t
        -0x31t
        0x32t
        -0x44t
        -0x4at
        0x68t
        0x3ct
        -0x2at
        0x3dt
        0x8t
        -0x69t
        0x62t
        -0x5at
        0x43t
        -0x5t
        0x49t
    .end array-data

    :array_5
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4523
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    const-string v2, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    const-string v3, "android.hardware.radio@1.2::IRadioResponse"

    const-string v4, "android.hardware.radio@1.1::IRadioResponse"

    const-string v5, "android.hardware.radio@1.0::IRadioResponse"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 4534
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4557
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 4577
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4578
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 21
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 4606
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 8766
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 8767
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_213

    .line 8768
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8770
    goto/16 :goto_7

    .line 8753
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 8754
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 8755
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8757
    goto/16 :goto_7

    .line 8758
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8760
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 8761
    goto/16 :goto_7

    .line 8737
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 8738
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 8739
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8741
    goto/16 :goto_7

    .line 8742
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8744
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 8745
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8746
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 8747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8748
    goto/16 :goto_7

    .line 8722
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 8723
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 8724
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8726
    goto/16 :goto_7

    .line 8727
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8729
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->ping()V

    .line 8730
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8732
    goto/16 :goto_7

    .line 8712
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 8713
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_213

    .line 8714
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8715
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8716
    goto/16 :goto_7

    .line 8699
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 8700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 8701
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8703
    goto/16 :goto_7

    .line 8704
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8706
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 8707
    goto/16 :goto_7

    .line 8666
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 8667
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 8668
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8670
    goto/16 :goto_7

    .line 8671
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8673
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8674
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8676
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 8678
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8679
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 8680
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 8681
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 8682
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 8684
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 8685
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 8686
    nop

    .line 8682
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8689
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 8691
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 8693
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8694
    goto/16 :goto_7

    .line 8650
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 8651
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 8652
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8654
    goto/16 :goto_7

    .line 8655
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8657
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 8658
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8659
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 8660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8661
    goto/16 :goto_7

    .line 8636
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 8637
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 8638
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8640
    goto/16 :goto_7

    .line 8641
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8643
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8645
    goto/16 :goto_7

    .line 8620
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 8621
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 8622
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8623
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8624
    goto/16 :goto_7

    .line 8625
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8627
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8628
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8629
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 8630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8631
    goto/16 :goto_7

    .line 8605
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 8606
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 8607
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8609
    goto/16 :goto_7

    .line 8610
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8612
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8613
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8614
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8615
    goto/16 :goto_7

    .line 8589
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 8590
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 8591
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8593
    goto/16 :goto_7

    .line 8594
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8596
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8597
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8599
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8600
    goto/16 :goto_7

    .line 8573
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 8574
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 8575
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8577
    goto/16 :goto_7

    .line 8578
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8580
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8581
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8583
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 8584
    goto/16 :goto_7

    .line 8558
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 8559
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 8560
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8562
    goto/16 :goto_7

    .line 8563
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8565
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8566
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8567
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8568
    goto/16 :goto_7

    .line 8543
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 8544
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 8545
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8547
    goto/16 :goto_7

    .line 8548
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8550
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8551
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8552
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setOperatorConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8553
    goto/16 :goto_7

    .line 8528
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 8529
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 8530
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8532
    goto/16 :goto_7

    .line 8533
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8535
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8536
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8537
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPropImsHandoverResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8538
    goto/16 :goto_7

    .line 8513
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 8514
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 8515
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8517
    goto/16 :goto_7

    .line 8518
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8520
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8521
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8522
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8523
    goto/16 :goto_7

    .line 8498
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 8499
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 8500
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8502
    goto/16 :goto_7

    .line 8503
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8505
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8506
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8507
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSilentRebootResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8508
    goto/16 :goto_7

    .line 8483
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 8484
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 8485
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8487
    goto/16 :goto_7

    .line 8488
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8490
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8491
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8492
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->reportSimModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8493
    goto/16 :goto_7

    .line 8468
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 8469
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 8470
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8472
    goto/16 :goto_7

    .line 8473
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8475
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8476
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8477
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->reportAirplaneModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8478
    goto/16 :goto_7

    .line 8452
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 8453
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 8454
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8456
    goto/16 :goto_7

    .line 8457
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8459
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8460
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8462
    .local v2, "mode":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8463
    goto/16 :goto_7

    .line 8437
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 8438
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 8439
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8441
    goto/16 :goto_7

    .line 8442
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8444
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8445
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8446
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8447
    goto/16 :goto_7

    .line 8422
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 8423
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 8424
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8426
    goto/16 :goto_7

    .line 8427
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8429
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8430
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8431
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8432
    goto/16 :goto_7

    .line 8407
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 8408
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 8409
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8410
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8411
    goto/16 :goto_7

    .line 8412
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8414
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8415
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8416
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8417
    goto/16 :goto_7

    .line 8392
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 8393
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 8394
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8396
    goto/16 :goto_7

    .line 8397
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8399
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8400
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8401
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8402
    goto/16 :goto_7

    .line 8376
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 8377
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 8378
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8380
    goto/16 :goto_7

    .line 8381
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8383
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8384
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8386
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8387
    goto/16 :goto_7

    .line 8361
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 8362
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 8363
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8365
    goto/16 :goto_7

    .line 8366
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8368
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8369
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8370
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8371
    goto/16 :goto_7

    .line 8346
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 8347
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 8348
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8350
    goto/16 :goto_7

    .line 8351
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8353
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8354
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8355
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setE911StateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8356
    goto/16 :goto_7

    .line 8331
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 8332
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 8333
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8335
    goto/16 :goto_7

    .line 8336
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8338
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8339
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8340
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setLteUplinkDataTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8341
    goto/16 :goto_7

    .line 8316
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 8317
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 8318
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8320
    goto/16 :goto_7

    .line 8321
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8323
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8324
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8325
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setLteAccessStratumReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8326
    goto/16 :goto_7

    .line 8301
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 8302
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 8303
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8305
    goto/16 :goto_7

    .line 8306
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8308
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8309
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8310
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8311
    goto/16 :goto_7

    .line 8286
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 8287
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 8288
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8289
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8290
    goto/16 :goto_7

    .line 8291
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8293
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8294
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8295
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8296
    goto/16 :goto_7

    .line 8271
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 8272
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 8273
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8275
    goto/16 :goto_7

    .line 8276
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8278
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8279
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8280
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8281
    goto/16 :goto_7

    .line 8256
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 8257
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 8258
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8260
    goto/16 :goto_7

    .line 8261
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8263
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8264
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8265
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8266
    goto/16 :goto_7

    .line 8241
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 8242
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 8243
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8245
    goto/16 :goto_7

    .line 8246
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8248
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8249
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8250
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->resetRadioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8251
    goto/16 :goto_7

    .line 8226
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 8227
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 8228
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8230
    goto/16 :goto_7

    .line 8231
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8233
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8234
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8235
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPdnNameReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8236
    goto/16 :goto_7

    .line 8211
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 8212
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 8213
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8215
    goto/16 :goto_7

    .line 8216
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8218
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8219
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8220
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setOverrideApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8221
    goto/16 :goto_7

    .line 8196
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 8197
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 8198
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8200
    goto/16 :goto_7

    .line 8201
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8203
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8204
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8205
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPdnReuseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8206
    goto/16 :goto_7

    .line 8181
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 8182
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 8183
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8185
    goto/16 :goto_7

    .line 8186
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8188
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8189
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8190
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8191
    goto/16 :goto_7

    .line 8166
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 8167
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 8168
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8170
    goto/16 :goto_7

    .line 8171
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8173
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8174
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8175
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8176
    goto/16 :goto_7

    .line 8151
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 8152
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 8153
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8155
    goto/16 :goto_7

    .line 8156
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8158
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8159
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8160
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8161
    goto/16 :goto_7

    .line 8136
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 8137
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 8138
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8140
    goto/16 :goto_7

    .line 8141
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8143
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8144
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8145
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8146
    goto/16 :goto_7

    .line 8120
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 8121
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 8122
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8124
    goto/16 :goto_7

    .line 8125
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8127
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8128
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8130
    .local v2, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8131
    goto/16 :goto_7

    .line 8104
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 8105
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 8106
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8108
    goto/16 :goto_7

    .line 8109
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8111
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8112
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8114
    .local v2, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8115
    goto/16 :goto_7

    .line 8088
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 8089
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 8090
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8091
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8092
    goto/16 :goto_7

    .line 8093
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8095
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8096
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8098
    .local v2, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8099
    goto/16 :goto_7

    .line 8072
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 8073
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 8074
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8075
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8076
    goto/16 :goto_7

    .line 8077
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8079
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8080
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8082
    .local v2, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 8083
    goto/16 :goto_7

    .line 8057
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 8058
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 8059
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8061
    goto/16 :goto_7

    .line 8062
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8064
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8065
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8066
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8067
    goto/16 :goto_7

    .line 8042
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 8043
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 8044
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8046
    goto/16 :goto_7

    .line 8047
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8049
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8050
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8051
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8052
    goto/16 :goto_7

    .line 8026
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 8027
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 8028
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8029
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8030
    goto/16 :goto_7

    .line 8031
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8033
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8034
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8035
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8036
    .local v2, "mode":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 8037
    goto/16 :goto_7

    .line 8011
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 8012
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 8013
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8015
    goto/16 :goto_7

    .line 8016
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8018
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8019
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8020
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8021
    goto/16 :goto_7

    .line 7996
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 7997
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 7998
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8000
    goto/16 :goto_7

    .line 8001
    :cond_64
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8003
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 8004
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8005
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 8006
    goto/16 :goto_7

    .line 7980
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 7981
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 7982
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7984
    goto/16 :goto_7

    .line 7985
    :cond_66
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7987
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7988
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7990
    .local v2, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7991
    goto/16 :goto_7

    .line 7965
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 7966
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 7967
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7968
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7969
    goto/16 :goto_7

    .line 7970
    :cond_68
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7972
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7973
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7974
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7975
    goto/16 :goto_7

    .line 7948
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 7949
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 7950
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7952
    goto/16 :goto_7

    .line 7953
    :cond_6a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7955
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7956
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7957
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 7958
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7959
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 7960
    goto/16 :goto_7

    .line 7932
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 7933
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 7934
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7936
    goto/16 :goto_7

    .line 7937
    :cond_6c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7939
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7940
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7941
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7942
    .local v2, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7943
    goto/16 :goto_7

    .line 7917
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/OperatorInfoWithAct;>;"
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 7918
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 7919
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7921
    goto/16 :goto_7

    .line 7922
    :cond_6e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7924
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7925
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7926
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7927
    goto/16 :goto_7

    .line 7900
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 7901
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 7902
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7904
    goto/16 :goto_7

    .line 7905
    :cond_70
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7907
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7908
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7909
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 7910
    .local v2, "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7911
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 7912
    goto/16 :goto_7

    .line 7885
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "memStatus":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 7886
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 7887
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7889
    goto/16 :goto_7

    .line 7890
    :cond_72
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7892
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7893
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7894
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->reloadModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7895
    goto/16 :goto_7

    .line 7870
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 7871
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 7872
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7874
    goto/16 :goto_7

    .line 7875
    :cond_74
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7877
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7878
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7879
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->storeModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7880
    goto/16 :goto_7

    .line 7855
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 7856
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 7857
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7859
    goto/16 :goto_7

    .line 7860
    :cond_76
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7862
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7863
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7864
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7865
    goto/16 :goto_7

    .line 7839
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 7840
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 7841
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7842
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7843
    goto/16 :goto_7

    .line 7844
    :cond_78
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7846
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7847
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7849
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7850
    goto/16 :goto_7

    .line 7823
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 7824
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 7825
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7827
    goto/16 :goto_7

    .line 7828
    :cond_7a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7830
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7831
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7833
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7834
    goto/16 :goto_7

    .line 7808
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 7809
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 7810
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7812
    goto/16 :goto_7

    .line 7813
    :cond_7c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7815
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7816
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7817
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSmsFwkReadyRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7818
    goto/16 :goto_7

    .line 7792
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 7793
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 7794
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7795
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7796
    goto/16 :goto_7

    .line 7797
    :cond_7e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7799
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7800
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7802
    .local v2, "active":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7803
    goto/16 :goto_7

    .line 7776
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "active":I
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 7777
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 7778
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7780
    goto/16 :goto_7

    .line 7781
    :cond_80
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7783
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7784
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7786
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7787
    goto/16 :goto_7

    .line 7761
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 7762
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 7763
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7765
    goto/16 :goto_7

    .line 7766
    :cond_82
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7768
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7769
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7770
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7771
    goto/16 :goto_7

    .line 7746
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 7747
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 7748
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7750
    goto/16 :goto_7

    .line 7751
    :cond_84
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7753
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7754
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7755
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7756
    goto/16 :goto_7

    .line 7731
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 7732
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 7733
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7735
    goto/16 :goto_7

    .line 7736
    :cond_86
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7738
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7739
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7740
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7741
    goto/16 :goto_7

    .line 7714
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 7715
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 7716
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7718
    goto/16 :goto_7

    .line 7719
    :cond_88
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7721
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7722
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7723
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;-><init>()V

    .line 7724
    .local v2, "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7725
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;)V

    .line 7726
    goto/16 :goto_7

    .line 7699
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Lvendor/mediatek/hardware/radio/V3_0/SmsMemStatus;
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 7700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 7701
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7703
    goto/16 :goto_7

    .line 7704
    :cond_8a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7706
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7707
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7708
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7709
    goto/16 :goto_7

    .line 7682
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 7683
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 7684
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7686
    goto/16 :goto_7

    .line 7687
    :cond_8c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7689
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7690
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7691
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 7692
    .local v2, "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7693
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 7694
    goto/16 :goto_7

    .line 7667
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "param":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 7668
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 7669
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7670
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7671
    goto/16 :goto_7

    .line 7672
    :cond_8e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7674
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7675
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7676
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7677
    goto/16 :goto_7

    .line 7650
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 7651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 7652
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7654
    goto/16 :goto_7

    .line 7655
    :cond_90
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7657
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7658
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7659
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;-><init>()V

    .line 7660
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7661
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;)V

    .line 7662
    goto/16 :goto_7

    .line 7634
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimEvent;
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 7635
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 7636
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7638
    goto/16 :goto_7

    .line 7639
    :cond_92
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7641
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7642
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7644
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7645
    goto/16 :goto_7

    .line 7619
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 7620
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 7621
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7623
    goto/16 :goto_7

    .line 7624
    :cond_94
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7626
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7627
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7628
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7629
    goto/16 :goto_7

    .line 7597
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    :cond_95
    move v12, v1

    .line 7598
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v2, :cond_96

    .line 7599
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7600
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7601
    goto/16 :goto_7

    .line 7602
    :cond_96
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7604
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v13, v0

    .line 7605
    .local v13, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v13, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 7607
    .local v14, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 7608
    .local v15, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7609
    .local v16, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 7610
    .local v17, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7611
    .local v18, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 7612
    .local v19, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v20

    .line 7613
    .local v20, "key_state":I
    move-object v0, v9

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 7614
    goto/16 :goto_7

    .line 7582
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v14    # "catagory":I
    .end local v15    # "state":I
    .end local v16    # "retry_cnt":I
    .end local v17    # "autolock_cnt":I
    .end local v18    # "num_set":I
    .end local v19    # "total_set":I
    .end local v20    # "key_state":I
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 7583
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 7584
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7585
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7586
    goto/16 :goto_7

    .line 7587
    :cond_98
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7589
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7590
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7591
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7592
    goto/16 :goto_7

    .line 7566
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 7567
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 7568
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7570
    goto/16 :goto_7

    .line 7571
    :cond_9a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7573
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7574
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7576
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7577
    goto/16 :goto_7

    .line 7550
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 7551
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 7552
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7554
    goto/16 :goto_7

    .line 7555
    :cond_9c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7557
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7558
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7560
    .restart local v2    # "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7561
    goto/16 :goto_7

    .line 7535
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 7536
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 7537
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7539
    goto/16 :goto_7

    .line 7540
    :cond_9e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7542
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7543
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7544
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7545
    goto/16 :goto_7

    .line 7520
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 7521
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 7522
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7523
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7524
    goto/16 :goto_7

    .line 7525
    :cond_a0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7527
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7528
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7529
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7530
    goto/16 :goto_7

    .line 7505
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 7506
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 7507
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7509
    goto/16 :goto_7

    .line 7510
    :cond_a2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7512
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7513
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7514
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7515
    goto/16 :goto_7

    .line 7490
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 7491
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 7492
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7494
    goto/16 :goto_7

    .line 7495
    :cond_a4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7497
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7498
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7499
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7500
    goto/16 :goto_7

    .line 7475
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 7476
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 7477
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7479
    goto/16 :goto_7

    .line 7480
    :cond_a6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7482
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7483
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7484
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7485
    goto/16 :goto_7

    .line 7460
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 7461
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 7462
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7464
    goto/16 :goto_7

    .line 7465
    :cond_a8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7467
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7468
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7469
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7470
    goto/16 :goto_7

    .line 7445
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 7446
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 7447
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7449
    goto/16 :goto_7

    .line 7450
    :cond_aa
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7452
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7453
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7454
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->currentStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7455
    goto/16 :goto_7

    .line 7430
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 7431
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 7432
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7434
    goto/16 :goto_7

    .line 7435
    :cond_ac
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7437
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7438
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7439
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setEccListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7440
    goto/16 :goto_7

    .line 7415
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 7416
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 7417
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7419
    goto/16 :goto_7

    .line 7420
    :cond_ae
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7422
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7423
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7424
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setEccServiceCategoryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7425
    goto/16 :goto_7

    .line 7400
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 7401
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 7402
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7403
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7404
    goto/16 :goto_7

    .line 7405
    :cond_b0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7407
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7408
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7409
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7410
    goto/16 :goto_7

    .line 7385
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 7386
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 7387
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7389
    goto/16 :goto_7

    .line 7390
    :cond_b2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7392
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7393
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7394
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7395
    goto/16 :goto_7

    .line 7370
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 7371
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 7372
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7374
    goto/16 :goto_7

    .line 7375
    :cond_b4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7377
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7378
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7379
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7380
    goto/16 :goto_7

    .line 7354
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 7355
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 7356
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7358
    goto/16 :goto_7

    .line 7359
    :cond_b6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7361
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7362
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7364
    .local v2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7365
    goto/16 :goto_7

    .line 7339
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 7340
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 7341
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7343
    goto/16 :goto_7

    .line 7344
    :cond_b8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7346
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7347
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7348
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7349
    goto/16 :goto_7

    .line 7323
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 7324
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 7325
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7327
    goto/16 :goto_7

    .line 7328
    :cond_ba
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7330
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7331
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7332
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7333
    .local v2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7334
    goto/16 :goto_7

    .line 7308
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 7309
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 7310
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7312
    goto/16 :goto_7

    .line 7313
    :cond_bc
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7315
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7316
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7317
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7318
    goto/16 :goto_7

    .line 7293
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 7294
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 7295
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7297
    goto/16 :goto_7

    .line 7298
    :cond_be
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7300
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7301
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7302
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7303
    goto/16 :goto_7

    .line 7276
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 7277
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 7278
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7280
    goto/16 :goto_7

    .line 7281
    :cond_c0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7283
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7284
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7286
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7287
    .local v3, "m":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 7288
    goto/16 :goto_7

    .line 7260
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 7261
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 7262
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7264
    goto/16 :goto_7

    .line 7265
    :cond_c2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7267
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7268
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7270
    .restart local v2    # "n":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7271
    goto/16 :goto_7

    .line 7243
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 7244
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 7245
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7246
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7247
    goto/16 :goto_7

    .line 7248
    :cond_c4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7250
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7251
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7253
    .restart local v2    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7254
    .restart local v3    # "m":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 7255
    goto/16 :goto_7

    .line 7228
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 7229
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 7230
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7231
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7232
    goto/16 :goto_7

    .line 7233
    :cond_c6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7235
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7236
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7237
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7238
    goto/16 :goto_7

    .line 7213
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 7214
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 7215
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7217
    goto/16 :goto_7

    .line 7218
    :cond_c8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7220
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7221
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7222
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7223
    goto/16 :goto_7

    .line 7197
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 7198
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 7199
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7201
    goto/16 :goto_7

    .line 7202
    :cond_ca
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7204
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7205
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7207
    .local v2, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7208
    goto/16 :goto_7

    .line 7181
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 7182
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 7183
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7185
    goto/16 :goto_7

    .line 7186
    :cond_cc
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7188
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7189
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7190
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7191
    .local v2, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7192
    goto/16 :goto_7

    .line 7165
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 7166
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 7167
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7169
    goto/16 :goto_7

    .line 7170
    :cond_ce
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7172
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7173
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7175
    .local v2, "sne":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7176
    goto/16 :goto_7

    .line 7149
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sne":Ljava/lang/String;
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 7150
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 7151
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7153
    goto/16 :goto_7

    .line 7154
    :cond_d0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7156
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7157
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7159
    .local v2, "email":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7160
    goto/16 :goto_7

    .line 7133
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "email":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 7134
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 7135
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7136
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7137
    goto/16 :goto_7

    .line 7138
    :cond_d2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7140
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7141
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7143
    .local v2, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7144
    goto/16 :goto_7

    .line 7118
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 7119
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 7120
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7121
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7122
    goto/16 :goto_7

    .line 7123
    :cond_d4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7125
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7126
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7127
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7128
    goto/16 :goto_7

    .line 7102
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 7103
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 7104
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7106
    goto/16 :goto_7

    .line 7107
    :cond_d6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7109
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7110
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7111
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7112
    .local v2, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7113
    goto/16 :goto_7

    .line 7087
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;>;"
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 7088
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 7089
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7091
    goto/16 :goto_7

    .line 7092
    :cond_d8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7094
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7095
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7096
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7097
    goto/16 :goto_7

    .line 7070
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 7071
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 7072
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7074
    goto/16 :goto_7

    .line 7075
    :cond_da
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7077
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7078
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7079
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;-><init>()V

    .line 7080
    .local v2, "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7081
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;)V

    .line 7082
    goto/16 :goto_7

    .line 7054
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbMemStorage":Lvendor/mediatek/hardware/radio/V3_0/PhbMemStorageResponse;
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    .line 7055
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_db
    if-eq v1, v2, :cond_dc

    .line 7056
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7057
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7058
    goto/16 :goto_7

    .line 7059
    :cond_dc
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7061
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7062
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7063
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7064
    .local v2, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7065
    goto/16 :goto_7

    .line 7039
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    .line 7040
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dd
    if-eq v1, v2, :cond_de

    .line 7041
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7042
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7043
    goto/16 :goto_7

    .line 7044
    :cond_de
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7046
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7047
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7048
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7049
    goto/16 :goto_7

    .line 7023
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 7024
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 7025
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7027
    goto/16 :goto_7

    .line 7028
    :cond_e0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7030
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7031
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7033
    .local v2, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7034
    goto/16 :goto_7

    .line 7007
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 7008
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 7009
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7011
    goto/16 :goto_7

    .line 7012
    :cond_e2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7014
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7015
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7017
    .local v2, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7018
    goto/16 :goto_7

    .line 6992
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 6993
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 6994
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6996
    goto/16 :goto_7

    .line 6997
    :cond_e4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6999
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7000
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7001
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7002
    goto/16 :goto_7

    .line 6977
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 6978
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 6979
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6981
    goto/16 :goto_7

    .line 6982
    :cond_e6
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6984
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6985
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6986
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6987
    goto/16 :goto_7

    .line 6961
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 6962
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 6963
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6965
    goto/16 :goto_7

    .line 6966
    :cond_e8
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6968
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6969
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6971
    .local v2, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6972
    goto/16 :goto_7

    .line 6945
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 6946
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 6947
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6949
    goto/16 :goto_7

    .line 6950
    :cond_ea
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6952
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6953
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6954
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6955
    .local v2, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6956
    goto/16 :goto_7

    .line 6930
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;>;"
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 6931
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 6932
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6934
    goto/16 :goto_7

    .line 6935
    :cond_ec
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6937
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6938
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6939
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6940
    goto/16 :goto_7

    .line 6914
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 6915
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 6916
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6918
    goto/16 :goto_7

    .line 6919
    :cond_ee
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6921
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6922
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6924
    .local v2, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6925
    goto/16 :goto_7

    .line 6898
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 6899
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 6900
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6902
    goto/16 :goto_7

    .line 6903
    :cond_f0
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6905
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6906
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6908
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6909
    goto/16 :goto_7

    .line 6883
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 6884
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 6885
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6887
    goto/16 :goto_7

    .line 6888
    :cond_f2
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6890
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6891
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6892
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6893
    goto/16 :goto_7

    .line 6867
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 6868
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 6869
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6870
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6871
    goto/16 :goto_7

    .line 6872
    :cond_f4
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6874
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6875
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6877
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6878
    goto/16 :goto_7

    .line 6850
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 6851
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 6852
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6853
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6854
    goto/16 :goto_7

    .line 6855
    :cond_f6
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6857
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6858
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6859
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 6860
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6861
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 6862
    goto/16 :goto_7

    .line 6833
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    .line 6834
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 6835
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6837
    goto/16 :goto_7

    .line 6838
    :cond_f8
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6840
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6841
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6842
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 6843
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6844
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 6845
    goto/16 :goto_7

    .line 6816
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    .line 6817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 6818
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6820
    goto/16 :goto_7

    .line 6821
    :cond_fa
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6823
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6824
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6825
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 6826
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6827
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 6828
    goto/16 :goto_7

    .line 6800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 6801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 6802
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6804
    goto/16 :goto_7

    .line 6805
    :cond_fc
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6807
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6808
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6809
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6810
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6811
    goto/16 :goto_7

    .line 6785
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :pswitch_75
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fd

    move v1, v2

    nop

    .line 6786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 6787
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6789
    goto/16 :goto_7

    .line 6790
    :cond_fe
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6792
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6793
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6794
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6795
    goto/16 :goto_7

    .line 6770
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_76
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ff

    move v1, v2

    nop

    .line 6771
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ff
    if-eq v1, v2, :cond_100

    .line 6772
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6774
    goto/16 :goto_7

    .line 6775
    :cond_100
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6777
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6778
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6779
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6780
    goto/16 :goto_7

    .line 6753
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_77
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    move v1, v2

    nop

    .line 6754
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_101
    if-eq v1, v2, :cond_102

    .line 6755
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6757
    goto/16 :goto_7

    .line 6758
    :cond_102
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6760
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6761
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6762
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 6763
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6764
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 6765
    goto/16 :goto_7

    .line 6737
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :pswitch_78
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_103

    move v1, v2

    nop

    .line 6738
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_103
    if-eq v1, v2, :cond_104

    .line 6739
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6741
    goto/16 :goto_7

    .line 6742
    :cond_104
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6744
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6745
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6746
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6747
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6748
    goto/16 :goto_7

    .line 6722
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_79
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_105

    move v1, v2

    nop

    .line 6723
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_105
    if-eq v1, v2, :cond_106

    .line 6724
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6726
    goto/16 :goto_7

    .line 6727
    :cond_106
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6729
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6730
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6731
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6732
    goto/16 :goto_7

    .line 6705
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_107

    move v1, v2

    nop

    .line 6706
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_107
    if-eq v1, v2, :cond_108

    .line 6707
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6709
    goto/16 :goto_7

    .line 6710
    :cond_108
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6712
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6713
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6714
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 6715
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6716
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 6717
    goto/16 :goto_7

    .line 6690
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_7b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_109

    move v1, v2

    nop

    .line 6691
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_109
    if-eq v1, v2, :cond_10a

    .line 6692
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6694
    goto/16 :goto_7

    .line 6695
    :cond_10a
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6697
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6698
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6699
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6700
    goto/16 :goto_7

    .line 6675
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10b

    move v1, v2

    nop

    .line 6676
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10b
    if-eq v1, v2, :cond_10c

    .line 6677
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6679
    goto/16 :goto_7

    .line 6680
    :cond_10c
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6682
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6683
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6684
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6685
    goto/16 :goto_7

    .line 6660
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10d

    move v1, v2

    nop

    .line 6661
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10d
    if-eq v1, v2, :cond_10e

    .line 6662
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6663
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6664
    goto/16 :goto_7

    .line 6665
    :cond_10e
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6667
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6668
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6669
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6670
    goto/16 :goto_7

    .line 6645
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10f

    move v1, v2

    nop

    .line 6646
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10f
    if-eq v1, v2, :cond_110

    .line 6647
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6649
    goto/16 :goto_7

    .line 6650
    :cond_110
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6652
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6653
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6654
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6655
    goto/16 :goto_7

    .line 6631
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_111

    move v1, v2

    nop

    .line 6632
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_111
    if-eq v1, v2, :cond_112

    .line 6633
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6635
    goto/16 :goto_7

    .line 6636
    :cond_112
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6639
    .local v0, "serial":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 6640
    goto/16 :goto_7

    .line 6616
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_80
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_113

    move v1, v2

    nop

    .line 6617
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_113
    if-eq v1, v2, :cond_114

    .line 6618
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6619
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6620
    goto/16 :goto_7

    .line 6621
    :cond_114
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6623
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6624
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6625
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6626
    goto/16 :goto_7

    .line 6601
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_81
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_115

    move v1, v2

    nop

    .line 6602
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_115
    if-eq v1, v2, :cond_116

    .line 6603
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6605
    goto/16 :goto_7

    .line 6606
    :cond_116
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6608
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6609
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6610
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6611
    goto/16 :goto_7

    .line 6586
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_82
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_117

    move v1, v2

    nop

    .line 6587
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_117
    if-eq v1, v2, :cond_118

    .line 6588
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6590
    goto/16 :goto_7

    .line 6591
    :cond_118
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6593
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6594
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6595
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6596
    goto/16 :goto_7

    .line 6568
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_83
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_119

    move v1, v2

    nop

    .line 6569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_119
    if-eq v1, v2, :cond_11a

    .line 6570
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6572
    goto/16 :goto_7

    .line 6573
    :cond_11a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6575
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6576
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6578
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 6579
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6580
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 6581
    goto/16 :goto_7

    .line 6552
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_84
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11b

    move v1, v2

    nop

    .line 6553
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11b
    if-eq v1, v2, :cond_11c

    .line 6554
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6556
    goto/16 :goto_7

    .line 6557
    :cond_11c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6559
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6560
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6562
    .local v2, "numAllowed":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6563
    goto/16 :goto_7

    .line 6535
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "numAllowed":I
    :pswitch_85
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11d

    move v1, v2

    nop

    .line 6536
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11d
    if-eq v1, v2, :cond_11e

    .line 6537
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6539
    goto/16 :goto_7

    .line 6540
    :cond_11e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6542
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6543
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6544
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 6545
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6546
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 6547
    goto/16 :goto_7

    .line 6518
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :pswitch_86
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11f

    move v1, v2

    nop

    .line 6519
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11f
    if-eq v1, v2, :cond_120

    .line 6520
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6521
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6522
    goto/16 :goto_7

    .line 6523
    :cond_120
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6525
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6526
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6527
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 6528
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6529
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 6530
    goto/16 :goto_7

    .line 6501
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_87
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_121

    move v1, v2

    nop

    .line 6502
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_121
    if-eq v1, v2, :cond_122

    .line 6503
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6504
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6505
    goto/16 :goto_7

    .line 6506
    :cond_122
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6508
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6509
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6510
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6511
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6512
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6513
    goto/16 :goto_7

    .line 6484
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_88
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_123

    move v1, v2

    nop

    .line 6485
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_123
    if-eq v1, v2, :cond_124

    .line 6486
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6488
    goto/16 :goto_7

    .line 6489
    :cond_124
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6491
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6492
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6493
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6494
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6495
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6496
    goto/16 :goto_7

    .line 6467
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_89
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    move v1, v2

    nop

    .line 6468
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_125
    if-eq v1, v2, :cond_126

    .line 6469
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6471
    goto/16 :goto_7

    .line 6472
    :cond_126
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6474
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6475
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6476
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6477
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6478
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6479
    goto/16 :goto_7

    .line 6450
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_127

    move v1, v2

    nop

    .line 6451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_127
    if-eq v1, v2, :cond_128

    .line 6452
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6454
    goto/16 :goto_7

    .line 6455
    :cond_128
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6457
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6458
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6459
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6460
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6461
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6462
    goto/16 :goto_7

    .line 6435
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_8b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_129

    move v1, v2

    nop

    .line 6436
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_129
    if-eq v1, v2, :cond_12a

    .line 6437
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6438
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6439
    goto/16 :goto_7

    .line 6440
    :cond_12a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6442
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6443
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6444
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6445
    goto/16 :goto_7

    .line 6420
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12b

    move v1, v2

    nop

    .line 6421
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12b
    if-eq v1, v2, :cond_12c

    .line 6422
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6424
    goto/16 :goto_7

    .line 6425
    :cond_12c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6427
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6428
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6429
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6430
    goto/16 :goto_7

    .line 6403
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12d

    move v1, v2

    nop

    .line 6404
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12d
    if-eq v1, v2, :cond_12e

    .line 6405
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6407
    goto/16 :goto_7

    .line 6408
    :cond_12e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6410
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6411
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6412
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6413
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6414
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6415
    goto/16 :goto_7

    .line 6387
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_8e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12f

    move v1, v2

    nop

    .line 6388
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12f
    if-eq v1, v2, :cond_130

    .line 6389
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6391
    goto/16 :goto_7

    .line 6392
    :cond_130
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6394
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6395
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6396
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6397
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6398
    goto/16 :goto_7

    .line 6372
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_8f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_131

    move v1, v2

    nop

    .line 6373
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_131
    if-eq v1, v2, :cond_132

    .line 6374
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6376
    goto/16 :goto_7

    .line 6377
    :cond_132
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6379
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6380
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6381
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6382
    goto/16 :goto_7

    .line 6357
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_90
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_133

    move v1, v2

    nop

    .line 6358
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_133
    if-eq v1, v2, :cond_134

    .line 6359
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6361
    goto/16 :goto_7

    .line 6362
    :cond_134
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6364
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6365
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6366
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6367
    goto/16 :goto_7

    .line 6342
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_91
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_135

    move v1, v2

    nop

    .line 6343
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_135
    if-eq v1, v2, :cond_136

    .line 6344
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6346
    goto/16 :goto_7

    .line 6347
    :cond_136
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6349
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6350
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6351
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6352
    goto/16 :goto_7

    .line 6327
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_92
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_137

    move v1, v2

    nop

    .line 6328
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_137
    if-eq v1, v2, :cond_138

    .line 6329
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6330
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6331
    goto/16 :goto_7

    .line 6332
    :cond_138
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6334
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6335
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6336
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6337
    goto/16 :goto_7

    .line 6312
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_93
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_139

    move v1, v2

    nop

    .line 6313
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_139
    if-eq v1, v2, :cond_13a

    .line 6314
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6316
    goto/16 :goto_7

    .line 6317
    :cond_13a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6319
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6320
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6321
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6322
    goto/16 :goto_7

    .line 6296
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_94
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13b

    move v1, v2

    nop

    .line 6297
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13b
    if-eq v1, v2, :cond_13c

    .line 6298
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6300
    goto/16 :goto_7

    .line 6301
    :cond_13c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6303
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6304
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6306
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6307
    goto/16 :goto_7

    .line 6279
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_95
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13d

    move v1, v2

    nop

    .line 6280
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13d
    if-eq v1, v2, :cond_13e

    .line 6281
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6283
    goto/16 :goto_7

    .line 6284
    :cond_13e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6286
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6287
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6288
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6289
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6290
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6291
    goto/16 :goto_7

    .line 6264
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_96
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13f

    move v1, v2

    nop

    .line 6265
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13f
    if-eq v1, v2, :cond_140

    .line 6266
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6268
    goto/16 :goto_7

    .line 6269
    :cond_140
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6271
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6272
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6273
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6274
    goto/16 :goto_7

    .line 6247
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_97
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_141

    move v1, v2

    nop

    .line 6248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_141
    if-eq v1, v2, :cond_142

    .line 6249
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6251
    goto/16 :goto_7

    .line 6252
    :cond_142
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6254
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6255
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6257
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6258
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 6259
    goto/16 :goto_7

    .line 6230
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_98
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_143

    move v1, v2

    nop

    .line 6231
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_143
    if-eq v1, v2, :cond_144

    .line 6232
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6234
    goto/16 :goto_7

    .line 6235
    :cond_144
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6237
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6238
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6239
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6240
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6241
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6242
    goto/16 :goto_7

    .line 6213
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_99
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_145

    move v1, v2

    nop

    .line 6214
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_145
    if-eq v1, v2, :cond_146

    .line 6215
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6217
    goto/16 :goto_7

    .line 6218
    :cond_146
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6220
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6221
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6222
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6223
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6224
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6225
    goto/16 :goto_7

    .line 6196
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_9a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_147

    move v1, v2

    nop

    .line 6197
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_147
    if-eq v1, v2, :cond_148

    .line 6198
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6200
    goto/16 :goto_7

    .line 6201
    :cond_148
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6203
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6204
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6206
    .local v2, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6207
    .local v3, "ratFamily":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 6208
    goto/16 :goto_7

    .line 6181
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :pswitch_9b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_149

    move v1, v2

    nop

    .line 6182
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_149
    if-eq v1, v2, :cond_14a

    .line 6183
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6185
    goto/16 :goto_7

    .line 6186
    :cond_14a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6188
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6189
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6190
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6191
    goto/16 :goto_7

    .line 6166
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14b

    move v1, v2

    nop

    .line 6167
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14b
    if-eq v1, v2, :cond_14c

    .line 6168
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6170
    goto/16 :goto_7

    .line 6171
    :cond_14c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6173
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6174
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6175
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6176
    goto/16 :goto_7

    .line 6150
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14d

    move v1, v2

    nop

    .line 6151
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14d
    if-eq v1, v2, :cond_14e

    .line 6152
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6154
    goto/16 :goto_7

    .line 6155
    :cond_14e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6157
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6158
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6159
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6160
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6161
    goto/16 :goto_7

    .line 6134
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_9e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14f

    move v1, v2

    nop

    .line 6135
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14f
    if-eq v1, v2, :cond_150

    .line 6136
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6138
    goto/16 :goto_7

    .line 6139
    :cond_150
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6141
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6142
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6144
    .local v2, "rat":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6145
    goto/16 :goto_7

    .line 6117
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_9f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_151

    move v1, v2

    nop

    .line 6118
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_151
    if-eq v1, v2, :cond_152

    .line 6119
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6121
    goto/16 :goto_7

    .line 6122
    :cond_152
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6124
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6125
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6126
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6127
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6128
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6129
    goto/16 :goto_7

    .line 6102
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_a0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_153

    move v1, v2

    nop

    .line 6103
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_153
    if-eq v1, v2, :cond_154

    .line 6104
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6106
    goto/16 :goto_7

    .line 6107
    :cond_154
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6109
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6110
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6111
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6112
    goto/16 :goto_7

    .line 6086
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_155

    move v1, v2

    nop

    .line 6087
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_155
    if-eq v1, v2, :cond_156

    .line 6088
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6089
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6090
    goto/16 :goto_7

    .line 6091
    :cond_156
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6093
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6094
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6095
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6096
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6097
    goto/16 :goto_7

    .line 6070
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_a2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_157

    move v1, v2

    nop

    .line 6071
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_157
    if-eq v1, v2, :cond_158

    .line 6072
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6074
    goto/16 :goto_7

    .line 6075
    :cond_158
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6077
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6078
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6079
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6080
    .local v2, "source":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6081
    goto/16 :goto_7

    .line 6055
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "source":I
    :pswitch_a3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_159

    move v1, v2

    nop

    .line 6056
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_159
    if-eq v1, v2, :cond_15a

    .line 6057
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6059
    goto/16 :goto_7

    .line 6060
    :cond_15a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6062
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6063
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6064
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6065
    goto/16 :goto_7

    .line 6040
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15b

    move v1, v2

    nop

    .line 6041
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15b
    if-eq v1, v2, :cond_15c

    .line 6042
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6044
    goto/16 :goto_7

    .line 6045
    :cond_15c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6047
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6048
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6049
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6050
    goto/16 :goto_7

    .line 6025
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15d

    move v1, v2

    nop

    .line 6026
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15d
    if-eq v1, v2, :cond_15e

    .line 6027
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6029
    goto/16 :goto_7

    .line 6030
    :cond_15e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6034
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6035
    goto/16 :goto_7

    .line 6009
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15f

    move v1, v2

    nop

    .line 6010
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15f
    if-eq v1, v2, :cond_160

    .line 6011
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6013
    goto/16 :goto_7

    .line 6014
    :cond_160
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6016
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6017
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6019
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6020
    goto/16 :goto_7

    .line 5994
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_a7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_161

    move v1, v2

    nop

    .line 5995
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_161
    if-eq v1, v2, :cond_162

    .line 5996
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5997
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5998
    goto/16 :goto_7

    .line 5999
    :cond_162
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6001
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6002
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6003
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6004
    goto/16 :goto_7

    .line 5975
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_163

    move v1, v2

    nop

    :cond_163
    move v6, v1

    .line 5976
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_164

    .line 5977
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5979
    goto/16 :goto_7

    .line 5980
    :cond_164
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5982
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v7, v0

    .line 5983
    .local v7, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v7, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5985
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5986
    .local v12, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5987
    .local v13, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5988
    .local v14, "meid":Ljava/lang/String;
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5989
    goto/16 :goto_7

    .line 5960
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v12    # "imeisv":Ljava/lang/String;
    .end local v13    # "esn":Ljava/lang/String;
    .end local v14    # "meid":Ljava/lang/String;
    :pswitch_a9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_165

    move v1, v2

    nop

    .line 5961
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_165
    if-eq v1, v2, :cond_166

    .line 5962
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5964
    goto/16 :goto_7

    .line 5965
    :cond_166
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5967
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5968
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5969
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5970
    goto/16 :goto_7

    .line 5944
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_aa
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_167

    move v1, v2

    nop

    .line 5945
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_167
    if-eq v1, v2, :cond_168

    .line 5946
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5947
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5948
    goto/16 :goto_7

    .line 5949
    :cond_168
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5951
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5952
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5954
    .local v2, "index":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5955
    goto/16 :goto_7

    .line 5924
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_ab
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_169

    move v1, v2

    nop

    :cond_169
    move v7, v1

    .line 5925
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_16a

    .line 5926
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5928
    goto/16 :goto_7

    .line 5929
    :cond_16a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5931
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v8, v0

    .line 5932
    .local v8, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v8, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5934
    .local v12, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5935
    .local v13, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5936
    .local v14, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 5937
    .local v15, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5938
    .local v16, "prl":Ljava/lang/String;
    move-object v0, v9

    move-object v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5939
    goto/16 :goto_7

    .line 5909
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v12    # "mdn":Ljava/lang/String;
    .end local v13    # "hSid":Ljava/lang/String;
    .end local v14    # "hNid":Ljava/lang/String;
    .end local v15    # "min":Ljava/lang/String;
    .end local v16    # "prl":Ljava/lang/String;
    :pswitch_ac
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16b

    move v1, v2

    nop

    .line 5910
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16b
    if-eq v1, v2, :cond_16c

    .line 5911
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5913
    goto/16 :goto_7

    .line 5914
    :cond_16c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5917
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5918
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5919
    goto/16 :goto_7

    .line 5894
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ad
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16d

    move v1, v2

    nop

    .line 5895
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16d
    if-eq v1, v2, :cond_16e

    .line 5896
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5898
    goto/16 :goto_7

    .line 5899
    :cond_16e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5901
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5902
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5903
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5904
    goto/16 :goto_7

    .line 5878
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ae
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16f

    move v1, v2

    nop

    .line 5879
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16f
    if-eq v1, v2, :cond_170

    .line 5880
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5881
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5882
    goto/16 :goto_7

    .line 5883
    :cond_170
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5885
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5886
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5887
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5888
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5889
    goto/16 :goto_7

    .line 5863
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_af
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_171

    move v1, v2

    nop

    .line 5864
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_171
    if-eq v1, v2, :cond_172

    .line 5865
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5866
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5867
    goto/16 :goto_7

    .line 5868
    :cond_172
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5870
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5871
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5872
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5873
    goto/16 :goto_7

    .line 5848
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_173

    move v1, v2

    nop

    .line 5849
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_173
    if-eq v1, v2, :cond_174

    .line 5850
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5851
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5852
    goto/16 :goto_7

    .line 5853
    :cond_174
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5855
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5856
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5857
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5858
    goto/16 :goto_7

    .line 5832
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_175

    move v1, v2

    nop

    .line 5833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_175
    if-eq v1, v2, :cond_176

    .line 5834
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5836
    goto/16 :goto_7

    .line 5837
    :cond_176
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5839
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5840
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5841
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5842
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5843
    goto/16 :goto_7

    .line 5817
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_b2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_177

    move v1, v2

    nop

    .line 5818
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_177
    if-eq v1, v2, :cond_178

    .line 5819
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5821
    goto/16 :goto_7

    .line 5822
    :cond_178
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5824
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5825
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5826
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5827
    goto/16 :goto_7

    .line 5800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_179

    move v1, v2

    nop

    .line 5801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_179
    if-eq v1, v2, :cond_17a

    .line 5802
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5804
    goto/16 :goto_7

    .line 5805
    :cond_17a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5807
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5808
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5809
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5810
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5811
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5812
    goto/16 :goto_7

    .line 5785
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_b4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17b

    move v1, v2

    nop

    .line 5786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17b
    if-eq v1, v2, :cond_17c

    .line 5787
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5789
    goto/16 :goto_7

    .line 5790
    :cond_17c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5792
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5793
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5794
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5795
    goto/16 :goto_7

    .line 5770
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17d

    move v1, v2

    nop

    .line 5771
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17d
    if-eq v1, v2, :cond_17e

    .line 5772
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5774
    goto/16 :goto_7

    .line 5775
    :cond_17e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5777
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5778
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5779
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5780
    goto/16 :goto_7

    .line 5754
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17f

    move v1, v2

    nop

    .line 5755
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17f
    if-eq v1, v2, :cond_180

    .line 5756
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5758
    goto/16 :goto_7

    .line 5759
    :cond_180
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5761
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5762
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5764
    .local v2, "enable":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5765
    goto/16 :goto_7

    .line 5739
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_b7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_181

    move v1, v2

    nop

    .line 5740
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_181
    if-eq v1, v2, :cond_182

    .line 5741
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5743
    goto/16 :goto_7

    .line 5744
    :cond_182
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5746
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5747
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5748
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5749
    goto/16 :goto_7

    .line 5723
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_183

    move v1, v2

    nop

    .line 5724
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_183
    if-eq v1, v2, :cond_184

    .line 5725
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5727
    goto/16 :goto_7

    .line 5728
    :cond_184
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5730
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5731
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5733
    .local v2, "mode":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5734
    goto/16 :goto_7

    .line 5708
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_b9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_185

    move v1, v2

    nop

    .line 5709
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_185
    if-eq v1, v2, :cond_186

    .line 5710
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5712
    goto/16 :goto_7

    .line 5713
    :cond_186
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5715
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5716
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5717
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5718
    goto/16 :goto_7

    .line 5692
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ba
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_187

    move v1, v2

    nop

    .line 5693
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_187
    if-eq v1, v2, :cond_188

    .line 5694
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5695
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5696
    goto/16 :goto_7

    .line 5697
    :cond_188
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5699
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5700
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5702
    .local v2, "type":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5703
    goto/16 :goto_7

    .line 5677
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_bb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_189

    move v1, v2

    nop

    .line 5678
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_189
    if-eq v1, v2, :cond_18a

    .line 5679
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5681
    goto/16 :goto_7

    .line 5682
    :cond_18a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5684
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5685
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5686
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5687
    goto/16 :goto_7

    .line 5662
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18b

    move v1, v2

    nop

    .line 5663
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18b
    if-eq v1, v2, :cond_18c

    .line 5664
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5666
    goto/16 :goto_7

    .line 5667
    :cond_18c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5669
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5670
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5671
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5672
    goto/16 :goto_7

    .line 5647
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18d

    move v1, v2

    nop

    .line 5648
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18d
    if-eq v1, v2, :cond_18e

    .line 5649
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5651
    goto/16 :goto_7

    .line 5652
    :cond_18e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5654
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5655
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5656
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5657
    goto/16 :goto_7

    .line 5631
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_be
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18f

    move v1, v2

    nop

    .line 5632
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18f
    if-eq v1, v2, :cond_190

    .line 5633
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5635
    goto/16 :goto_7

    .line 5636
    :cond_190
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5638
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5639
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5640
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5641
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5642
    goto/16 :goto_7

    .line 5615
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :pswitch_bf
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_191

    move v1, v2

    nop

    .line 5616
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_191
    if-eq v1, v2, :cond_192

    .line 5617
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5619
    goto/16 :goto_7

    .line 5620
    :cond_192
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5622
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5623
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5625
    .local v2, "nwType":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5626
    goto/16 :goto_7

    .line 5600
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_c0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_193

    move v1, v2

    nop

    .line 5601
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_193
    if-eq v1, v2, :cond_194

    .line 5602
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5604
    goto/16 :goto_7

    .line 5605
    :cond_194
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5607
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5608
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5609
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5610
    goto/16 :goto_7

    .line 5585
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_195

    move v1, v2

    nop

    .line 5586
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_195
    if-eq v1, v2, :cond_196

    .line 5587
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5589
    goto/16 :goto_7

    .line 5590
    :cond_196
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5592
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5593
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5594
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5595
    goto/16 :goto_7

    .line 5570
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_197

    move v1, v2

    nop

    .line 5571
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_197
    if-eq v1, v2, :cond_198

    .line 5572
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5574
    goto/16 :goto_7

    .line 5575
    :cond_198
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5577
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5578
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5579
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5580
    goto/16 :goto_7

    .line 5555
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_199

    move v1, v2

    nop

    .line 5556
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_199
    if-eq v1, v2, :cond_19a

    .line 5557
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5559
    goto/16 :goto_7

    .line 5560
    :cond_19a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5562
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5563
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5564
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5565
    goto/16 :goto_7

    .line 5539
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19b

    move v1, v2

    nop

    .line 5540
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19b
    if-eq v1, v2, :cond_19c

    .line 5541
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5543
    goto/16 :goto_7

    .line 5544
    :cond_19c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5546
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5547
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5549
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5550
    goto/16 :goto_7

    .line 5523
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_c5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19d

    move v1, v2

    nop

    .line 5524
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19d
    if-eq v1, v2, :cond_19e

    .line 5525
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5527
    goto/16 :goto_7

    .line 5528
    :cond_19e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5530
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5531
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5533
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5534
    goto/16 :goto_7

    .line 5508
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19f

    move v1, v2

    nop

    .line 5509
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19f
    if-eq v1, v2, :cond_1a0

    .line 5510
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5511
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5512
    goto/16 :goto_7

    .line 5513
    :cond_1a0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5515
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5516
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5517
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5518
    goto/16 :goto_7

    .line 5493
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a1

    move v1, v2

    nop

    .line 5494
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a1
    if-eq v1, v2, :cond_1a2

    .line 5495
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5497
    goto/16 :goto_7

    .line 5498
    :cond_1a2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5500
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5501
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5502
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5503
    goto/16 :goto_7

    .line 5477
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a3

    move v1, v2

    nop

    .line 5478
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a3
    if-eq v1, v2, :cond_1a4

    .line 5479
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5481
    goto/16 :goto_7

    .line 5482
    :cond_1a4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5484
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5485
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5487
    .local v2, "index":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5488
    goto/16 :goto_7

    .line 5462
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_c9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a5

    move v1, v2

    nop

    .line 5463
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a5
    if-eq v1, v2, :cond_1a6

    .line 5464
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5466
    goto/16 :goto_7

    .line 5467
    :cond_1a6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5469
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5470
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5471
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5472
    goto/16 :goto_7

    .line 5446
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ca
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a7

    move v1, v2

    nop

    .line 5447
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a7
    if-eq v1, v2, :cond_1a8

    .line 5448
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5450
    goto/16 :goto_7

    .line 5451
    :cond_1a8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5453
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5454
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5455
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5456
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5457
    goto/16 :goto_7

    .line 5430
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_cb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a9

    move v1, v2

    nop

    .line 5431
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a9
    if-eq v1, v2, :cond_1aa

    .line 5432
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5434
    goto/16 :goto_7

    .line 5435
    :cond_1aa
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5437
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5438
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5440
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5441
    goto/16 :goto_7

    .line 5414
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_cc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ab

    move v1, v2

    nop

    .line 5415
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ab
    if-eq v1, v2, :cond_1ac

    .line 5416
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5418
    goto/16 :goto_7

    .line 5419
    :cond_1ac
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5421
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5422
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5424
    .local v2, "enable":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5425
    goto/16 :goto_7

    .line 5399
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_cd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ad

    move v1, v2

    nop

    .line 5400
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ad
    if-eq v1, v2, :cond_1ae

    .line 5401
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5403
    goto/16 :goto_7

    .line 5404
    :cond_1ae
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5406
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5407
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5408
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5409
    goto/16 :goto_7

    .line 5384
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ce
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1af

    move v1, v2

    nop

    .line 5385
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1af
    if-eq v1, v2, :cond_1b0

    .line 5386
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5388
    goto/16 :goto_7

    .line 5389
    :cond_1b0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5391
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5392
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5393
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5394
    goto/16 :goto_7

    .line 5368
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_cf
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b1

    move v1, v2

    nop

    .line 5369
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b1
    if-eq v1, v2, :cond_1b2

    .line 5370
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5372
    goto/16 :goto_7

    .line 5373
    :cond_1b2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5375
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5376
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5378
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5379
    goto/16 :goto_7

    .line 5353
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_d0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b3

    move v1, v2

    nop

    .line 5354
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b3
    if-eq v1, v2, :cond_1b4

    .line 5355
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5356
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5357
    goto/16 :goto_7

    .line 5358
    :cond_1b4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5360
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5361
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5362
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5363
    goto/16 :goto_7

    .line 5338
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b5

    move v1, v2

    nop

    .line 5339
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b5
    if-eq v1, v2, :cond_1b6

    .line 5340
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5342
    goto/16 :goto_7

    .line 5343
    :cond_1b6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5345
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5346
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5347
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5348
    goto/16 :goto_7

    .line 5322
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b7

    move v1, v2

    nop

    .line 5323
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b7
    if-eq v1, v2, :cond_1b8

    .line 5324
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5326
    goto/16 :goto_7

    .line 5327
    :cond_1b8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5329
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5330
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5331
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5332
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5333
    goto/16 :goto_7

    .line 5307
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :pswitch_d3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b9

    move v1, v2

    nop

    .line 5308
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b9
    if-eq v1, v2, :cond_1ba

    .line 5309
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5311
    goto/16 :goto_7

    .line 5312
    :cond_1ba
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5314
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5315
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5316
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5317
    goto/16 :goto_7

    .line 5292
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bb

    move v1, v2

    nop

    .line 5293
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bb
    if-eq v1, v2, :cond_1bc

    .line 5294
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5296
    goto/16 :goto_7

    .line 5297
    :cond_1bc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5299
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5300
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5301
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5302
    goto/16 :goto_7

    .line 5276
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bd

    move v1, v2

    nop

    .line 5277
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bd
    if-eq v1, v2, :cond_1be

    .line 5278
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5280
    goto/16 :goto_7

    .line 5281
    :cond_1be
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5283
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5284
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5286
    .local v2, "manual":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5287
    goto/16 :goto_7

    .line 5261
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "manual":Z
    :pswitch_d6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bf

    move v1, v2

    nop

    .line 5262
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bf
    if-eq v1, v2, :cond_1c0

    .line 5263
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5264
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5265
    goto/16 :goto_7

    .line 5266
    :cond_1c0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5268
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5269
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5270
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5271
    goto/16 :goto_7

    .line 5245
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c1

    move v1, v2

    nop

    .line 5246
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c1
    if-eq v1, v2, :cond_1c2

    .line 5247
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5249
    goto/16 :goto_7

    .line 5250
    :cond_1c2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5252
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5253
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5255
    .local v2, "retry":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5256
    goto/16 :goto_7

    .line 5229
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "retry":I
    :pswitch_d8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c3

    move v1, v2

    nop

    .line 5230
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c3
    if-eq v1, v2, :cond_1c4

    .line 5231
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5233
    goto/16 :goto_7

    .line 5234
    :cond_1c4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5236
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5237
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5239
    .local v2, "response":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5240
    goto/16 :goto_7

    .line 5214
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":I
    :pswitch_d9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c5

    move v1, v2

    nop

    .line 5215
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c5
    if-eq v1, v2, :cond_1c6

    .line 5216
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5217
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5218
    goto/16 :goto_7

    .line 5219
    :cond_1c6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5221
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5222
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5223
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5224
    goto/16 :goto_7

    .line 5199
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_da
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c7

    move v1, v2

    nop

    .line 5200
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c7
    if-eq v1, v2, :cond_1c8

    .line 5201
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5203
    goto/16 :goto_7

    .line 5204
    :cond_1c8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5206
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5207
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5208
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5209
    goto/16 :goto_7

    .line 5184
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_db
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c9

    move v1, v2

    nop

    .line 5185
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c9
    if-eq v1, v2, :cond_1ca

    .line 5186
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5188
    goto/16 :goto_7

    .line 5189
    :cond_1ca
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5191
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5192
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5193
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5194
    goto/16 :goto_7

    .line 5169
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_dc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cb

    move v1, v2

    nop

    .line 5170
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cb
    if-eq v1, v2, :cond_1cc

    .line 5171
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5173
    goto/16 :goto_7

    .line 5174
    :cond_1cc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5176
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5177
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5178
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5179
    goto/16 :goto_7

    .line 5152
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_dd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cd

    move v1, v2

    nop

    .line 5153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cd
    if-eq v1, v2, :cond_1ce

    .line 5154
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5156
    goto/16 :goto_7

    .line 5157
    :cond_1ce
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5159
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5160
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5162
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5163
    .local v3, "serviceClass":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 5164
    goto/16 :goto_7

    .line 5137
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_de
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cf

    move v1, v2

    nop

    .line 5138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cf
    if-eq v1, v2, :cond_1d0

    .line 5139
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5141
    goto/16 :goto_7

    .line 5142
    :cond_1d0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5144
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5145
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5146
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5147
    goto/16 :goto_7

    .line 5121
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_df
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d1

    move v1, v2

    nop

    .line 5122
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d1
    if-eq v1, v2, :cond_1d2

    .line 5123
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5125
    goto/16 :goto_7

    .line 5126
    :cond_1d2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5128
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5129
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5130
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5131
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5132
    goto/16 :goto_7

    .line 5106
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :pswitch_e0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d3

    move v1, v2

    nop

    .line 5107
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d3
    if-eq v1, v2, :cond_1d4

    .line 5108
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5110
    goto/16 :goto_7

    .line 5111
    :cond_1d4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5113
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5114
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5115
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5116
    goto/16 :goto_7

    .line 5089
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d5

    move v1, v2

    nop

    .line 5090
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d5
    if-eq v1, v2, :cond_1d6

    .line 5091
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5093
    goto/16 :goto_7

    .line 5094
    :cond_1d6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5096
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5097
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5099
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5100
    .local v3, "m":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 5101
    goto/16 :goto_7

    .line 5074
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_e2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d7

    move v1, v2

    nop

    .line 5075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d7
    if-eq v1, v2, :cond_1d8

    .line 5076
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5078
    goto/16 :goto_7

    .line 5079
    :cond_1d8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5081
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5082
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5083
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5084
    goto/16 :goto_7

    .line 5059
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d9

    move v1, v2

    nop

    .line 5060
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d9
    if-eq v1, v2, :cond_1da

    .line 5061
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5063
    goto/16 :goto_7

    .line 5064
    :cond_1da
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5066
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5067
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5068
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5069
    goto/16 :goto_7

    .line 5042
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1db

    move v1, v2

    nop

    .line 5043
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1db
    if-eq v1, v2, :cond_1dc

    .line 5044
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5046
    goto/16 :goto_7

    .line 5047
    :cond_1dc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5049
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5050
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5051
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5052
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5053
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5054
    goto/16 :goto_7

    .line 5025
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_e5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1dd

    move v1, v2

    nop

    .line 5026
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1dd
    if-eq v1, v2, :cond_1de

    .line 5027
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5029
    goto/16 :goto_7

    .line 5030
    :cond_1de
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5033
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5034
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 5035
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5036
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 5037
    goto/16 :goto_7

    .line 5008
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :pswitch_e6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1df

    move v1, v2

    nop

    .line 5009
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1df
    if-eq v1, v2, :cond_1e0

    .line 5010
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5012
    goto/16 :goto_7

    .line 5013
    :cond_1e0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5015
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5016
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5017
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5018
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5019
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5020
    goto/16 :goto_7

    .line 4991
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e1

    move v1, v2

    nop

    .line 4992
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e1
    if-eq v1, v2, :cond_1e2

    .line 4993
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4995
    goto/16 :goto_7

    .line 4996
    :cond_1e2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4998
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4999
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5000
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5001
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5002
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5003
    goto/16 :goto_7

    .line 4976
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_e8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e3

    move v1, v2

    nop

    .line 4977
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e3
    if-eq v1, v2, :cond_1e4

    .line 4978
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4980
    goto/16 :goto_7

    .line 4981
    :cond_1e4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4983
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4984
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4985
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4986
    goto/16 :goto_7

    .line 4961
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e5

    move v1, v2

    nop

    .line 4962
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e5
    if-eq v1, v2, :cond_1e6

    .line 4963
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4965
    goto/16 :goto_7

    .line 4966
    :cond_1e6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4968
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4969
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4970
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4971
    goto/16 :goto_7

    .line 4943
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ea
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e7

    move v1, v2

    nop

    .line 4944
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e7
    if-eq v1, v2, :cond_1e8

    .line 4945
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4947
    goto/16 :goto_7

    .line 4948
    :cond_1e8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4950
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4951
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4953
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4954
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4955
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4956
    goto/16 :goto_7

    .line 4926
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :pswitch_eb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e9

    move v1, v2

    nop

    .line 4927
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e9
    if-eq v1, v2, :cond_1ea

    .line 4928
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4929
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4930
    goto/16 :goto_7

    .line 4931
    :cond_1ea
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4933
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4934
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4935
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 4936
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4937
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 4938
    goto/16 :goto_7

    .line 4909
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :pswitch_ec
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1eb

    move v1, v2

    nop

    .line 4910
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1eb
    if-eq v1, v2, :cond_1ec

    .line 4911
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4913
    goto/16 :goto_7

    .line 4914
    :cond_1ec
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4917
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4918
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 4919
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4920
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 4921
    goto/16 :goto_7

    .line 4892
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :pswitch_ed
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ed

    move v1, v2

    nop

    .line 4893
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ed
    if-eq v1, v2, :cond_1ee

    .line 4894
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4896
    goto/16 :goto_7

    .line 4897
    :cond_1ee
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4899
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4900
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4901
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 4902
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4903
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 4904
    goto/16 :goto_7

    .line 4875
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_ee
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ef

    move v1, v2

    nop

    .line 4876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ef
    if-eq v1, v2, :cond_1f0

    .line 4877
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4879
    goto/16 :goto_7

    .line 4880
    :cond_1f0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4882
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4883
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4884
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 4885
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4886
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 4887
    goto/16 :goto_7

    .line 4860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :pswitch_ef
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f1

    move v1, v2

    nop

    .line 4861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f1
    if-eq v1, v2, :cond_1f2

    .line 4862
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4864
    goto/16 :goto_7

    .line 4865
    :cond_1f2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4867
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4868
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4869
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4870
    goto/16 :goto_7

    .line 4845
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f3

    move v1, v2

    nop

    .line 4846
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f3
    if-eq v1, v2, :cond_1f4

    .line 4847
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4849
    goto/16 :goto_7

    .line 4850
    :cond_1f4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4852
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4853
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4854
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4855
    goto/16 :goto_7

    .line 4830
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f5

    move v1, v2

    nop

    .line 4831
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f5
    if-eq v1, v2, :cond_1f6

    .line 4832
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4834
    goto/16 :goto_7

    .line 4835
    :cond_1f6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4837
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4838
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4839
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4840
    goto/16 :goto_7

    .line 4815
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f7

    move v1, v2

    nop

    .line 4816
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f7
    if-eq v1, v2, :cond_1f8

    .line 4817
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4819
    goto/16 :goto_7

    .line 4820
    :cond_1f8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4822
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4823
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4824
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4825
    goto/16 :goto_7

    .line 4800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f9

    move v1, v2

    nop

    .line 4801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f9
    if-eq v1, v2, :cond_1fa

    .line 4802
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4804
    goto/16 :goto_7

    .line 4805
    :cond_1fa
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4807
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4808
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4809
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4810
    goto/16 :goto_7

    .line 4785
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fb

    move v1, v2

    nop

    .line 4786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fb
    if-eq v1, v2, :cond_1fc

    .line 4787
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4789
    goto/16 :goto_7

    .line 4790
    :cond_1fc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4792
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4793
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4794
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4795
    goto/16 :goto_7

    .line 4769
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fd

    move v1, v2

    nop

    .line 4770
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fd
    if-eq v1, v2, :cond_1fe

    .line 4771
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4773
    goto/16 :goto_7

    .line 4774
    :cond_1fe
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4776
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4777
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4779
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4780
    goto/16 :goto_7

    .line 4754
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsi":Ljava/lang/String;
    :pswitch_f6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ff

    move v1, v2

    nop

    .line 4755
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ff
    if-eq v1, v2, :cond_200

    .line 4756
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4758
    goto/16 :goto_7

    .line 4759
    :cond_200
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4761
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4762
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4763
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4764
    goto/16 :goto_7

    .line 4738
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_201

    move v1, v2

    nop

    .line 4739
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_201
    if-eq v1, v2, :cond_202

    .line 4740
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4741
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4742
    goto/16 :goto_7

    .line 4743
    :cond_202
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4745
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4746
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4747
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4748
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4749
    goto/16 :goto_7

    .line 4722
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :pswitch_f8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_203

    move v1, v2

    nop

    .line 4723
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_203
    if-eq v1, v2, :cond_204

    .line 4724
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4726
    goto/16 :goto_7

    .line 4727
    :cond_204
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4729
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4730
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4732
    .local v2, "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4733
    goto/16 :goto_7

    .line 4706
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_f9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_205

    move v1, v2

    nop

    .line 4707
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_205
    if-eq v1, v2, :cond_206

    .line 4708
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4710
    goto/16 :goto_7

    .line 4711
    :cond_206
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4713
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4714
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4716
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4717
    goto/16 :goto_7

    .line 4690
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fa
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_207

    move v1, v2

    nop

    .line 4691
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_207
    if-eq v1, v2, :cond_208

    .line 4692
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4694
    goto/16 :goto_7

    .line 4695
    :cond_208
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4697
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4698
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4700
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4701
    goto/16 :goto_7

    .line 4674
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_209

    move v1, v2

    nop

    .line 4675
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_209
    if-eq v1, v2, :cond_20a

    .line 4676
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4678
    goto/16 :goto_7

    .line 4679
    :cond_20a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4681
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4682
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4684
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4685
    goto/16 :goto_7

    .line 4658
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20b

    move v1, v2

    nop

    .line 4659
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20b
    if-eq v1, v2, :cond_20c

    .line 4660
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4662
    goto/16 :goto_7

    .line 4663
    :cond_20c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4665
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4666
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4668
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4669
    goto/16 :goto_7

    .line 4642
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20d

    move v1, v2

    nop

    .line 4643
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20d
    if-eq v1, v2, :cond_20e

    .line 4644
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4645
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4646
    goto :goto_7

    .line 4647
    :cond_20e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4649
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4650
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4652
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4653
    goto :goto_7

    .line 4626
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_fe
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20f

    move v1, v2

    nop

    .line 4627
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20f
    if-eq v1, v2, :cond_210

    .line 4628
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4629
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4630
    goto :goto_7

    .line 4631
    :cond_210
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4633
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4634
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4636
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4637
    goto :goto_7

    .line 4609
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_ff
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_211

    move v1, v2

    nop

    .line 4610
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_211
    if-eq v1, v2, :cond_212

    .line 4611
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4612
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4613
    goto :goto_7

    .line 4614
    :cond_212
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4616
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4617
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4618
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 4619
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4620
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 4621
    nop

    .line 8775
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :cond_213
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 4562
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4588
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4589
    return-object p0

    .line 4591
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4595
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 4596
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 4553
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 4582
    const/4 v0, 0x1

    return v0
.end method
