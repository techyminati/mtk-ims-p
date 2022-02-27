.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4350
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 4353
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 4401
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4402
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4403
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4404
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4405
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

    .line 4374
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

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

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x49t
        -0x20t
        0x3dt
        0x30t
        -0x20t
        -0x65t
        0x57t
        -0x60t
        -0x5at
        0x77t
        -0x51t
        -0x28t
        -0x22t
        0x41t
        0xat
        -0x4at
        -0x57t
        -0x5et
        0x38t
        0x1ft
        -0x5ft
        0x46t
        -0x39t
        -0x4ct
        -0x74t
        0x46t
        -0x63t
        0xbt
        0x4at
        0x3ct
        0x36t
        0x45t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4358
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    const-string v2, "android.hardware.radio@1.2::IRadioResponse"

    const-string v3, "android.hardware.radio@1.1::IRadioResponse"

    const-string v4, "android.hardware.radio@1.0::IRadioResponse"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 4368
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4390
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 4410
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4411
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 4439
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 7757
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 7758
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_1a9

    .line 7759
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7761
    goto/16 :goto_7

    .line 7744
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 7745
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 7746
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7748
    goto/16 :goto_7

    .line 7749
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7751
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 7752
    goto/16 :goto_7

    .line 7728
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 7729
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 7730
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7732
    goto/16 :goto_7

    .line 7733
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7735
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 7736
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7737
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 7738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7739
    goto/16 :goto_7

    .line 7713
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 7714
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 7715
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7717
    goto/16 :goto_7

    .line 7718
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7720
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->ping()V

    .line 7721
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7723
    goto/16 :goto_7

    .line 7703
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 7704
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_1a9

    .line 7705
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7707
    goto/16 :goto_7

    .line 7690
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 7691
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 7692
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7694
    goto/16 :goto_7

    .line 7695
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7697
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 7698
    goto/16 :goto_7

    .line 7657
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 7658
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 7659
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7661
    goto/16 :goto_7

    .line 7662
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7664
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 7665
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7667
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 7669
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7670
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 7671
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 7672
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 7673
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 7675
    mul-int/lit8 v6, v1, 0x20

    int-to-long v10, v6

    .line 7676
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 7677
    nop

    .line 7673
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7680
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 7682
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 7684
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7685
    goto/16 :goto_7

    .line 7641
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 7642
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 7643
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7645
    goto/16 :goto_7

    .line 7646
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7648
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 7649
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7650
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 7651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7652
    goto/16 :goto_7

    .line 7627
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 7628
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 7629
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7631
    goto/16 :goto_7

    .line 7632
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7634
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7636
    goto/16 :goto_7

    .line 7611
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 7612
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 7613
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7615
    goto/16 :goto_7

    .line 7616
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7618
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 7619
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7620
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 7621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7622
    goto/16 :goto_7

    .line 7595
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 7596
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 7597
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7599
    goto/16 :goto_7

    .line 7600
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7602
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7603
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7605
    .local v2, "value":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getImsCfgResourceCapValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7606
    goto/16 :goto_7

    .line 7580
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 7581
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 7582
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7584
    goto/16 :goto_7

    .line 7585
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7587
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7588
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7589
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsCfgResourceCapValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7590
    goto/16 :goto_7

    .line 7564
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 7565
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 7566
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7568
    goto/16 :goto_7

    .line 7569
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7571
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7572
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7574
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7575
    goto/16 :goto_7

    .line 7549
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 7550
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 7551
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7552
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7553
    goto/16 :goto_7

    .line 7554
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7556
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7557
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7558
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsCfgProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7559
    goto/16 :goto_7

    .line 7533
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 7534
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 7535
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7537
    goto/16 :goto_7

    .line 7538
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7540
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7541
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7543
    .local v2, "value":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7544
    goto/16 :goto_7

    .line 7518
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 7519
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 7520
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7521
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7522
    goto/16 :goto_7

    .line 7523
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7525
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7526
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7527
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsCfgFeatureValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7528
    goto/16 :goto_7

    .line 7503
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 7504
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 7505
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7507
    goto/16 :goto_7

    .line 7508
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7510
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7511
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7512
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsBearerNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7513
    goto/16 :goto_7

    .line 7488
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 7489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 7490
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7492
    goto/16 :goto_7

    .line 7493
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7495
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7496
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7497
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7498
    goto/16 :goto_7

    .line 7473
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 7474
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 7475
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7477
    goto/16 :goto_7

    .line 7478
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7480
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7481
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7482
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7483
    goto/16 :goto_7

    .line 7456
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 7457
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 7458
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7460
    goto/16 :goto_7

    .line 7461
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7463
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7464
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7465
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 7466
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7467
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendImsSmsExResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 7468
    goto/16 :goto_7

    .line 7440
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 7441
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 7442
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7443
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7444
    goto/16 :goto_7

    .line 7445
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7447
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7448
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7450
    .local v2, "results":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setModemImsCfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 7451
    goto/16 :goto_7

    .line 7424
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "results":Ljava/lang/String;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 7425
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 7426
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7428
    goto/16 :goto_7

    .line 7429
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7431
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7432
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7434
    .local v2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7435
    goto/16 :goto_7

    .line 7409
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 7410
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 7411
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7413
    goto/16 :goto_7

    .line 7414
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7416
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7417
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7418
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7419
    goto/16 :goto_7

    .line 7393
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 7394
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 7395
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7397
    goto/16 :goto_7

    .line 7398
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7400
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7401
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7402
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7403
    .local v2, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 7404
    goto/16 :goto_7

    .line 7378
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;>;"
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 7379
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 7380
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7381
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7382
    goto/16 :goto_7

    .line 7383
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7385
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7386
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7387
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7388
    goto/16 :goto_7

    .line 7363
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 7364
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 7365
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7367
    goto/16 :goto_7

    .line 7368
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7370
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7371
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7372
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7373
    goto/16 :goto_7

    .line 7347
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 7348
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 7349
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7351
    goto/16 :goto_7

    .line 7352
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7354
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7355
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7356
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7357
    .local v2, "n":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 7358
    goto/16 :goto_7

    .line 7330
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 7331
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 7332
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7334
    goto/16 :goto_7

    .line 7335
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7337
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7338
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7340
    .restart local v2    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7341
    .local v3, "m":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 7342
    goto/16 :goto_7

    .line 7315
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 7316
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 7317
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7318
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7319
    goto/16 :goto_7

    .line 7320
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7322
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7323
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7324
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7325
    goto/16 :goto_7

    .line 7300
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 7301
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 7302
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7303
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7304
    goto/16 :goto_7

    .line 7305
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7307
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7308
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7309
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setVoiceDomainPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7310
    goto/16 :goto_7

    .line 7285
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 7286
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 7287
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7288
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7289
    goto/16 :goto_7

    .line 7290
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7292
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7293
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7294
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsRegistrationReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7295
    goto/16 :goto_7

    .line 7270
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 7271
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 7272
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7274
    goto/16 :goto_7

    .line 7275
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7277
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7278
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7279
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->pullCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7280
    goto/16 :goto_7

    .line 7255
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 7256
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 7257
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7259
    goto/16 :goto_7

    .line 7260
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7262
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7263
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7264
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsRtpReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7265
    goto/16 :goto_7

    .line 7240
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 7241
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 7242
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7244
    goto/16 :goto_7

    .line 7245
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7247
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7248
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7249
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->updateImsRegistrationStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7250
    goto/16 :goto_7

    .line 7225
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 7226
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 7227
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7229
    goto/16 :goto_7

    .line 7230
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7232
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7233
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7234
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsCallStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7235
    goto/16 :goto_7

    .line 7210
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 7211
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 7212
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7213
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7214
    goto/16 :goto_7

    .line 7215
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7217
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7218
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7219
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->imsBearerDeactivationDoneResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7220
    goto/16 :goto_7

    .line 7195
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 7196
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 7197
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7199
    goto/16 :goto_7

    .line 7200
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7202
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7203
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7204
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->imsBearerActivationDoneResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7205
    goto/16 :goto_7

    .line 7180
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 7181
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 7182
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7184
    goto/16 :goto_7

    .line 7185
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7187
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7188
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7189
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->forceReleaseCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7190
    goto/16 :goto_7

    .line 7165
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 7166
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 7167
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7169
    goto/16 :goto_7

    .line 7170
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7172
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7173
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7174
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setupXcapUserAgentStringResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7175
    goto/16 :goto_7

    .line 7150
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 7151
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 7152
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7154
    goto/16 :goto_7

    .line 7155
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7157
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7158
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7159
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->resetSuppServResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7160
    goto/16 :goto_7

    .line 7135
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 7136
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 7137
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7139
    goto/16 :goto_7

    .line 7140
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7142
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7143
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7144
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getXcapStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7145
    goto/16 :goto_7

    .line 7120
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 7121
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 7122
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7124
    goto/16 :goto_7

    .line 7125
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7127
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7128
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7129
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->cancelUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7130
    goto/16 :goto_7

    .line 7105
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 7106
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 7107
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7109
    goto/16 :goto_7

    .line 7110
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7112
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7113
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7114
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendUssiResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7115
    goto/16 :goto_7

    .line 7090
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 7091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 7092
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7094
    goto/16 :goto_7

    .line 7095
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7097
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7098
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7099
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->dialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7100
    goto/16 :goto_7

    .line 7075
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 7076
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 7077
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7079
    goto/16 :goto_7

    .line 7080
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7082
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7083
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7084
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->vtDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7085
    goto/16 :goto_7

    .line 7060
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 7061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 7062
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7064
    goto/16 :goto_7

    .line 7065
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7067
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7068
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7069
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->vtDialWithSipUriResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7070
    goto/16 :goto_7

    .line 7045
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 7046
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 7047
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7049
    goto/16 :goto_7

    .line 7050
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7052
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7053
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7054
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->conferenceDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7055
    goto/16 :goto_7

    .line 7030
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 7031
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 7032
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7034
    goto/16 :goto_7

    .line 7035
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7037
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7038
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7039
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setWfcProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7040
    goto/16 :goto_7

    .line 7015
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 7016
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 7017
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7019
    goto/16 :goto_7

    .line 7020
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7022
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7023
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7024
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->removeImsConferenceCallMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7025
    goto/16 :goto_7

    .line 7000
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 7001
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 7002
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7004
    goto/16 :goto_7

    .line 7005
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7007
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 7008
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7009
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->addImsConferenceCallMemberResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 7010
    goto/16 :goto_7

    .line 6985
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 6986
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 6987
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6989
    goto/16 :goto_7

    .line 6990
    :cond_64
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6992
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6993
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6994
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6995
    goto/16 :goto_7

    .line 6970
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 6971
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 6972
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6974
    goto/16 :goto_7

    .line 6975
    :cond_66
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6977
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6978
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6979
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getProvisionValueResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6980
    goto/16 :goto_7

    .line 6955
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 6956
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 6957
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6958
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6959
    goto/16 :goto_7

    .line 6960
    :cond_68
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6962
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6963
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6964
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImscfgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6965
    goto/16 :goto_7

    .line 6940
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 6941
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 6942
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6944
    goto/16 :goto_7

    .line 6945
    :cond_6a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6947
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6948
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6949
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsVideoEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6950
    goto/16 :goto_7

    .line 6925
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 6926
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 6927
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6928
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6929
    goto/16 :goto_7

    .line 6930
    :cond_6c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6932
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6933
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6934
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsVoiceEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6935
    goto/16 :goto_7

    .line 6910
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 6911
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 6912
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6914
    goto/16 :goto_7

    .line 6915
    :cond_6e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6917
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6918
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6919
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setRcsUaEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6920
    goto/16 :goto_7

    .line 6895
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 6896
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 6897
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6898
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6899
    goto/16 :goto_7

    .line 6900
    :cond_70
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6902
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6903
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6904
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setViWifiEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6905
    goto/16 :goto_7

    .line 6880
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 6881
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 6882
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6883
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6884
    goto/16 :goto_7

    .line 6885
    :cond_72
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6887
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6888
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6889
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setVilteEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6890
    goto/16 :goto_7

    .line 6865
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 6866
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 6867
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6868
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6869
    goto/16 :goto_7

    .line 6870
    :cond_74
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6872
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6873
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6874
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setWfcEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6875
    goto/16 :goto_7

    .line 6850
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 6851
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 6852
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6853
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6854
    goto/16 :goto_7

    .line 6855
    :cond_76
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6857
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6858
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6859
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setVolteEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6860
    goto/16 :goto_7

    .line 6835
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 6836
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 6837
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6838
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6839
    goto/16 :goto_7

    .line 6840
    :cond_78
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6842
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6843
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6844
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setImsEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6845
    goto/16 :goto_7

    .line 6820
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 6821
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 6822
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6823
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6824
    goto/16 :goto_7

    .line 6825
    :cond_7a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6827
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6828
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6829
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->imsDeregNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6830
    goto/16 :goto_7

    .line 6805
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 6806
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 6807
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6808
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6809
    goto/16 :goto_7

    .line 6810
    :cond_7c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6812
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6813
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6814
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->resumeCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6815
    goto/16 :goto_7

    .line 6790
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 6791
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 6792
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6793
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6794
    goto/16 :goto_7

    .line 6795
    :cond_7e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6797
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6798
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6799
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->holdCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6800
    goto/16 :goto_7

    .line 6775
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 6776
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 6777
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6779
    goto/16 :goto_7

    .line 6780
    :cond_80
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6782
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6783
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6784
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->imsEctCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6785
    goto/16 :goto_7

    .line 6760
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 6761
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 6762
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6764
    goto/16 :goto_7

    .line 6765
    :cond_82
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6767
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6768
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6769
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->videoCallAcceptResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6770
    goto/16 :goto_7

    .line 6745
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 6746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 6747
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6749
    goto/16 :goto_7

    .line 6750
    :cond_84
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6752
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6753
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6754
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setEccServiceCategoryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6755
    goto/16 :goto_7

    .line 6730
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 6731
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 6732
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6734
    goto/16 :goto_7

    .line 6735
    :cond_86
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6737
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6738
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6739
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6740
    goto/16 :goto_7

    .line 6715
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 6716
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 6717
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6719
    goto/16 :goto_7

    .line 6720
    :cond_88
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6722
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6723
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6724
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6725
    goto/16 :goto_7

    .line 6700
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 6701
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 6702
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6703
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6704
    goto/16 :goto_7

    .line 6705
    :cond_8a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6707
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6708
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6709
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6710
    goto/16 :goto_7

    .line 6683
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 6684
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 6685
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6687
    goto/16 :goto_7

    .line 6688
    :cond_8c
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6690
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6691
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6692
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 6693
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6694
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 6695
    goto/16 :goto_7

    .line 6666
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 6667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 6668
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6670
    goto/16 :goto_7

    .line 6671
    :cond_8e
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6673
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6674
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6675
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 6676
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6677
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 6678
    goto/16 :goto_7

    .line 6649
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 6650
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 6651
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6653
    goto/16 :goto_7

    .line 6654
    :cond_90
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6656
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6657
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6658
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 6659
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6660
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 6661
    goto/16 :goto_7

    .line 6633
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 6634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 6635
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6637
    goto/16 :goto_7

    .line 6638
    :cond_92
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6640
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6641
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6642
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6643
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6644
    goto/16 :goto_7

    .line 6618
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 6619
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 6620
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6622
    goto/16 :goto_7

    .line 6623
    :cond_94
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6625
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6626
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6627
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6628
    goto/16 :goto_7

    .line 6603
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 6604
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 6605
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6607
    goto/16 :goto_7

    .line 6608
    :cond_96
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6610
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6611
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6612
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6613
    goto/16 :goto_7

    .line 6586
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 6587
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 6588
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6590
    goto/16 :goto_7

    .line 6591
    :cond_98
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6593
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6594
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6595
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 6596
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6597
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 6598
    goto/16 :goto_7

    .line 6570
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 6571
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 6572
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6574
    goto/16 :goto_7

    .line 6575
    :cond_9a
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6577
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6578
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6579
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6580
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6581
    goto/16 :goto_7

    .line 6555
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 6556
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 6557
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6559
    goto/16 :goto_7

    .line 6560
    :cond_9c
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6562
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6563
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6564
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6565
    goto/16 :goto_7

    .line 6538
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 6539
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 6540
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6542
    goto/16 :goto_7

    .line 6543
    :cond_9e
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6545
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6546
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6547
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 6548
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6549
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 6550
    goto/16 :goto_7

    .line 6523
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 6524
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 6525
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6527
    goto/16 :goto_7

    .line 6528
    :cond_a0
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6530
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6531
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6532
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6533
    goto/16 :goto_7

    .line 6508
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 6509
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 6510
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6511
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6512
    goto/16 :goto_7

    .line 6513
    :cond_a2
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6515
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6516
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6517
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6518
    goto/16 :goto_7

    .line 6493
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 6494
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 6495
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6497
    goto/16 :goto_7

    .line 6498
    :cond_a4
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6500
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6501
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6502
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6503
    goto/16 :goto_7

    .line 6478
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 6479
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 6480
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6482
    goto/16 :goto_7

    .line 6483
    :cond_a6
    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6485
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6486
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6487
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6488
    goto/16 :goto_7

    .line 6464
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 6465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 6466
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6468
    goto/16 :goto_7

    .line 6469
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6472
    .local v0, "serial":I
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 6473
    goto/16 :goto_7

    .line 6449
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 6450
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 6451
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6453
    goto/16 :goto_7

    .line 6454
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6456
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6457
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6458
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6459
    goto/16 :goto_7

    .line 6434
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 6435
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 6436
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6438
    goto/16 :goto_7

    .line 6439
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6441
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6442
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6443
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6444
    goto/16 :goto_7

    .line 6419
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 6420
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 6421
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6423
    goto/16 :goto_7

    .line 6424
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6426
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6427
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6428
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6429
    goto/16 :goto_7

    .line 6401
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 6402
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 6403
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6405
    goto/16 :goto_7

    .line 6406
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6408
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6409
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6410
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6411
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 6412
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6413
    invoke-virtual {v7, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 6414
    goto/16 :goto_7

    .line 6385
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 6386
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 6387
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6389
    goto/16 :goto_7

    .line 6390
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6392
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6393
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6395
    .local v2, "numAllowed":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 6396
    goto/16 :goto_7

    .line 6368
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "numAllowed":I
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 6369
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 6370
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6372
    goto/16 :goto_7

    .line 6373
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6375
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6376
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6377
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 6378
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6379
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 6380
    goto/16 :goto_7

    .line 6351
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 6352
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 6353
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6354
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6355
    goto/16 :goto_7

    .line 6356
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6358
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6359
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6360
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 6361
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6362
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 6363
    goto/16 :goto_7

    .line 6334
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 6335
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 6336
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6338
    goto/16 :goto_7

    .line 6339
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6341
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6342
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6343
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6344
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6345
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6346
    goto/16 :goto_7

    .line 6317
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 6318
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 6319
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6320
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6321
    goto/16 :goto_7

    .line 6322
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6324
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6325
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6326
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 6327
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6328
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 6329
    goto/16 :goto_7

    .line 6300
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 6301
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 6302
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6303
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6304
    goto/16 :goto_7

    .line 6305
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6307
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6308
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6309
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6310
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6311
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6312
    goto/16 :goto_7

    .line 6283
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 6284
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 6285
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6286
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6287
    goto/16 :goto_7

    .line 6288
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6290
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6291
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6292
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 6293
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6294
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 6295
    goto/16 :goto_7

    .line 6268
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 6269
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 6270
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6271
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6272
    goto/16 :goto_7

    .line 6273
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6275
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6276
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6277
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6278
    goto/16 :goto_7

    .line 6253
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 6254
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 6255
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6257
    goto/16 :goto_7

    .line 6258
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6260
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6261
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6262
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6263
    goto/16 :goto_7

    .line 6236
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 6237
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 6238
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6240
    goto/16 :goto_7

    .line 6241
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6243
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6244
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6245
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6246
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6247
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6248
    goto/16 :goto_7

    .line 6220
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 6221
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 6222
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6224
    goto/16 :goto_7

    .line 6225
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6227
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6228
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6229
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6230
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 6231
    goto/16 :goto_7

    .line 6205
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 6206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 6207
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6209
    goto/16 :goto_7

    .line 6210
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6212
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6213
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6214
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6215
    goto/16 :goto_7

    .line 6190
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 6191
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 6192
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6194
    goto/16 :goto_7

    .line 6195
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6197
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6198
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6199
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6200
    goto/16 :goto_7

    .line 6175
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 6176
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 6177
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6179
    goto/16 :goto_7

    .line 6180
    :cond_cc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6182
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6183
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6184
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6185
    goto/16 :goto_7

    .line 6160
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 6161
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 6162
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6164
    goto/16 :goto_7

    .line 6165
    :cond_ce
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6167
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6168
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6169
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6170
    goto/16 :goto_7

    .line 6145
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 6146
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 6147
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6149
    goto/16 :goto_7

    .line 6150
    :cond_d0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6152
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6153
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6154
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6155
    goto/16 :goto_7

    .line 6129
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 6130
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 6131
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6133
    goto/16 :goto_7

    .line 6134
    :cond_d2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6136
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6137
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6138
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6139
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 6140
    goto/16 :goto_7

    .line 6112
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 6113
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 6114
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6116
    goto/16 :goto_7

    .line 6117
    :cond_d4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6119
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6120
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6121
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6122
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6123
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6124
    goto/16 :goto_7

    .line 6097
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 6098
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 6099
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6101
    goto/16 :goto_7

    .line 6102
    :cond_d6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6104
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6105
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6106
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6107
    goto/16 :goto_7

    .line 6080
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 6081
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 6082
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6084
    goto/16 :goto_7

    .line 6085
    :cond_d8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6087
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6088
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6090
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6091
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 6092
    goto/16 :goto_7

    .line 6063
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 6064
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 6065
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6066
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6067
    goto/16 :goto_7

    .line 6068
    :cond_da
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6070
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6071
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6072
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 6073
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6074
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 6075
    goto/16 :goto_7

    .line 6046
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    .line 6047
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_db
    if-eq v1, v2, :cond_dc

    .line 6048
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6049
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6050
    goto/16 :goto_7

    .line 6051
    :cond_dc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6053
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6054
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6055
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 6056
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6057
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 6058
    goto/16 :goto_7

    .line 6029
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    .line 6030
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dd
    if-eq v1, v2, :cond_de

    .line 6031
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6033
    goto/16 :goto_7

    .line 6034
    :cond_de
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6036
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6037
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6039
    .local v2, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6040
    .local v3, "ratFamily":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 6041
    goto/16 :goto_7

    .line 6014
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 6015
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 6016
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6018
    goto/16 :goto_7

    .line 6019
    :cond_e0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6021
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6022
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6023
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6024
    goto/16 :goto_7

    .line 5999
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 6000
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 6001
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6003
    goto/16 :goto_7

    .line 6004
    :cond_e2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6006
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 6007
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6008
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 6009
    goto/16 :goto_7

    .line 5983
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 5984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 5985
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5987
    goto/16 :goto_7

    .line 5988
    :cond_e4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5990
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5991
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5992
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5993
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5994
    goto/16 :goto_7

    .line 5967
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 5968
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 5969
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5971
    goto/16 :goto_7

    .line 5972
    :cond_e6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5974
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5975
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5977
    .local v2, "rat":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5978
    goto/16 :goto_7

    .line 5950
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 5951
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 5952
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5954
    goto/16 :goto_7

    .line 5955
    :cond_e8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5957
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5958
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5959
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 5960
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5961
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 5962
    goto/16 :goto_7

    .line 5935
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 5936
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 5937
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5939
    goto/16 :goto_7

    .line 5940
    :cond_ea
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5942
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5943
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5944
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5945
    goto/16 :goto_7

    .line 5919
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 5920
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 5921
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5923
    goto/16 :goto_7

    .line 5924
    :cond_ec
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5926
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5927
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5929
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5930
    goto/16 :goto_7

    .line 5903
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 5904
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 5905
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5907
    goto/16 :goto_7

    .line 5908
    :cond_ee
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5910
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5911
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5912
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5913
    .local v2, "source":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5914
    goto/16 :goto_7

    .line 5888
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "source":I
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 5889
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 5890
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5892
    goto/16 :goto_7

    .line 5893
    :cond_f0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5895
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5896
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5897
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5898
    goto/16 :goto_7

    .line 5873
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 5874
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 5875
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5877
    goto/16 :goto_7

    .line 5878
    :cond_f2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5880
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5881
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5882
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5883
    goto/16 :goto_7

    .line 5858
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 5859
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 5860
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5862
    goto/16 :goto_7

    .line 5863
    :cond_f4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5865
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5866
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5867
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5868
    goto/16 :goto_7

    .line 5842
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 5843
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 5844
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5846
    goto/16 :goto_7

    .line 5847
    :cond_f6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5849
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5850
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5852
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5853
    goto/16 :goto_7

    .line 5827
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    .line 5828
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 5829
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5831
    goto/16 :goto_7

    .line 5832
    :cond_f8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5834
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5835
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5836
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5837
    goto/16 :goto_7

    .line 5808
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    :cond_f9
    move v6, v1

    .line 5809
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_fa

    .line 5810
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5812
    goto/16 :goto_7

    .line 5813
    :cond_fa
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5815
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 5816
    .local v10, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5818
    .local v11, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5819
    .local v12, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5820
    .local v13, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5821
    .local v14, "meid":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5822
    goto/16 :goto_7

    .line 5793
    .end local v6    # "_hidl_is_oneway":Z
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "imei":Ljava/lang/String;
    .end local v12    # "imeisv":Ljava/lang/String;
    .end local v13    # "esn":Ljava/lang/String;
    .end local v14    # "meid":Ljava/lang/String;
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 5794
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 5795
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5797
    goto/16 :goto_7

    .line 5798
    :cond_fc
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5800
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5801
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5802
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5803
    goto/16 :goto_7

    .line 5777
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_75
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fd

    move v1, v2

    nop

    .line 5778
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fd
    if-eq v1, v2, :cond_fe

    .line 5779
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5780
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5781
    goto/16 :goto_7

    .line 5782
    :cond_fe
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5784
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5785
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5787
    .local v2, "index":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5788
    goto/16 :goto_7

    .line 5757
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_76
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ff

    move v1, v2

    nop

    :cond_ff
    move v10, v1

    .line 5758
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_100

    .line 5759
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5761
    goto/16 :goto_7

    .line 5762
    :cond_100
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5764
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v11, v0

    .line 5765
    .local v11, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v11, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5767
    .local v12, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5768
    .local v13, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5769
    .local v14, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 5770
    .local v15, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5771
    .local v16, "prl":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5772
    goto/16 :goto_7

    .line 5742
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v12    # "mdn":Ljava/lang/String;
    .end local v13    # "hSid":Ljava/lang/String;
    .end local v14    # "hNid":Ljava/lang/String;
    .end local v15    # "min":Ljava/lang/String;
    .end local v16    # "prl":Ljava/lang/String;
    :pswitch_77
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    move v1, v2

    nop

    .line 5743
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_101
    if-eq v1, v2, :cond_102

    .line 5744
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5746
    goto/16 :goto_7

    .line 5747
    :cond_102
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5749
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5750
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5751
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5752
    goto/16 :goto_7

    .line 5727
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_78
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_103

    move v1, v2

    nop

    .line 5728
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_103
    if-eq v1, v2, :cond_104

    .line 5729
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5731
    goto/16 :goto_7

    .line 5732
    :cond_104
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5734
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5735
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5736
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5737
    goto/16 :goto_7

    .line 5711
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_79
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_105

    move v1, v2

    nop

    .line 5712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_105
    if-eq v1, v2, :cond_106

    .line 5713
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5715
    goto/16 :goto_7

    .line 5716
    :cond_106
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5718
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5719
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5720
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5721
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5722
    goto/16 :goto_7

    .line 5696
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_107

    move v1, v2

    nop

    .line 5697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_107
    if-eq v1, v2, :cond_108

    .line 5698
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5700
    goto/16 :goto_7

    .line 5701
    :cond_108
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5703
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5704
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5705
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5706
    goto/16 :goto_7

    .line 5681
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_109

    move v1, v2

    nop

    .line 5682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_109
    if-eq v1, v2, :cond_10a

    .line 5683
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5684
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5685
    goto/16 :goto_7

    .line 5686
    :cond_10a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5688
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5689
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5690
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5691
    goto/16 :goto_7

    .line 5665
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10b

    move v1, v2

    nop

    .line 5666
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10b
    if-eq v1, v2, :cond_10c

    .line 5667
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5669
    goto/16 :goto_7

    .line 5670
    :cond_10c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5672
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5673
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5674
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5675
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5676
    goto/16 :goto_7

    .line 5650
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_7d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10d

    move v1, v2

    nop

    .line 5651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10d
    if-eq v1, v2, :cond_10e

    .line 5652
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5654
    goto/16 :goto_7

    .line 5655
    :cond_10e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5657
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5658
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5659
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5660
    goto/16 :goto_7

    .line 5633
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10f

    move v1, v2

    nop

    .line 5634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10f
    if-eq v1, v2, :cond_110

    .line 5635
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5637
    goto/16 :goto_7

    .line 5638
    :cond_110
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5640
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5641
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5642
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 5643
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5644
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 5645
    goto/16 :goto_7

    .line 5618
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_7f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_111

    move v1, v2

    nop

    .line 5619
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_111
    if-eq v1, v2, :cond_112

    .line 5620
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5622
    goto/16 :goto_7

    .line 5623
    :cond_112
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5625
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5626
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5627
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5628
    goto/16 :goto_7

    .line 5603
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_80
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_113

    move v1, v2

    nop

    .line 5604
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_113
    if-eq v1, v2, :cond_114

    .line 5605
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5607
    goto/16 :goto_7

    .line 5608
    :cond_114
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5610
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5611
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5612
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5613
    goto/16 :goto_7

    .line 5587
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_81
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_115

    move v1, v2

    nop

    .line 5588
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_115
    if-eq v1, v2, :cond_116

    .line 5589
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5591
    goto/16 :goto_7

    .line 5592
    :cond_116
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5594
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5595
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5597
    .local v2, "enable":Z
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5598
    goto/16 :goto_7

    .line 5572
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_82
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_117

    move v1, v2

    nop

    .line 5573
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_117
    if-eq v1, v2, :cond_118

    .line 5574
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5576
    goto/16 :goto_7

    .line 5577
    :cond_118
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5579
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5580
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5581
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5582
    goto/16 :goto_7

    .line 5556
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_83
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_119

    move v1, v2

    nop

    .line 5557
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_119
    if-eq v1, v2, :cond_11a

    .line 5558
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5560
    goto/16 :goto_7

    .line 5561
    :cond_11a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5563
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5564
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5566
    .local v2, "mode":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5567
    goto/16 :goto_7

    .line 5541
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_84
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11b

    move v1, v2

    nop

    .line 5542
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11b
    if-eq v1, v2, :cond_11c

    .line 5543
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5545
    goto/16 :goto_7

    .line 5546
    :cond_11c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5548
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5549
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5550
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5551
    goto/16 :goto_7

    .line 5525
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_85
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11d

    move v1, v2

    nop

    .line 5526
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11d
    if-eq v1, v2, :cond_11e

    .line 5527
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5529
    goto/16 :goto_7

    .line 5530
    :cond_11e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5532
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5533
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5535
    .local v2, "type":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5536
    goto/16 :goto_7

    .line 5510
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_86
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11f

    move v1, v2

    nop

    .line 5511
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11f
    if-eq v1, v2, :cond_120

    .line 5512
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5513
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5514
    goto/16 :goto_7

    .line 5515
    :cond_120
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5518
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5519
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5520
    goto/16 :goto_7

    .line 5495
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_87
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_121

    move v1, v2

    nop

    .line 5496
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_121
    if-eq v1, v2, :cond_122

    .line 5497
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5499
    goto/16 :goto_7

    .line 5500
    :cond_122
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5502
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5503
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5504
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5505
    goto/16 :goto_7

    .line 5480
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_88
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_123

    move v1, v2

    nop

    .line 5481
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_123
    if-eq v1, v2, :cond_124

    .line 5482
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5484
    goto/16 :goto_7

    .line 5485
    :cond_124
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5487
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5488
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5489
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5490
    goto/16 :goto_7

    .line 5464
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_89
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    move v1, v2

    nop

    .line 5465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_125
    if-eq v1, v2, :cond_126

    .line 5466
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5468
    goto/16 :goto_7

    .line 5469
    :cond_126
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5471
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5472
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5473
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5474
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5475
    goto/16 :goto_7

    .line 5448
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :pswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_127

    move v1, v2

    nop

    .line 5449
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_127
    if-eq v1, v2, :cond_128

    .line 5450
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5452
    goto/16 :goto_7

    .line 5453
    :cond_128
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5455
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5456
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5458
    .local v2, "nwType":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5459
    goto/16 :goto_7

    .line 5433
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_8b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_129

    move v1, v2

    nop

    .line 5434
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_129
    if-eq v1, v2, :cond_12a

    .line 5435
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5437
    goto/16 :goto_7

    .line 5438
    :cond_12a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5440
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5441
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5442
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5443
    goto/16 :goto_7

    .line 5418
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12b

    move v1, v2

    nop

    .line 5419
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12b
    if-eq v1, v2, :cond_12c

    .line 5420
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5421
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5422
    goto/16 :goto_7

    .line 5423
    :cond_12c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5425
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5426
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5427
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5428
    goto/16 :goto_7

    .line 5403
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12d

    move v1, v2

    nop

    .line 5404
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12d
    if-eq v1, v2, :cond_12e

    .line 5405
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5407
    goto/16 :goto_7

    .line 5408
    :cond_12e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5410
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5411
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5412
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5413
    goto/16 :goto_7

    .line 5388
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12f

    move v1, v2

    nop

    .line 5389
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12f
    if-eq v1, v2, :cond_130

    .line 5390
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5392
    goto/16 :goto_7

    .line 5393
    :cond_130
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5395
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5396
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5397
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5398
    goto/16 :goto_7

    .line 5372
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_131

    move v1, v2

    nop

    .line 5373
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_131
    if-eq v1, v2, :cond_132

    .line 5374
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5376
    goto/16 :goto_7

    .line 5377
    :cond_132
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5379
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5380
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5382
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5383
    goto/16 :goto_7

    .line 5356
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_90
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_133

    move v1, v2

    nop

    .line 5357
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_133
    if-eq v1, v2, :cond_134

    .line 5358
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5360
    goto/16 :goto_7

    .line 5361
    :cond_134
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5363
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5364
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5366
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5367
    goto/16 :goto_7

    .line 5341
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_91
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_135

    move v1, v2

    nop

    .line 5342
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_135
    if-eq v1, v2, :cond_136

    .line 5343
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5345
    goto/16 :goto_7

    .line 5346
    :cond_136
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5348
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5349
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5350
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5351
    goto/16 :goto_7

    .line 5326
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_92
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_137

    move v1, v2

    nop

    .line 5327
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_137
    if-eq v1, v2, :cond_138

    .line 5328
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5330
    goto/16 :goto_7

    .line 5331
    :cond_138
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5333
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5334
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5335
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5336
    goto/16 :goto_7

    .line 5310
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_93
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_139

    move v1, v2

    nop

    .line 5311
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_139
    if-eq v1, v2, :cond_13a

    .line 5312
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5314
    goto/16 :goto_7

    .line 5315
    :cond_13a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5317
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5318
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5320
    .local v2, "index":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5321
    goto/16 :goto_7

    .line 5295
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_94
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13b

    move v1, v2

    nop

    .line 5296
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13b
    if-eq v1, v2, :cond_13c

    .line 5297
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5299
    goto/16 :goto_7

    .line 5300
    :cond_13c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5302
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5303
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5304
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5305
    goto/16 :goto_7

    .line 5279
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_95
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13d

    move v1, v2

    nop

    .line 5280
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13d
    if-eq v1, v2, :cond_13e

    .line 5281
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5283
    goto/16 :goto_7

    .line 5284
    :cond_13e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5286
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5287
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5288
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5289
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5290
    goto/16 :goto_7

    .line 5263
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_96
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13f

    move v1, v2

    nop

    .line 5264
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13f
    if-eq v1, v2, :cond_140

    .line 5265
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5267
    goto/16 :goto_7

    .line 5268
    :cond_140
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5270
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5271
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5273
    .local v2, "status":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5274
    goto/16 :goto_7

    .line 5247
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_97
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_141

    move v1, v2

    nop

    .line 5248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_141
    if-eq v1, v2, :cond_142

    .line 5249
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5251
    goto/16 :goto_7

    .line 5252
    :cond_142
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5254
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5255
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5257
    .local v2, "enable":Z
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5258
    goto/16 :goto_7

    .line 5232
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_98
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_143

    move v1, v2

    nop

    .line 5233
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_143
    if-eq v1, v2, :cond_144

    .line 5234
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5236
    goto/16 :goto_7

    .line 5237
    :cond_144
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5239
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5240
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5241
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5242
    goto/16 :goto_7

    .line 5217
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_99
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_145

    move v1, v2

    nop

    .line 5218
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_145
    if-eq v1, v2, :cond_146

    .line 5219
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5221
    goto/16 :goto_7

    .line 5222
    :cond_146
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5224
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5225
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5226
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5227
    goto/16 :goto_7

    .line 5201
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_147

    move v1, v2

    nop

    .line 5202
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_147
    if-eq v1, v2, :cond_148

    .line 5203
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5205
    goto/16 :goto_7

    .line 5206
    :cond_148
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5208
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5209
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5211
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 5212
    goto/16 :goto_7

    .line 5186
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_9b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_149

    move v1, v2

    nop

    .line 5187
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_149
    if-eq v1, v2, :cond_14a

    .line 5188
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5190
    goto/16 :goto_7

    .line 5191
    :cond_14a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5193
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5194
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5195
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5196
    goto/16 :goto_7

    .line 5171
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14b

    move v1, v2

    nop

    .line 5172
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14b
    if-eq v1, v2, :cond_14c

    .line 5173
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5174
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5175
    goto/16 :goto_7

    .line 5176
    :cond_14c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5178
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5179
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5180
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5181
    goto/16 :goto_7

    .line 5155
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14d

    move v1, v2

    nop

    .line 5156
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14d
    if-eq v1, v2, :cond_14e

    .line 5157
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5159
    goto/16 :goto_7

    .line 5160
    :cond_14e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5162
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5163
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5164
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5165
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5166
    goto/16 :goto_7

    .line 5140
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :pswitch_9e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14f

    move v1, v2

    nop

    .line 5141
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14f
    if-eq v1, v2, :cond_150

    .line 5142
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5143
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5144
    goto/16 :goto_7

    .line 5145
    :cond_150
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5147
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5148
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5149
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5150
    goto/16 :goto_7

    .line 5125
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_151

    move v1, v2

    nop

    .line 5126
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_151
    if-eq v1, v2, :cond_152

    .line 5127
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5129
    goto/16 :goto_7

    .line 5130
    :cond_152
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5132
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5133
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5134
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5135
    goto/16 :goto_7

    .line 5109
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_153

    move v1, v2

    nop

    .line 5110
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_153
    if-eq v1, v2, :cond_154

    .line 5111
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5112
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5113
    goto/16 :goto_7

    .line 5114
    :cond_154
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5116
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5117
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5119
    .local v2, "manual":Z
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 5120
    goto/16 :goto_7

    .line 5094
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "manual":Z
    :pswitch_a1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_155

    move v1, v2

    nop

    .line 5095
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_155
    if-eq v1, v2, :cond_156

    .line 5096
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5098
    goto/16 :goto_7

    .line 5099
    :cond_156
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5101
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5102
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5103
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5104
    goto/16 :goto_7

    .line 5078
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_157

    move v1, v2

    nop

    .line 5079
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_157
    if-eq v1, v2, :cond_158

    .line 5080
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5082
    goto/16 :goto_7

    .line 5083
    :cond_158
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5086
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5088
    .local v2, "retry":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5089
    goto/16 :goto_7

    .line 5062
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "retry":I
    :pswitch_a3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_159

    move v1, v2

    nop

    .line 5063
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_159
    if-eq v1, v2, :cond_15a

    .line 5064
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5066
    goto/16 :goto_7

    .line 5067
    :cond_15a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5069
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5070
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5072
    .local v2, "response":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 5073
    goto/16 :goto_7

    .line 5047
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "response":I
    :pswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15b

    move v1, v2

    nop

    .line 5048
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15b
    if-eq v1, v2, :cond_15c

    .line 5049
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5050
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5051
    goto/16 :goto_7

    .line 5052
    :cond_15c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5054
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5055
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5056
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5057
    goto/16 :goto_7

    .line 5032
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15d

    move v1, v2

    nop

    .line 5033
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15d
    if-eq v1, v2, :cond_15e

    .line 5034
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5036
    goto/16 :goto_7

    .line 5037
    :cond_15e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5039
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5040
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5041
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5042
    goto/16 :goto_7

    .line 5017
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15f

    move v1, v2

    nop

    .line 5018
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15f
    if-eq v1, v2, :cond_160

    .line 5019
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5021
    goto/16 :goto_7

    .line 5022
    :cond_160
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5024
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5025
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5026
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5027
    goto/16 :goto_7

    .line 5002
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_161

    move v1, v2

    nop

    .line 5003
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_161
    if-eq v1, v2, :cond_162

    .line 5004
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5005
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5006
    goto/16 :goto_7

    .line 5007
    :cond_162
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5009
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5010
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5011
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5012
    goto/16 :goto_7

    .line 4985
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_163

    move v1, v2

    nop

    .line 4986
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_163
    if-eq v1, v2, :cond_164

    .line 4987
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4989
    goto/16 :goto_7

    .line 4990
    :cond_164
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4992
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4993
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4995
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4996
    .local v3, "serviceClass":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4997
    goto/16 :goto_7

    .line 4970
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_a9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_165

    move v1, v2

    nop

    .line 4971
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_165
    if-eq v1, v2, :cond_166

    .line 4972
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4974
    goto/16 :goto_7

    .line 4975
    :cond_166
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4977
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4978
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4979
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4980
    goto/16 :goto_7

    .line 4954
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_aa
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_167

    move v1, v2

    nop

    .line 4955
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_167
    if-eq v1, v2, :cond_168

    .line 4956
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4957
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4958
    goto/16 :goto_7

    .line 4959
    :cond_168
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4961
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4962
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4963
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4964
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4965
    goto/16 :goto_7

    .line 4939
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :pswitch_ab
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_169

    move v1, v2

    nop

    .line 4940
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_169
    if-eq v1, v2, :cond_16a

    .line 4941
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4942
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4943
    goto/16 :goto_7

    .line 4944
    :cond_16a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4946
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4947
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4948
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4949
    goto/16 :goto_7

    .line 4922
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ac
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16b

    move v1, v2

    nop

    .line 4923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16b
    if-eq v1, v2, :cond_16c

    .line 4924
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4926
    goto/16 :goto_7

    .line 4927
    :cond_16c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4929
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4930
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4932
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4933
    .local v3, "m":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4934
    goto/16 :goto_7

    .line 4907
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_ad
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16d

    move v1, v2

    nop

    .line 4908
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16d
    if-eq v1, v2, :cond_16e

    .line 4909
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4910
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4911
    goto/16 :goto_7

    .line 4912
    :cond_16e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4914
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4915
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4916
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4917
    goto/16 :goto_7

    .line 4892
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ae
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16f

    move v1, v2

    nop

    .line 4893
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16f
    if-eq v1, v2, :cond_170

    .line 4894
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4896
    goto/16 :goto_7

    .line 4897
    :cond_170
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4899
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4900
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4901
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4902
    goto/16 :goto_7

    .line 4875
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_af
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_171

    move v1, v2

    nop

    .line 4876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_171
    if-eq v1, v2, :cond_172

    .line 4877
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4879
    goto/16 :goto_7

    .line 4880
    :cond_172
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4882
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4883
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4884
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4885
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4886
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4887
    goto/16 :goto_7

    .line 4858
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_b0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_173

    move v1, v2

    nop

    .line 4859
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_173
    if-eq v1, v2, :cond_174

    .line 4860
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4862
    goto/16 :goto_7

    .line 4863
    :cond_174
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4865
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4866
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4867
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 4868
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4869
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 4870
    goto/16 :goto_7

    .line 4841
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :pswitch_b1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_175

    move v1, v2

    nop

    .line 4842
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_175
    if-eq v1, v2, :cond_176

    .line 4843
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4845
    goto/16 :goto_7

    .line 4846
    :cond_176
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4848
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4849
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4850
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4851
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4852
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4853
    goto/16 :goto_7

    .line 4824
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_b2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_177

    move v1, v2

    nop

    .line 4825
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_177
    if-eq v1, v2, :cond_178

    .line 4826
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4827
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4828
    goto/16 :goto_7

    .line 4829
    :cond_178
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4831
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4832
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4833
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4834
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4835
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4836
    goto/16 :goto_7

    .line 4809
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_b3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_179

    move v1, v2

    nop

    .line 4810
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_179
    if-eq v1, v2, :cond_17a

    .line 4811
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4812
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4813
    goto/16 :goto_7

    .line 4814
    :cond_17a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4816
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4817
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4818
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4819
    goto/16 :goto_7

    .line 4794
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17b

    move v1, v2

    nop

    .line 4795
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17b
    if-eq v1, v2, :cond_17c

    .line 4796
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4798
    goto/16 :goto_7

    .line 4799
    :cond_17c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4801
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4802
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4803
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4804
    goto/16 :goto_7

    .line 4776
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17d

    move v1, v2

    nop

    .line 4777
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17d
    if-eq v1, v2, :cond_17e

    .line 4778
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4780
    goto/16 :goto_7

    .line 4781
    :cond_17e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4783
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4784
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4786
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4787
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4788
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {v7, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4789
    goto/16 :goto_7

    .line 4759
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :pswitch_b6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17f

    move v1, v2

    nop

    .line 4760
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17f
    if-eq v1, v2, :cond_180

    .line 4761
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4763
    goto/16 :goto_7

    .line 4764
    :cond_180
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4766
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4767
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4768
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 4769
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4770
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 4771
    goto/16 :goto_7

    .line 4742
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :pswitch_b7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_181

    move v1, v2

    nop

    .line 4743
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_181
    if-eq v1, v2, :cond_182

    .line 4744
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4746
    goto/16 :goto_7

    .line 4747
    :cond_182
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4749
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4750
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4751
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 4752
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4753
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 4754
    goto/16 :goto_7

    .line 4725
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :pswitch_b8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_183

    move v1, v2

    nop

    .line 4726
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_183
    if-eq v1, v2, :cond_184

    .line 4727
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4729
    goto/16 :goto_7

    .line 4730
    :cond_184
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4732
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4733
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4734
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 4735
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4736
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 4737
    goto/16 :goto_7

    .line 4708
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_b9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_185

    move v1, v2

    nop

    .line 4709
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_185
    if-eq v1, v2, :cond_186

    .line 4710
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4712
    goto/16 :goto_7

    .line 4713
    :cond_186
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4715
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4716
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4717
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 4718
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4719
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 4720
    goto/16 :goto_7

    .line 4693
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :pswitch_ba
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_187

    move v1, v2

    nop

    .line 4694
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_187
    if-eq v1, v2, :cond_188

    .line 4695
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4697
    goto/16 :goto_7

    .line 4698
    :cond_188
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4700
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4701
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4702
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4703
    goto/16 :goto_7

    .line 4678
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bb
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_189

    move v1, v2

    nop

    .line 4679
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_189
    if-eq v1, v2, :cond_18a

    .line 4680
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4682
    goto/16 :goto_7

    .line 4683
    :cond_18a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4685
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4686
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4687
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4688
    goto/16 :goto_7

    .line 4663
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18b

    move v1, v2

    nop

    .line 4664
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18b
    if-eq v1, v2, :cond_18c

    .line 4665
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4667
    goto/16 :goto_7

    .line 4668
    :cond_18c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4670
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4671
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4672
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4673
    goto/16 :goto_7

    .line 4648
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bd
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18d

    move v1, v2

    nop

    .line 4649
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18d
    if-eq v1, v2, :cond_18e

    .line 4650
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4652
    goto/16 :goto_7

    .line 4653
    :cond_18e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4655
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4656
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4657
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4658
    goto/16 :goto_7

    .line 4633
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_be
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18f

    move v1, v2

    nop

    .line 4634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18f
    if-eq v1, v2, :cond_190

    .line 4635
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4637
    goto/16 :goto_7

    .line 4638
    :cond_190
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4640
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4641
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4642
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4643
    goto/16 :goto_7

    .line 4618
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bf
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_191

    move v1, v2

    nop

    .line 4619
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_191
    if-eq v1, v2, :cond_192

    .line 4620
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4622
    goto/16 :goto_7

    .line 4623
    :cond_192
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4626
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4627
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4628
    goto/16 :goto_7

    .line 4602
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_193

    move v1, v2

    nop

    .line 4603
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_193
    if-eq v1, v2, :cond_194

    .line 4604
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4605
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4606
    goto/16 :goto_7

    .line 4607
    :cond_194
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4609
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4610
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4612
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4613
    goto/16 :goto_7

    .line 4587
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsi":Ljava/lang/String;
    :pswitch_c1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_195

    move v1, v2

    nop

    .line 4588
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_195
    if-eq v1, v2, :cond_196

    .line 4589
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4591
    goto/16 :goto_7

    .line 4592
    :cond_196
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4594
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4595
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4596
    invoke-virtual {v7, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4597
    goto/16 :goto_7

    .line 4571
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_197

    move v1, v2

    nop

    .line 4572
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_197
    if-eq v1, v2, :cond_198

    .line 4573
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4575
    goto/16 :goto_7

    .line 4576
    :cond_198
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4578
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4579
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4580
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4581
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4582
    goto/16 :goto_7

    .line 4555
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :pswitch_c3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_199

    move v1, v2

    nop

    .line 4556
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_199
    if-eq v1, v2, :cond_19a

    .line 4557
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4559
    goto/16 :goto_7

    .line 4560
    :cond_19a
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4562
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4563
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4565
    .local v2, "remainingRetries":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4566
    goto/16 :goto_7

    .line 4539
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_c4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19b

    move v1, v2

    nop

    .line 4540
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19b
    if-eq v1, v2, :cond_19c

    .line 4541
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4543
    goto/16 :goto_7

    .line 4544
    :cond_19c
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4546
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4547
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4549
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4550
    goto/16 :goto_7

    .line 4523
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_c5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19d

    move v1, v2

    nop

    .line 4524
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19d
    if-eq v1, v2, :cond_19e

    .line 4525
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4527
    goto/16 :goto_7

    .line 4528
    :cond_19e
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4530
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4531
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4533
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4534
    goto/16 :goto_7

    .line 4507
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_c6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19f

    move v1, v2

    nop

    .line 4508
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19f
    if-eq v1, v2, :cond_1a0

    .line 4509
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4511
    goto/16 :goto_7

    .line 4512
    :cond_1a0
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4514
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4515
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4517
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4518
    goto/16 :goto_7

    .line 4491
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_c7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a1

    move v1, v2

    nop

    .line 4492
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a1
    if-eq v1, v2, :cond_1a2

    .line 4493
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4495
    goto/16 :goto_7

    .line 4496
    :cond_1a2
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4498
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4499
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4501
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4502
    goto/16 :goto_7

    .line 4475
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_c8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a3

    move v1, v2

    nop

    .line 4476
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a3
    if-eq v1, v2, :cond_1a4

    .line 4477
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4479
    goto :goto_7

    .line 4480
    :cond_1a4
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4482
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4483
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4485
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4486
    goto :goto_7

    .line 4459
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_c9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a5

    move v1, v2

    nop

    .line 4460
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a5
    if-eq v1, v2, :cond_1a6

    .line 4461
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4463
    goto :goto_7

    .line 4464
    :cond_1a6
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4467
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4468
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4469
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4470
    goto :goto_7

    .line 4442
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "remainingRetries":I
    :pswitch_ca
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a7

    move v1, v2

    nop

    .line 4443
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a7
    if-eq v1, v2, :cond_1a8

    .line 4444
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4446
    goto :goto_7

    .line 4447
    :cond_1a8
    const-string v0, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4449
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4450
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4451
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 4452
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4453
    invoke-virtual {v7, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 4454
    nop

    .line 7766
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :cond_1a9
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 4395
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4421
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4422
    return-object p0

    .line 4424
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

    .line 4428
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 4429
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 4386
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4415
    const/4 v0, 0x1

    return v0
.end method
