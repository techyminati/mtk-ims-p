.class public abstract Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1890
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1893
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1945
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1946
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1947
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1948
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1949
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

    .line 1916
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

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

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x6bt
        0x3dt
        0x77t
        -0x62t
        0x13t
        -0x7bt
        0x24t
        -0x2bt
        0x7at
        0x6et
        0x60t
        -0x49t
        -0x5bt
        -0x46t
        -0x40t
        -0x2t
        -0x24t
        -0x2t
        -0x69t
        0x27t
        0x58t
        0x1ft
        -0x67t
        0x52t
        0x39t
        0x0t
        -0x7ft
        -0x2et
        0x53t
        0x21t
        -0x6at
        -0x21t
    .end array-data

    :array_1
    .array-data 1
        0x67t
        -0x26t
        -0x1t
        -0x5at
        0x74t
        -0x67t
        -0x78t
        0x6dt
        -0x76t
        -0x48t
        0x70t
        -0x58t
        -0xct
        -0x79t
        -0x25t
        0x53t
        -0xbt
        -0x20t
        -0x50t
        -0x67t
        0x7bt
        0x2ft
        -0x61t
        0x14t
        0x21t
        -0x4t
        0x7et
        0x54t
        0x3dt
        -0xdt
        0x5at
        -0x24t
    .end array-data

    :array_2
    .array-data 1
        0x49t
        0x47t
        -0x54t
        -0x7t
        -0x57t
        -0x21t
        0x67t
        0x52t
        -0x5et
        -0x3t
        0x19t
        -0x7dt
        0x14t
        0x56t
        0x59t
        -0x1at
        -0x78t
        -0x29t
        -0x51t
        -0x5ft
        -0x3bt
        0x23t
        0x7at
        0x52t
        -0x19t
        -0x22t
        0x0t
        0x2ct
        -0x3ft
        -0xft
        -0x63t
        -0x44t
    .end array-data

    :array_3
    .array-data 1
        -0x33t
        -0x59t
        0x52t
        -0x52t
        -0x55t
        -0x56t
        -0x44t
        0x20t
        0x48t
        0x6at
        -0x7et
        -0x54t
        0x57t
        -0x5dt
        -0x23t
        0x10t
        0x77t
        -0x7bt
        -0x40t
        0x6t
        0x9t
        0x4at
        0x34t
        -0x65t
        -0x3bt
        -0x1et
        0x24t
        -0x18t
        -0x56t
        0x22t
        -0x5ft
        0x7ct
    .end array-data

    :array_4
    .array-data 1
        -0x4t
        -0x3bt
        -0x38t
        -0x38t
        -0x75t
        -0x7bt
        -0x57t
        -0xat
        0x3ft
        -0x46t
        0x67t
        -0x27t
        -0x1at
        0x74t
        -0x26t
        0x46t
        0x6ct
        0x72t
        -0x57t
        -0x74t
        -0x5et
        -0x79t
        -0xdt
        0x43t
        -0x5t
        0x57t
        0x21t
        -0x30t
        -0x68t
        0x71t
        0x3ft
        -0x7at
    .end array-data

    :array_5
    .array-data 1
        0x5ct
        -0x72t
        -0x5t
        -0x47t
        -0x3ct
        0x51t
        -0x5bt
        -0x69t
        0x37t
        -0x13t
        0x2ct
        0x6ct
        0x20t
        0x23t
        0xat
        -0x52t
        0x47t
        0x45t
        -0x7dt
        -0x64t
        -0x60t
        0x1dt
        -0x80t
        -0x78t
        -0x2at
        -0x24t
        -0x37t
        0x2t
        0xet
        0x52t
        -0x2et
        -0x3bt
    .end array-data

    :array_6
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1898
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.6::IImsRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    const-string v3, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    const-string v4, "android.hardware.radio@1.2::IRadioIndication"

    const-string v5, "android.hardware.radio@1.1::IRadioIndication"

    const-string v6, "android.hardware.radio@1.0::IRadioIndication"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1910
    const-string v0, "vendor.mediatek.hardware.radio@3.6::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1934
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1954
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1955
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

    .line 1983
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 3576
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 3577
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_cd

    .line 3578
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3580
    goto/16 :goto_7

    .line 3563
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 3564
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 3565
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3567
    goto/16 :goto_7

    .line 3568
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3570
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 3571
    goto/16 :goto_7

    .line 3547
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 3548
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 3549
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3551
    goto/16 :goto_7

    .line 3552
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3554
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3555
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3556
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3558
    goto/16 :goto_7

    .line 3532
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 3533
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 3534
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3536
    goto/16 :goto_7

    .line 3537
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3539
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->ping()V

    .line 3540
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3542
    goto/16 :goto_7

    .line 3522
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 3523
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_cd

    .line 3524
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3526
    goto/16 :goto_7

    .line 3509
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 3510
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 3511
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3513
    goto/16 :goto_7

    .line 3514
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3516
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 3517
    goto/16 :goto_7

    .line 3476
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 3477
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 3478
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3480
    goto/16 :goto_7

    .line 3481
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3483
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3484
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3486
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 3488
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3489
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3490
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3491
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3492
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 3494
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 3495
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3496
    nop

    .line 3492
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3499
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3501
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3503
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3504
    goto/16 :goto_7

    .line 3460
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 3461
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 3462
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3464
    goto/16 :goto_7

    .line 3465
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3467
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3468
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3469
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3471
    goto/16 :goto_7

    .line 3446
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 3447
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 3448
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3450
    goto/16 :goto_7

    .line 3451
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3454
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3455
    goto/16 :goto_7

    .line 3430
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 3431
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 3432
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3434
    goto/16 :goto_7

    .line 3435
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3437
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3438
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3439
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3441
    goto/16 :goto_7

    .line 3415
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 3416
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 3417
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3419
    goto/16 :goto_7

    .line 3420
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.6::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3423
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3424
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsRedialEmergencyIndication(ILjava/lang/String;)V

    .line 3425
    goto/16 :goto_7

    .line 3401
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":Ljava/lang/String;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 3402
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 3403
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3405
    goto/16 :goto_7

    .line 3406
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3409
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 3410
    goto/16 :goto_7

    .line 3385
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 3386
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 3387
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3389
    goto/16 :goto_7

    .line 3390
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3393
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3394
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3395
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3396
    goto/16 :goto_7

    .line 3370
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 3371
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 3372
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3374
    goto/16 :goto_7

    .line 3375
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3378
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3379
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 3380
    goto/16 :goto_7

    .line 3355
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 3356
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 3357
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3358
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3359
    goto/16 :goto_7

    .line 3360
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3362
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3363
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3364
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 3365
    goto/16 :goto_7

    .line 3338
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 3339
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 3340
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3342
    goto/16 :goto_7

    .line 3343
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3346
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3347
    .local v2, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3348
    .local v3, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3349
    .local v4, "extra":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    goto/16 :goto_7

    .line 3324
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extra":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 3325
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 3326
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3328
    goto/16 :goto_7

    .line 3329
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3332
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 3333
    goto/16 :goto_7

    .line 3307
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 3308
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 3309
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3311
    goto/16 :goto_7

    .line 3312
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3314
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3315
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3316
    .local v2, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3317
    .local v3, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3318
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 3319
    goto/16 :goto_7

    .line 3290
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    .end local v3    # "configId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 3291
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 3292
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3294
    goto/16 :goto_7

    .line 3295
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3298
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3299
    .restart local v2    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3300
    .local v3, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3301
    .local v4, "value":I
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 3302
    goto/16 :goto_7

    .line 3276
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    .end local v3    # "featureId":I
    .end local v4    # "value":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 3277
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 3278
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3280
    goto/16 :goto_7

    .line 3281
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3284
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 3285
    goto/16 :goto_7

    .line 3261
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 3262
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 3263
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3264
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3265
    goto/16 :goto_7

    .line 3266
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3269
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3270
    .local v2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 3271
    goto/16 :goto_7

    .line 3242
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    :cond_29
    move v7, v1

    .line 3243
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_2a

    .line 3244
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3246
    goto/16 :goto_7

    .line 3247
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3250
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3251
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3252
    .local v13, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3253
    .local v14, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3254
    .local v15, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3255
    .local v16, "rawData":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    goto/16 :goto_7

    .line 3227
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 3228
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 3229
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3230
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3231
    goto/16 :goto_7

    .line 3232
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3234
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3235
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3236
    .local v2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 3237
    goto/16 :goto_7

    .line 3212
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 3213
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 3214
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3216
    goto/16 :goto_7

    .line 3217
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3220
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3221
    .local v2, "info":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3222
    goto/16 :goto_7

    .line 3196
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 3197
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 3198
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3200
    goto/16 :goto_7

    .line 3201
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3204
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3205
    .local v2, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3206
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 3207
    goto/16 :goto_7

    .line 3181
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iid":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 3182
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 3183
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3185
    goto/16 :goto_7

    .line 3186
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3189
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3190
    .local v2, "supportLteEcc":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 3191
    goto/16 :goto_7

    .line 3166
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "supportLteEcc":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 3167
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 3168
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3170
    goto/16 :goto_7

    .line 3171
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3174
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3175
    .local v2, "count":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 3176
    goto/16 :goto_7

    .line 3152
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "count":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 3153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 3154
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3156
    goto/16 :goto_7

    .line 3157
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3160
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 3161
    goto/16 :goto_7

    .line 3138
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 3139
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 3140
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3142
    goto/16 :goto_7

    .line 3143
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3146
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 3147
    goto/16 :goto_7

    .line 3122
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 3123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 3124
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3126
    goto/16 :goto_7

    .line 3127
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3130
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3131
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3132
    .local v3, "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsBearerDeactivation(IILjava/lang/String;)V

    .line 3133
    goto/16 :goto_7

    .line 3106
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 3107
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 3108
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3110
    goto/16 :goto_7

    .line 3111
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3114
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3115
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3116
    .restart local v3    # "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsBearerActivation(IILjava/lang/String;)V

    .line 3117
    goto/16 :goto_7

    .line 3091
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 3092
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 3093
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3095
    goto/16 :goto_7

    .line 3096
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3099
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3100
    .local v2, "isEnable":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 3101
    goto/16 :goto_7

    .line 3074
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isEnable":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 3075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 3076
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3078
    goto/16 :goto_7

    .line 3079
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3082
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3083
    .local v2, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3084
    .local v3, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3085
    .local v4, "cause":I
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 3086
    goto/16 :goto_7

    .line 3060
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "call_id":I
    .end local v3    # "ectResult":I
    .end local v4    # "cause":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 3061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 3062
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3064
    goto/16 :goto_7

    .line 3065
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3068
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 3069
    goto/16 :goto_7

    .line 3046
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 3047
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 3048
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3049
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3050
    goto/16 :goto_7

    .line 3051
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3054
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 3055
    goto/16 :goto_7

    .line 3032
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 3033
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 3034
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3036
    goto/16 :goto_7

    .line 3037
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3040
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 3041
    goto/16 :goto_7

    .line 3018
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 3019
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 3020
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3022
    goto/16 :goto_7

    .line 3023
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3025
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3026
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 3027
    goto/16 :goto_7

    .line 3002
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 3003
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 3004
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3005
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3006
    goto/16 :goto_7

    .line 3007
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3010
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3011
    .local v2, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3012
    .local v3, "capability":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 3013
    goto/16 :goto_7

    .line 2983
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "registerState":I
    .end local v3    # "capability":I
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    :cond_4b
    move v7, v1

    .line 2984
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_4c

    .line 2985
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2987
    goto/16 :goto_7

    .line 2988
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2991
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2992
    .restart local v12    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2993
    .restart local v13    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2994
    .restart local v14    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2995
    .restart local v15    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2996
    .restart local v16    # "rawData":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    goto/16 :goto_7

    .line 2968
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 2969
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 2970
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2972
    goto/16 :goto_7

    .line 2973
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2976
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2977
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 2978
    goto/16 :goto_7

    .line 2951
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 2952
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 2953
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2955
    goto/16 :goto_7

    .line 2956
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2958
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2959
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2960
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2961
    .local v3, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2962
    .local v4, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    goto/16 :goto_7

    .line 2932
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accountId":Ljava/lang/String;
    .end local v3    # "broadcastFlag":Ljava/lang/String;
    .end local v4    # "xuiInfo":Ljava/lang/String;
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    :cond_51
    move v7, v1

    .line 2933
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_52

    .line 2934
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2936
    goto/16 :goto_7

    .line 2937
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2940
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2941
    .local v12, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2942
    .local v13, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2943
    .local v14, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2944
    .local v15, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2945
    .local v16, "recvPktLost":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    goto/16 :goto_7

    .line 2916
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "pdnId":Ljava/lang/String;
    .end local v13    # "networkId":Ljava/lang/String;
    .end local v14    # "timer":Ljava/lang/String;
    .end local v15    # "sendPktLost":Ljava/lang/String;
    .end local v16    # "recvPktLost":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 2917
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 2918
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2919
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2920
    goto/16 :goto_7

    .line 2921
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2924
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2925
    .local v2, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2926
    .local v3, "result2":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 2927
    goto/16 :goto_7

    .line 2895
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result1":Ljava/lang/String;
    .end local v3    # "result2":Ljava/lang/String;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    :cond_55
    move v12, v1

    .line 2896
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v2, :cond_56

    .line 2897
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2898
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2899
    goto/16 :goto_7

    .line 2900
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2902
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2903
    .local v13, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2904
    .local v14, "clazz":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2905
    .local v15, "status":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2906
    .local v16, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2907
    .local v17, "lang":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2908
    .local v18, "errorcode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2909
    .local v19, "alertingPattern":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2910
    .local v20, "sipCause":Ljava/lang/String;
    move-object v0, v9

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    goto/16 :goto_7

    .line 2878
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":I
    .end local v14    # "clazz":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "lang":Ljava/lang/String;
    .end local v18    # "errorcode":Ljava/lang/String;
    .end local v19    # "alertingPattern":Ljava/lang/String;
    .end local v20    # "sipCause":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 2879
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 2880
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2881
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2882
    goto/16 :goto_7

    .line 2883
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2886
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2887
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2888
    .local v3, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2889
    .local v4, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    goto/16 :goto_7

    .line 2859
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "localVideoCap":Ljava/lang/String;
    .end local v4    # "remoteVideoCap":Ljava/lang/String;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    :cond_59
    move v7, v1

    .line 2860
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_5a

    .line 2861
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2863
    goto/16 :goto_7

    .line 2864
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2867
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2868
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2869
    .local v13, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2870
    .local v14, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2871
    .local v15, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2872
    .local v16, "pau":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    goto/16 :goto_7

    .line 2839
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "callMode":Ljava/lang/String;
    .end local v14    # "videoState":Ljava/lang/String;
    .end local v15    # "audioDirection":Ljava/lang/String;
    .end local v16    # "pau":Ljava/lang/String;
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    :cond_5b
    move v8, v1

    .line 2840
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_5c

    .line 2841
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2842
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2843
    goto/16 :goto_7

    .line 2844
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2846
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2847
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2848
    .local v13, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2849
    .local v14, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2850
    .local v15, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2851
    .local v16, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2852
    .local v17, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2853
    .local v18, "reasonText":Ljava/lang/String;
    move-object v0, v9

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    goto/16 :goto_7

    .line 2819
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "callId":Ljava/lang/String;
    .end local v14    # "dir":Ljava/lang/String;
    .end local v15    # "sipMsgType":Ljava/lang/String;
    .end local v16    # "method":Ljava/lang/String;
    .end local v17    # "responseCode":Ljava/lang/String;
    .end local v18    # "reasonText":Ljava/lang/String;
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    :cond_5d
    move v8, v1

    .line 2820
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_5e

    .line 2821
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2823
    goto/16 :goto_7

    .line 2824
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2826
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2827
    .restart local v12    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2828
    .local v13, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2829
    .local v14, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2830
    .local v15, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2831
    .local v16, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2832
    .local v17, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2833
    .local v18, "joinedCallId":Ljava/lang/String;
    move-object v0, v9

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    goto/16 :goto_7

    .line 2804
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "confCallId":Ljava/lang/String;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "num":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "cause":Ljava/lang/String;
    .end local v18    # "joinedCallId":Ljava/lang/String;
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 2805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 2806
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2808
    goto/16 :goto_7

    .line 2809
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2812
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2813
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 2814
    goto/16 :goto_7

    .line 2788
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 2789
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 2790
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2792
    goto/16 :goto_7

    .line 2793
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2796
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 2797
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2798
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 2799
    goto/16 :goto_7

    .line 2772
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 2773
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 2774
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2776
    goto/16 :goto_7

    .line 2777
    :cond_64
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2780
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2781
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2782
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2783
    goto/16 :goto_7

    .line 2757
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 2758
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 2759
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2761
    goto/16 :goto_7

    .line 2762
    :cond_66
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2765
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2766
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2767
    goto/16 :goto_7

    .line 2741
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 2742
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 2743
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2745
    goto/16 :goto_7

    .line 2746
    :cond_68
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2749
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2750
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2751
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2752
    goto/16 :goto_7

    .line 2726
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 2727
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 2728
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2730
    goto/16 :goto_7

    .line 2731
    :cond_6a
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2734
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2735
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2736
    goto/16 :goto_7

    .line 2710
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 2711
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 2712
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2714
    goto/16 :goto_7

    .line 2715
    :cond_6c
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2718
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2719
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2720
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2721
    goto/16 :goto_7

    .line 2694
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 2695
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 2696
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2698
    goto/16 :goto_7

    .line 2699
    :cond_6e
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2702
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2703
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2704
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2705
    goto/16 :goto_7

    .line 2678
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 2679
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 2680
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2682
    goto/16 :goto_7

    .line 2683
    :cond_70
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2686
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2687
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2688
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2689
    goto/16 :goto_7

    .line 2664
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 2665
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 2666
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2668
    goto/16 :goto_7

    .line 2669
    :cond_72
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2672
    .local v0, "info":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2673
    goto/16 :goto_7

    .line 2649
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 2650
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 2651
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2653
    goto/16 :goto_7

    .line 2654
    :cond_74
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2657
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2658
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2659
    goto/16 :goto_7

    .line 2633
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 2634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 2635
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2637
    goto/16 :goto_7

    .line 2638
    :cond_76
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2641
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2642
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2643
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2644
    goto/16 :goto_7

    .line 2617
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 2618
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 2619
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2621
    goto/16 :goto_7

    .line 2622
    :cond_78
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2625
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2626
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2627
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2628
    goto/16 :goto_7

    .line 2602
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 2603
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 2604
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2605
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2606
    goto/16 :goto_7

    .line 2607
    :cond_7a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2610
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2611
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2612
    goto/16 :goto_7

    .line 2586
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 2587
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 2588
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2590
    goto/16 :goto_7

    .line 2591
    :cond_7c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2594
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2595
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2596
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2597
    goto/16 :goto_7

    .line 2570
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 2571
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 2572
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2574
    goto/16 :goto_7

    .line 2575
    :cond_7e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2578
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2579
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2580
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2581
    goto/16 :goto_7

    .line 2555
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 2556
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 2557
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2559
    goto/16 :goto_7

    .line 2560
    :cond_80
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2563
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2564
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2565
    goto/16 :goto_7

    .line 2540
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 2541
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 2542
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2544
    goto/16 :goto_7

    .line 2545
    :cond_82
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2548
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2549
    .local v2, "state":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2550
    goto/16 :goto_7

    .line 2525
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 2526
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 2527
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2529
    goto/16 :goto_7

    .line 2530
    :cond_84
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2533
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2534
    .local v2, "activate":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2535
    goto/16 :goto_7

    .line 2511
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 2512
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 2513
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2515
    goto/16 :goto_7

    .line 2516
    :cond_86
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2519
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2520
    goto/16 :goto_7

    .line 2496
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 2497
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 2498
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2499
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2500
    goto/16 :goto_7

    .line 2501
    :cond_88
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2504
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2505
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2506
    goto/16 :goto_7

    .line 2481
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 2482
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 2483
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2484
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2485
    goto/16 :goto_7

    .line 2486
    :cond_8a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2489
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2490
    .local v2, "rat":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2491
    goto/16 :goto_7

    .line 2467
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 2468
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 2469
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2471
    goto/16 :goto_7

    .line 2472
    :cond_8c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2475
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->rilConnected(I)V

    .line 2476
    goto/16 :goto_7

    .line 2453
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 2454
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 2455
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2457
    goto/16 :goto_7

    .line 2458
    :cond_8e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2461
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2462
    goto/16 :goto_7

    .line 2438
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 2439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 2440
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2442
    goto/16 :goto_7

    .line 2443
    :cond_90
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2446
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2447
    .local v2, "version":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2448
    goto/16 :goto_7

    .line 2423
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":I
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 2424
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 2425
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2427
    goto/16 :goto_7

    .line 2428
    :cond_92
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2431
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2432
    .local v2, "cdmaSource":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2433
    goto/16 :goto_7

    .line 2409
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSource":I
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 2410
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 2411
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2413
    goto/16 :goto_7

    .line 2414
    :cond_94
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2417
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->resendIncallMute(I)V

    .line 2418
    goto/16 :goto_7

    .line 2394
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 2395
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 2396
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2398
    goto/16 :goto_7

    .line 2399
    :cond_96
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2402
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2403
    .local v2, "start":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2404
    goto/16 :goto_7

    .line 2378
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "start":Z
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 2379
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 2380
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2381
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2382
    goto/16 :goto_7

    .line 2383
    :cond_98
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2386
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2387
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2388
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2389
    goto/16 :goto_7

    .line 2363
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 2364
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 2365
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2367
    goto/16 :goto_7

    .line 2368
    :cond_9a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2371
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2372
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2373
    goto/16 :goto_7

    .line 2347
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 2348
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 2349
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2351
    goto/16 :goto_7

    .line 2352
    :cond_9c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2355
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2356
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2357
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2358
    goto/16 :goto_7

    .line 2333
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 2334
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 2335
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2336
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2337
    goto/16 :goto_7

    .line 2338
    :cond_9e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2341
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2342
    goto/16 :goto_7

    .line 2318
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 2319
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 2320
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2322
    goto/16 :goto_7

    .line 2323
    :cond_a0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2326
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2327
    .local v2, "state":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2328
    goto/16 :goto_7

    .line 2304
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 2305
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 2306
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2308
    goto/16 :goto_7

    .line 2309
    :cond_a2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2312
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2313
    goto/16 :goto_7

    .line 2289
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 2290
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 2291
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2292
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2293
    goto/16 :goto_7

    .line 2294
    :cond_a4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2297
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2298
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2299
    goto/16 :goto_7

    .line 2273
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 2274
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 2275
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2277
    goto/16 :goto_7

    .line 2278
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2281
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2282
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2283
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2284
    goto/16 :goto_7

    .line 2259
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 2260
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 2261
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2262
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2263
    goto/16 :goto_7

    .line 2264
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2267
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->simStatusChanged(I)V

    .line 2268
    goto/16 :goto_7

    .line 2242
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 2243
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 2244
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2246
    goto/16 :goto_7

    .line 2247
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2250
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2251
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2252
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2253
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2254
    goto/16 :goto_7

    .line 2226
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 2227
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 2228
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2230
    goto/16 :goto_7

    .line 2231
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2234
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2235
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2236
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2237
    goto/16 :goto_7

    .line 2212
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 2213
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 2214
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2216
    goto/16 :goto_7

    .line 2217
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2220
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2221
    goto/16 :goto_7

    .line 2197
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 2198
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 2199
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2201
    goto/16 :goto_7

    .line 2202
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2205
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2206
    .local v2, "timeout":J
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2207
    goto/16 :goto_7

    .line 2182
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timeout":J
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 2183
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 2184
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2186
    goto/16 :goto_7

    .line 2187
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2190
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2191
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2192
    goto/16 :goto_7

    .line 2167
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 2168
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 2169
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2171
    goto/16 :goto_7

    .line 2172
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2175
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2176
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2177
    goto/16 :goto_7

    .line 2153
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 2154
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 2155
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2157
    goto/16 :goto_7

    .line 2158
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2161
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2162
    goto/16 :goto_7

    .line 2137
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 2138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 2139
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2141
    goto/16 :goto_7

    .line 2142
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2145
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2146
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2147
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2148
    goto/16 :goto_7

    .line 2122
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 2123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 2124
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2126
    goto/16 :goto_7

    .line 2127
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2130
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2131
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2132
    goto/16 :goto_7

    .line 2106
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 2107
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 2108
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2110
    goto/16 :goto_7

    .line 2111
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2114
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2115
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2116
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2117
    goto/16 :goto_7

    .line 2090
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 2091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 2092
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2094
    goto/16 :goto_7

    .line 2095
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2098
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2099
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2100
    .local v3, "receivedTime":J
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2101
    goto/16 :goto_7

    .line 2074
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 2075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 2076
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2078
    goto/16 :goto_7

    .line 2079
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2082
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2083
    .local v2, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2084
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2085
    goto/16 :goto_7

    .line 2059
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 2060
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 2061
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2063
    goto/16 :goto_7

    .line 2064
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2067
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2068
    .local v2, "recordNumber":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2069
    goto/16 :goto_7

    .line 2044
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "recordNumber":I
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 2045
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 2046
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2048
    goto/16 :goto_7

    .line 2049
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2052
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2053
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2054
    goto/16 :goto_7

    .line 2029
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 2030
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 2031
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2033
    goto/16 :goto_7

    .line 2034
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2037
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2038
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2039
    goto :goto_7

    .line 2015
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 2016
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 2017
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2019
    goto :goto_7

    .line 2020
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2023
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->networkStateChanged(I)V

    .line 2024
    goto :goto_7

    .line 2001
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 2002
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 2003
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2005
    goto :goto_7

    .line 2006
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2009
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 2010
    goto :goto_7

    .line 1986
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 1987
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 1988
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1989
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1990
    goto :goto_7

    .line 1991
    :cond_cc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1994
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1995
    .local v2, "radioState":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 1996
    nop

    .line 3585
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "radioState":I
    :cond_cd
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1939
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1965
    const-string v0, "vendor.mediatek.hardware.radio@3.6::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    return-object p0

    .line 1968
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

    .line 1972
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1973
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1930
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_6/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1959
    const/4 v0, 0x1

    return v0
.end method
