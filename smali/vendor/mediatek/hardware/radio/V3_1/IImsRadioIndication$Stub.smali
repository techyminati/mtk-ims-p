.class public abstract Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1870
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1873
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1923
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1924
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1925
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1926
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1927
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

    .line 1895
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    .line 1878
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    const-string v3, "android.hardware.radio@1.2::IRadioIndication"

    const-string v4, "android.hardware.radio@1.1::IRadioIndication"

    const-string v5, "android.hardware.radio@1.0::IRadioIndication"

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

    .line 1889
    const-string v0, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1912
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1932
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1933
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

    .line 1961
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 3539
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 3540
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_cb

    .line 3541
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3543
    goto/16 :goto_7

    .line 3526
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 3527
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 3528
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3530
    goto/16 :goto_7

    .line 3531
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3533
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 3534
    goto/16 :goto_7

    .line 3510
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 3511
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 3512
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3513
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3514
    goto/16 :goto_7

    .line 3515
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3517
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3518
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3519
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3521
    goto/16 :goto_7

    .line 3495
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 3496
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 3497
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3499
    goto/16 :goto_7

    .line 3500
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->ping()V

    .line 3503
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3504
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3505
    goto/16 :goto_7

    .line 3485
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 3486
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_cb

    .line 3487
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3489
    goto/16 :goto_7

    .line 3472
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 3473
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 3474
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3475
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3476
    goto/16 :goto_7

    .line 3477
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3479
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 3480
    goto/16 :goto_7

    .line 3439
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 3440
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 3441
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3443
    goto/16 :goto_7

    .line 3444
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3446
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3447
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3449
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 3451
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3452
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3453
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3454
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3455
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 3457
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 3458
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3459
    nop

    .line 3455
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3462
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3464
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3466
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3467
    goto/16 :goto_7

    .line 3423
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 3424
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 3425
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3427
    goto/16 :goto_7

    .line 3428
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3430
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3431
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3432
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3434
    goto/16 :goto_7

    .line 3409
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 3410
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 3411
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3413
    goto/16 :goto_7

    .line 3414
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3416
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3418
    goto/16 :goto_7

    .line 3393
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 3394
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 3395
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3397
    goto/16 :goto_7

    .line 3398
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3400
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3401
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3402
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3403
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3404
    goto/16 :goto_7

    .line 3379
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 3380
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 3381
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3383
    goto/16 :goto_7

    .line 3384
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3387
    .local v0, "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->noEmergencyCallbackMode(I)V

    .line 3388
    goto/16 :goto_7

    .line 3363
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 3364
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 3365
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3367
    goto/16 :goto_7

    .line 3368
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3371
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3372
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3373
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3374
    goto/16 :goto_7

    .line 3348
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 3349
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 3350
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3351
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3352
    goto/16 :goto_7

    .line 3353
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3356
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3357
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 3358
    goto/16 :goto_7

    .line 3333
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 3334
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 3335
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3336
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3337
    goto/16 :goto_7

    .line 3338
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3341
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3342
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 3343
    goto/16 :goto_7

    .line 3316
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 3317
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 3318
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3320
    goto/16 :goto_7

    .line 3321
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3324
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3325
    .local v2, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3326
    .local v3, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3327
    .local v4, "extra":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    goto/16 :goto_7

    .line 3302
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extra":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 3303
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 3304
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3306
    goto/16 :goto_7

    .line 3307
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3310
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 3311
    goto/16 :goto_7

    .line 3285
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 3286
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 3287
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3288
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3289
    goto/16 :goto_7

    .line 3290
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3293
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3294
    .local v2, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3295
    .local v3, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3296
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 3297
    goto/16 :goto_7

    .line 3268
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    .end local v3    # "configId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 3269
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 3270
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3271
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3272
    goto/16 :goto_7

    .line 3273
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3276
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3277
    .restart local v2    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3278
    .local v3, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3279
    .local v4, "value":I
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 3280
    goto/16 :goto_7

    .line 3254
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    .end local v3    # "featureId":I
    .end local v4    # "value":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 3255
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 3256
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3257
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3258
    goto/16 :goto_7

    .line 3259
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3262
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 3263
    goto/16 :goto_7

    .line 3239
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 3240
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 3241
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3243
    goto/16 :goto_7

    .line 3244
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3247
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3248
    .local v2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 3249
    goto/16 :goto_7

    .line 3220
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    :cond_27
    move v7, v1

    .line 3221
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_28

    .line 3222
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3224
    goto/16 :goto_7

    .line 3225
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3228
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3229
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3230
    .local v13, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3231
    .local v14, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3232
    .local v15, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3233
    .local v16, "rawData":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    goto/16 :goto_7

    .line 3205
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 3206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 3207
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3209
    goto/16 :goto_7

    .line 3210
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3213
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3214
    .local v2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 3215
    goto/16 :goto_7

    .line 3190
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 3191
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 3192
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3194
    goto/16 :goto_7

    .line 3195
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3198
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3199
    .local v2, "info":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3200
    goto/16 :goto_7

    .line 3174
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 3175
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 3176
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3178
    goto/16 :goto_7

    .line 3179
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3182
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3183
    .local v2, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3184
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 3185
    goto/16 :goto_7

    .line 3159
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iid":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 3160
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 3161
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3163
    goto/16 :goto_7

    .line 3164
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3167
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3168
    .local v2, "supportLteEcc":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 3169
    goto/16 :goto_7

    .line 3144
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "supportLteEcc":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 3145
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 3146
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3148
    goto/16 :goto_7

    .line 3149
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3152
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3153
    .local v2, "count":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 3154
    goto/16 :goto_7

    .line 3130
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "count":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 3131
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 3132
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3134
    goto/16 :goto_7

    .line 3135
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3138
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 3139
    goto/16 :goto_7

    .line 3116
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 3117
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 3118
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3119
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3120
    goto/16 :goto_7

    .line 3121
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3124
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 3125
    goto/16 :goto_7

    .line 3100
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 3101
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 3102
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3104
    goto/16 :goto_7

    .line 3105
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3108
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3109
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3110
    .local v3, "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsBearerDeactivation(IILjava/lang/String;)V

    .line 3111
    goto/16 :goto_7

    .line 3084
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 3085
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 3086
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3088
    goto/16 :goto_7

    .line 3089
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3092
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3093
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3094
    .restart local v3    # "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsBearerActivation(IILjava/lang/String;)V

    .line 3095
    goto/16 :goto_7

    .line 3069
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 3070
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 3071
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3073
    goto/16 :goto_7

    .line 3074
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3077
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3078
    .local v2, "isEnable":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 3079
    goto/16 :goto_7

    .line 3052
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isEnable":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 3053
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 3054
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3056
    goto/16 :goto_7

    .line 3057
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3060
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3061
    .local v2, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3062
    .local v3, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3063
    .local v4, "cause":I
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 3064
    goto/16 :goto_7

    .line 3038
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "call_id":I
    .end local v3    # "ectResult":I
    .end local v4    # "cause":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 3039
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 3040
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3042
    goto/16 :goto_7

    .line 3043
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3046
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 3047
    goto/16 :goto_7

    .line 3024
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 3025
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 3026
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3028
    goto/16 :goto_7

    .line 3029
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3031
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3032
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 3033
    goto/16 :goto_7

    .line 3010
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 3011
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 3012
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3014
    goto/16 :goto_7

    .line 3015
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3018
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 3019
    goto/16 :goto_7

    .line 2996
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 2997
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 2998
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3000
    goto/16 :goto_7

    .line 3001
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3004
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 3005
    goto/16 :goto_7

    .line 2980
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 2981
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 2982
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2984
    goto/16 :goto_7

    .line 2985
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2988
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2989
    .local v2, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2990
    .local v3, "capability":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 2991
    goto/16 :goto_7

    .line 2961
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "registerState":I
    .end local v3    # "capability":I
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    :cond_49
    move v7, v1

    .line 2962
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_4a

    .line 2963
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2965
    goto/16 :goto_7

    .line 2966
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2969
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2970
    .restart local v12    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2971
    .restart local v13    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2972
    .restart local v14    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2973
    .restart local v15    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2974
    .restart local v16    # "rawData":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    goto/16 :goto_7

    .line 2946
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 2947
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 2948
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2950
    goto/16 :goto_7

    .line 2951
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2954
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2955
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 2956
    goto/16 :goto_7

    .line 2929
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 2930
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 2931
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2933
    goto/16 :goto_7

    .line 2934
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2937
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2938
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2939
    .local v3, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2940
    .local v4, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    goto/16 :goto_7

    .line 2910
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accountId":Ljava/lang/String;
    .end local v3    # "broadcastFlag":Ljava/lang/String;
    .end local v4    # "xuiInfo":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    :cond_4f
    move v7, v1

    .line 2911
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_50

    .line 2912
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2914
    goto/16 :goto_7

    .line 2915
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2918
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2919
    .local v12, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2920
    .local v13, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2921
    .local v14, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2922
    .local v15, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2923
    .local v16, "recvPktLost":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    goto/16 :goto_7

    .line 2894
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "pdnId":Ljava/lang/String;
    .end local v13    # "networkId":Ljava/lang/String;
    .end local v14    # "timer":Ljava/lang/String;
    .end local v15    # "sendPktLost":Ljava/lang/String;
    .end local v16    # "recvPktLost":Ljava/lang/String;
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 2895
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 2896
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2898
    goto/16 :goto_7

    .line 2899
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2902
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2903
    .local v2, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2904
    .local v3, "result2":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 2905
    goto/16 :goto_7

    .line 2873
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result1":Ljava/lang/String;
    .end local v3    # "result2":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    :cond_53
    move v12, v1

    .line 2874
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v2, :cond_54

    .line 2875
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2877
    goto/16 :goto_7

    .line 2878
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2881
    .local v13, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2882
    .local v14, "clazz":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2883
    .local v15, "status":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2884
    .local v16, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2885
    .local v17, "lang":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2886
    .local v18, "errorcode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2887
    .local v19, "alertingPattern":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2888
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    goto/16 :goto_7

    .line 2856
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":I
    .end local v14    # "clazz":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "lang":Ljava/lang/String;
    .end local v18    # "errorcode":Ljava/lang/String;
    .end local v19    # "alertingPattern":Ljava/lang/String;
    .end local v20    # "sipCause":Ljava/lang/String;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 2857
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 2858
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2860
    goto/16 :goto_7

    .line 2861
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2864
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2865
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2866
    .local v3, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2867
    .local v4, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    goto/16 :goto_7

    .line 2837
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "localVideoCap":Ljava/lang/String;
    .end local v4    # "remoteVideoCap":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    :cond_57
    move v7, v1

    .line 2838
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_58

    .line 2839
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2841
    goto/16 :goto_7

    .line 2842
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 2845
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2846
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2847
    .local v13, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2848
    .local v14, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2849
    .local v15, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2850
    .local v16, "pau":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    goto/16 :goto_7

    .line 2817
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "callMode":Ljava/lang/String;
    .end local v14    # "videoState":Ljava/lang/String;
    .end local v15    # "audioDirection":Ljava/lang/String;
    .end local v16    # "pau":Ljava/lang/String;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    :cond_59
    move v8, v1

    .line 2818
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_5a

    .line 2819
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2821
    goto/16 :goto_7

    .line 2822
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2825
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2826
    .local v13, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2827
    .local v14, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2828
    .local v15, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2829
    .local v16, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2830
    .local v17, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2831
    .local v18, "reasonText":Ljava/lang/String;
    move-object v0, v9

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    goto/16 :goto_7

    .line 2797
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "callId":Ljava/lang/String;
    .end local v14    # "dir":Ljava/lang/String;
    .end local v15    # "sipMsgType":Ljava/lang/String;
    .end local v16    # "method":Ljava/lang/String;
    .end local v17    # "responseCode":Ljava/lang/String;
    .end local v18    # "reasonText":Ljava/lang/String;
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    :cond_5b
    move v8, v1

    .line 2798
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_5c

    .line 2799
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2801
    goto/16 :goto_7

    .line 2802
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2805
    .restart local v12    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2806
    .local v13, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2807
    .local v14, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2808
    .local v15, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2809
    .local v16, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2810
    .local v17, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2811
    .local v18, "joinedCallId":Ljava/lang/String;
    move-object v0, v9

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    goto/16 :goto_7

    .line 2782
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "confCallId":Ljava/lang/String;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "num":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "cause":Ljava/lang/String;
    .end local v18    # "joinedCallId":Ljava/lang/String;
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 2783
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 2784
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2786
    goto/16 :goto_7

    .line 2787
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2790
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2791
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 2792
    goto/16 :goto_7

    .line 2766
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 2767
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 2768
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2770
    goto/16 :goto_7

    .line 2771
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2774
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 2775
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2776
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 2777
    goto/16 :goto_7

    .line 2750
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 2751
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 2752
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2754
    goto/16 :goto_7

    .line 2755
    :cond_62
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2758
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 2759
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2760
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 2761
    goto/16 :goto_7

    .line 2735
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 2736
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 2737
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2739
    goto/16 :goto_7

    .line 2740
    :cond_64
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2743
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2744
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 2745
    goto/16 :goto_7

    .line 2719
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 2720
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 2721
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2723
    goto/16 :goto_7

    .line 2724
    :cond_66
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2727
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 2728
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2729
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 2730
    goto/16 :goto_7

    .line 2704
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 2705
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 2706
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2708
    goto/16 :goto_7

    .line 2709
    :cond_68
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2712
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2713
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 2714
    goto/16 :goto_7

    .line 2688
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 2689
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 2690
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2692
    goto/16 :goto_7

    .line 2693
    :cond_6a
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2696
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 2697
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2698
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 2699
    goto/16 :goto_7

    .line 2672
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 2673
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 2674
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2676
    goto/16 :goto_7

    .line 2677
    :cond_6c
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2680
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2681
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2682
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2683
    goto/16 :goto_7

    .line 2656
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 2657
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 2658
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2659
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2660
    goto/16 :goto_7

    .line 2661
    :cond_6e
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2663
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2664
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2665
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2666
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2667
    goto/16 :goto_7

    .line 2642
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 2643
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 2644
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2645
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2646
    goto/16 :goto_7

    .line 2647
    :cond_70
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2649
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2650
    .local v0, "info":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2651
    goto/16 :goto_7

    .line 2627
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 2628
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 2629
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2631
    goto/16 :goto_7

    .line 2632
    :cond_72
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2635
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2636
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2637
    goto/16 :goto_7

    .line 2611
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 2612
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 2613
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2615
    goto/16 :goto_7

    .line 2616
    :cond_74
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2619
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2620
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2621
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2622
    goto/16 :goto_7

    .line 2595
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 2596
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 2597
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2599
    goto/16 :goto_7

    .line 2600
    :cond_76
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2603
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2604
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2605
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2606
    goto/16 :goto_7

    .line 2580
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 2581
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 2582
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2584
    goto/16 :goto_7

    .line 2585
    :cond_78
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2588
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2589
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2590
    goto/16 :goto_7

    .line 2564
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 2565
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 2566
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2568
    goto/16 :goto_7

    .line 2569
    :cond_7a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2572
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2573
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2574
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2575
    goto/16 :goto_7

    .line 2548
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 2549
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 2550
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2552
    goto/16 :goto_7

    .line 2553
    :cond_7c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2556
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2557
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2558
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2559
    goto/16 :goto_7

    .line 2533
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 2534
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 2535
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2537
    goto/16 :goto_7

    .line 2538
    :cond_7e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2541
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2542
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2543
    goto/16 :goto_7

    .line 2518
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 2519
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 2520
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2521
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2522
    goto/16 :goto_7

    .line 2523
    :cond_80
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2526
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2527
    .local v2, "state":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2528
    goto/16 :goto_7

    .line 2503
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 2504
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 2505
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2507
    goto/16 :goto_7

    .line 2508
    :cond_82
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2511
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2512
    .local v2, "activate":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2513
    goto/16 :goto_7

    .line 2489
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 2490
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 2491
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2492
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2493
    goto/16 :goto_7

    .line 2494
    :cond_84
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2496
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2497
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2498
    goto/16 :goto_7

    .line 2474
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 2475
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 2476
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2477
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2478
    goto/16 :goto_7

    .line 2479
    :cond_86
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2482
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2483
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2484
    goto/16 :goto_7

    .line 2459
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 2460
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 2461
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2463
    goto/16 :goto_7

    .line 2464
    :cond_88
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2467
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2468
    .local v2, "rat":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2469
    goto/16 :goto_7

    .line 2445
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 2446
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 2447
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2449
    goto/16 :goto_7

    .line 2450
    :cond_8a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2453
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->rilConnected(I)V

    .line 2454
    goto/16 :goto_7

    .line 2431
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 2432
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 2433
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2434
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2435
    goto/16 :goto_7

    .line 2436
    :cond_8c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2439
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2440
    goto/16 :goto_7

    .line 2416
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 2417
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 2418
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2420
    goto/16 :goto_7

    .line 2421
    :cond_8e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2424
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2425
    .local v2, "version":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2426
    goto/16 :goto_7

    .line 2401
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":I
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 2402
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 2403
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2405
    goto/16 :goto_7

    .line 2406
    :cond_90
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2409
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2410
    .local v2, "cdmaSource":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2411
    goto/16 :goto_7

    .line 2387
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSource":I
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 2388
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 2389
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2391
    goto/16 :goto_7

    .line 2392
    :cond_92
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2395
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->resendIncallMute(I)V

    .line 2396
    goto/16 :goto_7

    .line 2372
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 2373
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 2374
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2376
    goto/16 :goto_7

    .line 2377
    :cond_94
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2380
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2381
    .local v2, "start":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2382
    goto/16 :goto_7

    .line 2356
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "start":Z
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 2357
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 2358
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2360
    goto/16 :goto_7

    .line 2361
    :cond_96
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2364
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2365
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2366
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2367
    goto/16 :goto_7

    .line 2341
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 2342
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 2343
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2345
    goto/16 :goto_7

    .line 2346
    :cond_98
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2349
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2350
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2351
    goto/16 :goto_7

    .line 2325
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 2326
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 2327
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2329
    goto/16 :goto_7

    .line 2330
    :cond_9a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2333
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2334
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2335
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2336
    goto/16 :goto_7

    .line 2311
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 2312
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 2313
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2315
    goto/16 :goto_7

    .line 2316
    :cond_9c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2319
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2320
    goto/16 :goto_7

    .line 2296
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 2297
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 2298
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2300
    goto/16 :goto_7

    .line 2301
    :cond_9e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2304
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2305
    .local v2, "state":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2306
    goto/16 :goto_7

    .line 2282
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 2283
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 2284
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2286
    goto/16 :goto_7

    .line 2287
    :cond_a0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2289
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2290
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2291
    goto/16 :goto_7

    .line 2267
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 2268
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 2269
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2271
    goto/16 :goto_7

    .line 2272
    :cond_a2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2275
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2276
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2277
    goto/16 :goto_7

    .line 2251
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 2252
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 2253
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2255
    goto/16 :goto_7

    .line 2256
    :cond_a4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2259
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2260
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2261
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2262
    goto/16 :goto_7

    .line 2237
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 2238
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 2239
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2241
    goto/16 :goto_7

    .line 2242
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2245
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->simStatusChanged(I)V

    .line 2246
    goto/16 :goto_7

    .line 2220
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 2221
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 2222
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2224
    goto/16 :goto_7

    .line 2225
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2228
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2229
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2230
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2231
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2232
    goto/16 :goto_7

    .line 2204
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 2205
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 2206
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2208
    goto/16 :goto_7

    .line 2209
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2212
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2213
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2214
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2215
    goto/16 :goto_7

    .line 2190
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 2191
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 2192
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2194
    goto/16 :goto_7

    .line 2195
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2198
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2199
    goto/16 :goto_7

    .line 2175
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 2176
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 2177
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2179
    goto/16 :goto_7

    .line 2180
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2183
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2184
    .local v2, "timeout":J
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2185
    goto/16 :goto_7

    .line 2160
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timeout":J
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 2161
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 2162
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2164
    goto/16 :goto_7

    .line 2165
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2168
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2169
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2170
    goto/16 :goto_7

    .line 2145
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 2146
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 2147
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2149
    goto/16 :goto_7

    .line 2150
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2153
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2154
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2155
    goto/16 :goto_7

    .line 2131
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 2132
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 2133
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2134
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2135
    goto/16 :goto_7

    .line 2136
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2139
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2140
    goto/16 :goto_7

    .line 2115
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 2116
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 2117
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2119
    goto/16 :goto_7

    .line 2120
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2123
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2124
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2125
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2126
    goto/16 :goto_7

    .line 2100
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 2101
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 2102
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2104
    goto/16 :goto_7

    .line 2105
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2108
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2109
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2110
    goto/16 :goto_7

    .line 2084
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 2085
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 2086
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2088
    goto/16 :goto_7

    .line 2089
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2092
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2093
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2094
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2095
    goto/16 :goto_7

    .line 2068
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 2069
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 2070
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2071
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2072
    goto/16 :goto_7

    .line 2073
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2076
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2077
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2078
    .local v3, "receivedTime":J
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2079
    goto/16 :goto_7

    .line 2052
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 2053
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 2054
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2056
    goto/16 :goto_7

    .line 2057
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2060
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2061
    .local v2, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2062
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2063
    goto/16 :goto_7

    .line 2037
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 2038
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 2039
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2040
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2041
    goto/16 :goto_7

    .line 2042
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2045
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2046
    .local v2, "recordNumber":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2047
    goto/16 :goto_7

    .line 2022
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "recordNumber":I
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 2023
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 2024
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2025
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2026
    goto/16 :goto_7

    .line 2027
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2030
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2031
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2032
    goto/16 :goto_7

    .line 2007
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 2008
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 2009
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2011
    goto/16 :goto_7

    .line 2012
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2015
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2016
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2017
    goto :goto_7

    .line 1993
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 1994
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 1995
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1997
    goto :goto_7

    .line 1998
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2001
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->networkStateChanged(I)V

    .line 2002
    goto :goto_7

    .line 1979
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 1980
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 1981
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1983
    goto :goto_7

    .line 1984
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1987
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 1988
    goto :goto_7

    .line 1964
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 1965
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 1966
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1968
    goto :goto_7

    .line 1969
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1972
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1973
    .local v2, "radioState":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 1974
    nop

    .line 3548
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "radioState":I
    :cond_cb
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1917
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1943
    const-string v0, "vendor.mediatek.hardware.radio@3.1::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    return-object p0

    .line 1946
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

    .line 1950
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1951
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1908
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_1/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1937
    const/4 v0, 0x1

    return v0
.end method
