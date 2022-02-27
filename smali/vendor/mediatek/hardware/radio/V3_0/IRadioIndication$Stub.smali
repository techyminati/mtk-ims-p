.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2711
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2714
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2762
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2763
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2764
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2765
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2766
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

    .line 2735
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
        -0x5et
        -0x49t
        -0x2ct
        0x27t
        -0x36t
        -0x3ft
        0x0t
        -0x2at
        -0x59t
        -0x4dt
        -0x57t
        -0x3ct
        -0x24t
        -0x26t
        -0x78t
        -0x2ft
        0xat
        0x63t
        0x6at
        -0x14t
        -0x59t
        -0x7dt
        -0x74t
        0x3et
        0x27t
        0x4ct
        -0x68t
        -0x11t
        -0x1dt
        -0x77t
        0x54t
        0x7ft
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    .line 2719
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    const-string v2, "android.hardware.radio@1.2::IRadioIndication"

    const-string v3, "android.hardware.radio@1.1::IRadioIndication"

    const-string v4, "android.hardware.radio@1.0::IRadioIndication"

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

    .line 2729
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2751
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2771
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2772
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2800
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 4706
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 4707
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_fd

    .line 4708
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4709
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4710
    goto/16 :goto_7

    .line 4693
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 4694
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 4695
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4697
    goto/16 :goto_7

    .line 4698
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4700
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 4701
    goto/16 :goto_7

    .line 4677
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 4678
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 4679
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4680
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4681
    goto/16 :goto_7

    .line 4682
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4684
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4685
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4686
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4688
    goto/16 :goto_7

    .line 4662
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 4663
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 4664
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4666
    goto/16 :goto_7

    .line 4667
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->ping()V

    .line 4670
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4672
    goto/16 :goto_7

    .line 4652
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 4653
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_fd

    .line 4654
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4656
    goto/16 :goto_7

    .line 4639
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 4640
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 4641
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4643
    goto/16 :goto_7

    .line 4644
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4646
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 4647
    goto/16 :goto_7

    .line 4606
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 4607
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 4608
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4610
    goto/16 :goto_7

    .line 4611
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4613
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4614
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4616
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4618
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4619
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4620
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4621
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 4622
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 4624
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 4625
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4626
    nop

    .line 4622
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4629
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4631
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4633
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4634
    goto/16 :goto_7

    .line 4590
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 4591
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 4592
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4594
    goto/16 :goto_7

    .line 4595
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4597
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4598
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4599
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4600
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4601
    goto/16 :goto_7

    .line 4576
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 4577
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 4578
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4580
    goto/16 :goto_7

    .line 4581
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4583
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4584
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4585
    goto/16 :goto_7

    .line 4560
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 4561
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 4562
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4564
    goto/16 :goto_7

    .line 4565
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4568
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4569
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4570
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4571
    goto/16 :goto_7

    .line 4545
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 4546
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 4547
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4548
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4549
    goto/16 :goto_7

    .line 4550
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4553
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4554
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 4555
    goto/16 :goto_7

    .line 4530
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 4531
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 4532
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4534
    goto/16 :goto_7

    .line 4535
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4538
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4539
    .local v2, "dsbpState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->dsbpStateChanged(II)V

    .line 4540
    goto/16 :goto_7

    .line 4515
    .end local v0    # "indicationType":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dsbpState":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 4516
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 4517
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4519
    goto/16 :goto_7

    .line 4520
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4523
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4524
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 4525
    goto/16 :goto_7

    .line 4500
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 4501
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 4502
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4504
    goto/16 :goto_7

    .line 4505
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4508
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4509
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 4510
    goto/16 :goto_7

    .line 4485
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 4486
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 4487
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4488
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4489
    goto/16 :goto_7

    .line 4490
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4492
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4493
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4494
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 4495
    goto/16 :goto_7

    .line 4470
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mccmnc":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 4471
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 4472
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4474
    goto/16 :goto_7

    .line 4475
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4478
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4479
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 4480
    goto/16 :goto_7

    .line 4455
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 4456
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 4457
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4459
    goto/16 :goto_7

    .line 4460
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4463
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4464
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 4465
    goto/16 :goto_7

    .line 4440
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 4441
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 4442
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4444
    goto/16 :goto_7

    .line 4445
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4448
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4449
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onLteAccessStratumStateChanged(ILjava/util/ArrayList;)V

    .line 4450
    goto/16 :goto_7

    .line 4426
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 4427
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 4428
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4430
    goto/16 :goto_7

    .line 4431
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4434
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 4435
    goto/16 :goto_7

    .line 4412
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 4413
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 4414
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4415
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4416
    goto/16 :goto_7

    .line 4417
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4419
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4420
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 4421
    goto/16 :goto_7

    .line 4397
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 4398
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 4399
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4400
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4401
    goto/16 :goto_7

    .line 4402
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4405
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4406
    .restart local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->volteLteConnectionStatus(ILjava/util/ArrayList;)V

    .line 4407
    goto/16 :goto_7

    .line 4382
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 4383
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 4384
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4385
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4386
    goto/16 :goto_7

    .line 4387
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4390
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4391
    .local v2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 4392
    goto/16 :goto_7

    .line 4367
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 4368
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 4369
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4370
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4371
    goto/16 :goto_7

    .line 4372
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4375
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4376
    .local v2, "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onPcoStatus(ILjava/util/ArrayList;)V

    .line 4377
    goto/16 :goto_7

    .line 4351
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 4352
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 4353
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4355
    goto/16 :goto_7

    .line 4356
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4359
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;-><init>()V

    .line 4360
    .local v2, "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4361
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;)V

    .line 4362
    goto/16 :goto_7

    .line 4336
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 4337
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 4338
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4339
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4340
    goto/16 :goto_7

    .line 4341
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4344
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4345
    .local v2, "apnClassType":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->mdChangedApnInd(II)V

    .line 4346
    goto/16 :goto_7

    .line 4322
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnClassType":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 4323
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 4324
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4325
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4326
    goto/16 :goto_7

    .line 4327
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4330
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->resetAttachApnInd(I)V

    .line 4331
    goto/16 :goto_7

    .line 4308
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 4309
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 4310
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4311
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4312
    goto/16 :goto_7

    .line 4313
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4316
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onStkMenuReset(I)V

    .line 4317
    goto/16 :goto_7

    .line 4294
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 4295
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 4296
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4297
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4298
    goto/16 :goto_7

    .line 4299
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4302
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->triggerOtaSP(I)V

    .line 4303
    goto/16 :goto_7

    .line 4279
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 4280
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 4281
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4282
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4283
    goto/16 :goto_7

    .line 4284
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4286
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4287
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4288
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 4289
    goto/16 :goto_7

    .line 4264
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 4265
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 4266
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4267
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4268
    goto/16 :goto_7

    .line 4269
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4271
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4272
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4273
    .local v2, "cid":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 4274
    goto/16 :goto_7

    .line 4248
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 4249
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 4250
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4251
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4252
    goto/16 :goto_7

    .line 4253
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4256
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 4257
    .local v2, "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4258
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 4259
    goto/16 :goto_7

    .line 4232
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 4233
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 4234
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4235
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4236
    goto/16 :goto_7

    .line 4237
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4239
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4240
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 4241
    .restart local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4242
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 4243
    goto/16 :goto_7

    .line 4217
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 4218
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 4219
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4221
    goto/16 :goto_7

    .line 4222
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4225
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4226
    .local v2, "lteBand":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->responseLteNetworkInfo(II)V

    .line 4227
    goto/16 :goto_7

    .line 4201
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lteBand":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 4202
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 4203
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4204
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4205
    goto/16 :goto_7

    .line 4206
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4209
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 4210
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4211
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 4212
    goto/16 :goto_7

    .line 4186
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 4187
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 4188
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4190
    goto/16 :goto_7

    .line 4191
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4194
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4195
    .local v2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 4196
    goto/16 :goto_7

    .line 4171
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 4172
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 4173
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4174
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4175
    goto/16 :goto_7

    .line 4176
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4178
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4179
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4180
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 4181
    goto/16 :goto_7

    .line 4156
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 4157
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 4158
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4160
    goto/16 :goto_7

    .line 4161
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4164
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4165
    .local v2, "allowed":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->dataAllowedNotification(II)V

    .line 4166
    goto/16 :goto_7

    .line 4141
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allowed":I
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 4142
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 4143
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4145
    goto/16 :goto_7

    .line 4146
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4149
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4150
    .local v2, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 4151
    goto/16 :goto_7

    .line 4126
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 4127
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 4128
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4129
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4130
    goto/16 :goto_7

    .line 4131
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4134
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4135
    .local v2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 4136
    goto/16 :goto_7

    .line 4111
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 4112
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 4113
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4115
    goto/16 :goto_7

    .line 4116
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4119
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4120
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 4121
    goto/16 :goto_7

    .line 4096
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 4097
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 4098
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4100
    goto/16 :goto_7

    .line 4101
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4103
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4104
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4105
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 4106
    goto/16 :goto_7

    .line 4081
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 4082
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 4083
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4085
    goto/16 :goto_7

    .line 4086
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4089
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4090
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 4091
    goto/16 :goto_7

    .line 4066
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 4067
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 4068
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4070
    goto/16 :goto_7

    .line 4071
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4074
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4075
    .local v2, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 4076
    goto/16 :goto_7

    .line 4051
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "esnMeid":Ljava/lang/String;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 4052
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 4053
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4055
    goto/16 :goto_7

    .line 4056
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4059
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4060
    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 4061
    goto/16 :goto_7

    .line 4036
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 4037
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 4038
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4040
    goto/16 :goto_7

    .line 4041
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4043
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4044
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4045
    .local v2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 4046
    goto/16 :goto_7

    .line 4021
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 4022
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 4023
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4024
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4025
    goto/16 :goto_7

    .line 4026
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4029
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4030
    .local v2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 4031
    goto/16 :goto_7

    .line 4006
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 4007
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 4008
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4010
    goto/16 :goto_7

    .line 4011
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4014
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4015
    .local v2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 4016
    goto/16 :goto_7

    .line 3991
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 3992
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 3993
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3994
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3995
    goto/16 :goto_7

    .line 3996
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3999
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4000
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 4001
    goto/16 :goto_7

    .line 3977
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 3978
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 3979
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3980
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3981
    goto/16 :goto_7

    .line 3982
    :cond_60
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3985
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->smsReadyInd(I)V

    .line 3986
    goto/16 :goto_7

    .line 3963
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 3964
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 3965
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3967
    goto/16 :goto_7

    .line 3968
    :cond_62
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3971
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->meSmsStorageFullInd(I)V

    .line 3972
    goto/16 :goto_7

    .line 3947
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 3948
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 3949
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3951
    goto/16 :goto_7

    .line 3952
    :cond_64
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3955
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;-><init>()V

    .line 3956
    .local v2, "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3957
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/radio/V3_0/EtwsNotification;)V

    .line 3958
    goto/16 :goto_7

    .line 3931
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 3932
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 3933
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3934
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3935
    goto/16 :goto_7

    .line 3936
    :cond_66
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3939
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;-><init>()V

    .line 3940
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3941
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;)V

    .line 3942
    goto/16 :goto_7

    .line 3917
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 3918
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 3919
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3921
    goto/16 :goto_7

    .line 3922
    :cond_68
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3925
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onCardDetectedInd(I)V

    .line 3926
    goto/16 :goto_7

    .line 3903
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 3904
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 3905
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3907
    goto/16 :goto_7

    .line 3908
    :cond_6a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3911
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSimMeLockEvent(I)V

    .line 3912
    goto/16 :goto_7

    .line 3889
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 3890
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 3891
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3893
    goto/16 :goto_7

    .line 3894
    :cond_6c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3897
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSimCommonSlotNoChanged(I)V

    .line 3898
    goto/16 :goto_7

    .line 3875
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 3876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 3877
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3878
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3879
    goto/16 :goto_7

    .line 3880
    :cond_6e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3883
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSimTrayPlugIn(I)V

    .line 3884
    goto/16 :goto_7

    .line 3860
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 3861
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 3862
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3864
    goto/16 :goto_7

    .line 3865
    :cond_70
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3868
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3869
    .local v2, "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSimRecovery(II)V

    .line 3870
    goto/16 :goto_7

    .line 3845
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 3846
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 3847
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3849
    goto/16 :goto_7

    .line 3850
    :cond_72
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3853
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3854
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSimMissing(II)V

    .line 3855
    goto/16 :goto_7

    .line 3831
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 3832
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 3833
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3834
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3835
    goto/16 :goto_7

    .line 3836
    :cond_74
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3839
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSimPlugOut(I)V

    .line 3840
    goto/16 :goto_7

    .line 3817
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 3818
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 3819
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3821
    goto/16 :goto_7

    .line 3822
    :cond_76
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3825
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSimPlugIn(I)V

    .line 3826
    goto/16 :goto_7

    .line 3803
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 3804
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 3805
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3807
    goto/16 :goto_7

    .line 3808
    :cond_78
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3810
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3811
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onImsiRefreshDone(I)V

    .line 3812
    goto/16 :goto_7

    .line 3789
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 3790
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 3791
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3793
    goto/16 :goto_7

    .line 3794
    :cond_7a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3797
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onImeiLock(I)V

    .line 3798
    goto/16 :goto_7

    .line 3774
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 3775
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 3776
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3778
    goto/16 :goto_7

    .line 3779
    :cond_7c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3782
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3783
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onVirtualSimOff(II)V

    .line 3784
    goto/16 :goto_7

    .line 3759
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 3760
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 3761
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3763
    goto/16 :goto_7

    .line 3764
    :cond_7e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3767
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3768
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onVirtualSimOn(II)V

    .line 3769
    goto/16 :goto_7

    .line 3743
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simInserted":I
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 3744
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 3745
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3747
    goto/16 :goto_7

    .line 3748
    :cond_80
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3750
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3751
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3752
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3753
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 3754
    goto/16 :goto_7

    .line 3729
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 3730
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 3731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3733
    goto/16 :goto_7

    .line 3734
    :cond_82
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3737
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaCallAccepted(I)V

    .line 3738
    goto/16 :goto_7

    .line 3714
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 3715
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 3716
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3717
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3718
    goto/16 :goto_7

    .line 3719
    :cond_84
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3722
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3723
    .local v2, "info":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3724
    goto/16 :goto_7

    .line 3698
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":I
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 3699
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 3700
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3702
    goto/16 :goto_7

    .line 3703
    :cond_86
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3705
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3706
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;-><init>()V

    .line 3707
    .local v2, "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/radio/V3_0/CrssNotification;)V

    .line 3709
    goto/16 :goto_7

    .line 3682
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 3683
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 3684
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3686
    goto/16 :goto_7

    .line 3687
    :cond_88
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3690
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;-><init>()V

    .line 3691
    .local v2, "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3692
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/radio/V3_0/CipherNotification;)V

    .line 3693
    goto/16 :goto_7

    .line 3666
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 3667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 3668
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3670
    goto/16 :goto_7

    .line 3671
    :cond_8a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3673
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3674
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 3675
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3676
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 3677
    goto/16 :goto_7

    .line 3650
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 3651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 3652
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3654
    goto/16 :goto_7

    .line 3655
    :cond_8c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3658
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;-><init>()V

    .line 3659
    .local v2, "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3660
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;)V

    .line 3661
    goto/16 :goto_7

    .line 3635
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 3636
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 3637
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3639
    goto/16 :goto_7

    .line 3640
    :cond_8e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3642
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3643
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3644
    .local v2, "isPhbReady":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->phbReadyNotification(II)V

    .line 3645
    goto/16 :goto_7

    .line 3620
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isPhbReady":I
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 3621
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 3622
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3624
    goto/16 :goto_7

    .line 3625
    :cond_90
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3628
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3629
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 3630
    goto/16 :goto_7

    .line 3605
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 3606
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 3607
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3609
    goto/16 :goto_7

    .line 3610
    :cond_92
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3613
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3614
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 3615
    goto/16 :goto_7

    .line 3589
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":Ljava/lang/String;
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 3590
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 3591
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3592
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3593
    goto/16 :goto_7

    .line 3594
    :cond_94
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3597
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 3598
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3599
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 3600
    goto/16 :goto_7

    .line 3574
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 3575
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 3576
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3577
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3578
    goto/16 :goto_7

    .line 3579
    :cond_96
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3581
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3582
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3583
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 3584
    goto/16 :goto_7

    .line 3558
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 3559
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 3560
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3561
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3562
    goto/16 :goto_7

    .line 3563
    :cond_98
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3565
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3566
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 3567
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3568
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 3569
    goto/16 :goto_7

    .line 3543
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 3544
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 3545
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3547
    goto/16 :goto_7

    .line 3548
    :cond_9a
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3551
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3552
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 3553
    goto/16 :goto_7

    .line 3527
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 3528
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 3529
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3531
    goto/16 :goto_7

    .line 3532
    :cond_9c
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3535
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 3536
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3537
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 3538
    goto/16 :goto_7

    .line 3511
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 3512
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 3513
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3515
    goto/16 :goto_7

    .line 3516
    :cond_9e
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3519
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 3520
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3521
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 3522
    goto/16 :goto_7

    .line 3495
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 3496
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 3497
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3499
    goto/16 :goto_7

    .line 3500
    :cond_a0
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3503
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 3504
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3505
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 3506
    goto/16 :goto_7

    .line 3481
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 3482
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 3483
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3484
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3485
    goto/16 :goto_7

    .line 3486
    :cond_a2
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3489
    .local v0, "info":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 3490
    goto/16 :goto_7

    .line 3466
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 3467
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 3468
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3470
    goto/16 :goto_7

    .line 3471
    :cond_a4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3474
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3475
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 3476
    goto/16 :goto_7

    .line 3450
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 3451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 3452
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3454
    goto/16 :goto_7

    .line 3455
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3458
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 3459
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3460
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 3461
    goto/16 :goto_7

    .line 3434
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 3435
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 3436
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3437
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3438
    goto/16 :goto_7

    .line 3439
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3442
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 3443
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3444
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 3445
    goto/16 :goto_7

    .line 3419
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 3420
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 3421
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3422
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3423
    goto/16 :goto_7

    .line 3424
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3427
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3428
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 3429
    goto/16 :goto_7

    .line 3403
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 3404
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 3405
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3406
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3407
    goto/16 :goto_7

    .line 3408
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3411
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 3412
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3413
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 3414
    goto/16 :goto_7

    .line 3387
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 3388
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 3389
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3391
    goto/16 :goto_7

    .line 3392
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3394
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3395
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 3396
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3397
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 3398
    goto/16 :goto_7

    .line 3372
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 3373
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 3374
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3376
    goto/16 :goto_7

    .line 3377
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3380
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3381
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 3382
    goto/16 :goto_7

    .line 3357
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 3358
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 3359
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3360
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3361
    goto/16 :goto_7

    .line 3362
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3365
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3366
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 3367
    goto/16 :goto_7

    .line 3342
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 3343
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 3344
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3346
    goto/16 :goto_7

    .line 3347
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3349
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3350
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3351
    .local v2, "activate":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 3352
    goto/16 :goto_7

    .line 3328
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 3329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 3330
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3332
    goto/16 :goto_7

    .line 3333
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3336
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 3337
    goto/16 :goto_7

    .line 3313
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 3314
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 3315
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3316
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3317
    goto/16 :goto_7

    .line 3318
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3321
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3322
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 3323
    goto/16 :goto_7

    .line 3298
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 3299
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 3300
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3302
    goto/16 :goto_7

    .line 3303
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3305
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3306
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3307
    .local v2, "rat":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 3308
    goto/16 :goto_7

    .line 3284
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 3285
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 3286
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3287
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3288
    goto/16 :goto_7

    .line 3289
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3291
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3292
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->rilConnected(I)V

    .line 3293
    goto/16 :goto_7

    .line 3270
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 3271
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 3272
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3274
    goto/16 :goto_7

    .line 3275
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3278
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 3279
    goto/16 :goto_7

    .line 3255
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 3256
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 3257
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3258
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3259
    goto/16 :goto_7

    .line 3260
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3263
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3264
    .local v2, "version":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 3265
    goto/16 :goto_7

    .line 3240
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":I
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 3241
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 3242
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3243
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3244
    goto/16 :goto_7

    .line 3245
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3248
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3249
    .local v2, "cdmaSource":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 3250
    goto/16 :goto_7

    .line 3226
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSource":I
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 3227
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 3228
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3230
    goto/16 :goto_7

    .line 3231
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3234
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 3235
    goto/16 :goto_7

    .line 3211
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 3212
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 3213
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3215
    goto/16 :goto_7

    .line 3216
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3219
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3220
    .local v2, "start":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 3221
    goto/16 :goto_7

    .line 3195
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "start":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 3196
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 3197
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3199
    goto/16 :goto_7

    .line 3200
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3203
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 3204
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3205
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 3206
    goto/16 :goto_7

    .line 3180
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_5b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c9

    move v1, v2

    nop

    .line 3181
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c9
    if-eq v1, v2, :cond_ca

    .line 3182
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3183
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3184
    goto/16 :goto_7

    .line 3185
    :cond_ca
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3188
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3189
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 3190
    goto/16 :goto_7

    .line 3164
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_5c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cb

    move v1, v2

    nop

    .line 3165
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cb
    if-eq v1, v2, :cond_cc

    .line 3166
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3168
    goto/16 :goto_7

    .line 3169
    :cond_cc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3172
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 3173
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3174
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 3175
    goto/16 :goto_7

    .line 3150
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_5d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cd

    move v1, v2

    nop

    .line 3151
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cd
    if-eq v1, v2, :cond_ce

    .line 3152
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3154
    goto/16 :goto_7

    .line 3155
    :cond_ce
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3158
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 3159
    goto/16 :goto_7

    .line 3135
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cf

    move v1, v2

    nop

    .line 3136
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cf
    if-eq v1, v2, :cond_d0

    .line 3137
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3139
    goto/16 :goto_7

    .line 3140
    :cond_d0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3143
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3144
    .local v2, "state":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 3145
    goto/16 :goto_7

    .line 3121
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_5f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d1

    move v1, v2

    nop

    .line 3122
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d1
    if-eq v1, v2, :cond_d2

    .line 3123
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3124
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3125
    goto/16 :goto_7

    .line 3126
    :cond_d2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3129
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 3130
    goto/16 :goto_7

    .line 3106
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_60
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d3

    move v1, v2

    nop

    .line 3107
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d3
    if-eq v1, v2, :cond_d4

    .line 3108
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3110
    goto/16 :goto_7

    .line 3111
    :cond_d4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3114
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3115
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 3116
    goto/16 :goto_7

    .line 3090
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_61
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d5

    move v1, v2

    nop

    .line 3091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d5
    if-eq v1, v2, :cond_d6

    .line 3092
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3094
    goto/16 :goto_7

    .line 3095
    :cond_d6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3098
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3099
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3100
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3101
    goto/16 :goto_7

    .line 3076
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_62
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d7

    move v1, v2

    nop

    .line 3077
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d7
    if-eq v1, v2, :cond_d8

    .line 3078
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3080
    goto/16 :goto_7

    .line 3081
    :cond_d8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3084
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 3085
    goto/16 :goto_7

    .line 3059
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_63
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d9

    move v1, v2

    nop

    .line 3060
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d9
    if-eq v1, v2, :cond_da

    .line 3061
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3063
    goto/16 :goto_7

    .line 3064
    :cond_da
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3067
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3068
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 3069
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3070
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 3071
    goto/16 :goto_7

    .line 3043
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_64
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_db

    move v1, v2

    nop

    .line 3044
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_db
    if-eq v1, v2, :cond_dc

    .line 3045
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3047
    goto/16 :goto_7

    .line 3048
    :cond_dc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3051
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 3052
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3053
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 3054
    goto/16 :goto_7

    .line 3029
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_65
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dd

    move v1, v2

    nop

    .line 3030
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dd
    if-eq v1, v2, :cond_de

    .line 3031
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3033
    goto/16 :goto_7

    .line 3034
    :cond_de
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3037
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 3038
    goto/16 :goto_7

    .line 3014
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_66
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_df

    move v1, v2

    nop

    .line 3015
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_df
    if-eq v1, v2, :cond_e0

    .line 3016
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3017
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3018
    goto/16 :goto_7

    .line 3019
    :cond_e0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3022
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 3023
    .local v2, "timeout":J
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 3024
    goto/16 :goto_7

    .line 2999
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timeout":J
    :pswitch_67
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e1

    move v1, v2

    nop

    .line 3000
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e1
    if-eq v1, v2, :cond_e2

    .line 3001
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3002
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3003
    goto/16 :goto_7

    .line 3004
    :cond_e2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3007
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3008
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 3009
    goto/16 :goto_7

    .line 2984
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_68
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e3

    move v1, v2

    nop

    .line 2985
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e3
    if-eq v1, v2, :cond_e4

    .line 2986
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2987
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2988
    goto/16 :goto_7

    .line 2989
    :cond_e4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2991
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2992
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2993
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2994
    goto/16 :goto_7

    .line 2970
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_69
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e5

    move v1, v2

    nop

    .line 2971
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e5
    if-eq v1, v2, :cond_e6

    .line 2972
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2973
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2974
    goto/16 :goto_7

    .line 2975
    :cond_e6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2978
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2979
    goto/16 :goto_7

    .line 2954
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e7

    move v1, v2

    nop

    .line 2955
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e7
    if-eq v1, v2, :cond_e8

    .line 2956
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2958
    goto/16 :goto_7

    .line 2959
    :cond_e8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2962
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2963
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2964
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2965
    goto/16 :goto_7

    .line 2939
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_6b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e9

    move v1, v2

    nop

    .line 2940
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e9
    if-eq v1, v2, :cond_ea

    .line 2941
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2942
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2943
    goto/16 :goto_7

    .line 2944
    :cond_ea
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2947
    .restart local v0    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2948
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2949
    goto/16 :goto_7

    .line 2923
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_6c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_eb

    move v1, v2

    nop

    .line 2924
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_eb
    if-eq v1, v2, :cond_ec

    .line 2925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2927
    goto/16 :goto_7

    .line 2928
    :cond_ec
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2931
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2932
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2933
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2934
    goto/16 :goto_7

    .line 2907
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_6d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ed

    move v1, v2

    nop

    .line 2908
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ed
    if-eq v1, v2, :cond_ee

    .line 2909
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2911
    goto/16 :goto_7

    .line 2912
    :cond_ee
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2915
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2916
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2917
    .local v3, "receivedTime":J
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2918
    goto/16 :goto_7

    .line 2891
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_6e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ef

    move v1, v2

    nop

    .line 2892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ef
    if-eq v1, v2, :cond_f0

    .line 2893
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2894
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2895
    goto/16 :goto_7

    .line 2896
    :cond_f0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2898
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2899
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2900
    .local v2, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2901
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2902
    goto/16 :goto_7

    .line 2876
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_6f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f1

    move v1, v2

    nop

    .line 2877
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f1
    if-eq v1, v2, :cond_f2

    .line 2878
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2880
    goto/16 :goto_7

    .line 2881
    :cond_f2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2884
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2885
    .local v2, "recordNumber":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2886
    goto/16 :goto_7

    .line 2861
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "recordNumber":I
    :pswitch_70
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f3

    move v1, v2

    nop

    .line 2862
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f3
    if-eq v1, v2, :cond_f4

    .line 2863
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2865
    goto/16 :goto_7

    .line 2866
    :cond_f4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2869
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2870
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2871
    goto/16 :goto_7

    .line 2846
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_71
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f5

    move v1, v2

    nop

    .line 2847
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f5
    if-eq v1, v2, :cond_f6

    .line 2848
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2849
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2850
    goto/16 :goto_7

    .line 2851
    :cond_f6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2854
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2855
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2856
    goto :goto_7

    .line 2832
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_72
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f7

    move v1, v2

    nop

    .line 2833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f7
    if-eq v1, v2, :cond_f8

    .line 2834
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2836
    goto :goto_7

    .line 2837
    :cond_f8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2840
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 2841
    goto :goto_7

    .line 2818
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_73
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f9

    move v1, v2

    nop

    .line 2819
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f9
    if-eq v1, v2, :cond_fa

    .line 2820
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2822
    goto :goto_7

    .line 2823
    :cond_fa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2826
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->callStateChanged(I)V

    .line 2827
    goto :goto_7

    .line 2803
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_74
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fb

    move v1, v2

    nop

    .line 2804
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fb
    if-eq v1, v2, :cond_fc

    .line 2805
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2807
    goto :goto_7

    .line 2808
    :cond_fc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2810
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2811
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2812
    .local v2, "radioState":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 2813
    nop

    .line 4715
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "radioState":I
    :cond_fd
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2756
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2782
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2783
    return-object p0

    .line 2785
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

    .line 2789
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2790
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2747
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2776
    const/4 v0, 0x1

    return v0
.end method
