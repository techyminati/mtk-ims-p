.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2180
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2183
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2231
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2232
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2233
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2234
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2235
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

    .line 2204
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

    .line 2188
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

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

    .line 2198
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2220
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2240
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2241
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

    .line 2269
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 3833
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 3834
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_c9

    .line 3835
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3837
    goto/16 :goto_7

    .line 3820
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 3821
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 3822
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3823
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3824
    goto/16 :goto_7

    .line 3825
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 3828
    goto/16 :goto_7

    .line 3804
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 3805
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 3806
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3808
    goto/16 :goto_7

    .line 3809
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3811
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3812
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3813
    invoke-virtual {v0, v11}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3814
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3815
    goto/16 :goto_7

    .line 3789
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 3790
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 3791
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3793
    goto/16 :goto_7

    .line 3794
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3796
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->ping()V

    .line 3797
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3799
    goto/16 :goto_7

    .line 3779
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 3780
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_c9

    .line 3781
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3783
    goto/16 :goto_7

    .line 3766
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 3767
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 3768
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3770
    goto/16 :goto_7

    .line 3771
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3773
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 3774
    goto/16 :goto_7

    .line 3733
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 3734
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 3735
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3737
    goto/16 :goto_7

    .line 3738
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3740
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3741
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3743
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 3745
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3746
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3747
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3748
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 3749
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 3751
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 3752
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3753
    nop

    .line 3749
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3756
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3758
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3760
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3761
    goto/16 :goto_7

    .line 3717
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 3718
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 3719
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3721
    goto/16 :goto_7

    .line 3722
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3724
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3725
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3726
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3728
    goto/16 :goto_7

    .line 3703
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 3704
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 3705
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3707
    goto/16 :goto_7

    .line 3708
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3710
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3712
    goto/16 :goto_7

    .line 3687
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 3688
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 3689
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3691
    goto/16 :goto_7

    .line 3692
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3694
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 3695
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3696
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3698
    goto/16 :goto_7

    .line 3671
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 3672
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 3673
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3674
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3675
    goto/16 :goto_7

    .line 3676
    :cond_14
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3678
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3679
    .local v0, "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3680
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3681
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3682
    goto/16 :goto_7

    .line 3656
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 3657
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 3658
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3659
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3660
    goto/16 :goto_7

    .line 3661
    :cond_16
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3663
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3664
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3665
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsStatusReportEx(ILjava/util/ArrayList;)V

    .line 3666
    goto/16 :goto_7

    .line 3641
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 3642
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 3643
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3645
    goto/16 :goto_7

    .line 3646
    :cond_18
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3649
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3650
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsEx(ILjava/util/ArrayList;)V

    .line 3651
    goto/16 :goto_7

    .line 3624
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 3625
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 3626
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3628
    goto/16 :goto_7

    .line 3629
    :cond_1a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3632
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3633
    .local v2, "capability":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3634
    .local v3, "event":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3635
    .local v4, "extra":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3636
    goto/16 :goto_7

    .line 3610
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extra":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 3611
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 3612
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3614
    goto/16 :goto_7

    .line 3615
    :cond_1c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3618
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgConfigLoaded(I)V

    .line 3619
    goto/16 :goto_7

    .line 3593
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 3594
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 3595
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3596
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3597
    goto/16 :goto_7

    .line 3598
    :cond_1e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3600
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3601
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3602
    .local v2, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3603
    .local v3, "configId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3604
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 3605
    goto/16 :goto_7

    .line 3576
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    .end local v3    # "configId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 3577
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 3578
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3580
    goto/16 :goto_7

    .line 3581
    :cond_20
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3584
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3585
    .restart local v2    # "phoneId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3586
    .local v3, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3587
    .local v4, "value":I
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgFeatureChanged(IIII)V

    .line 3588
    goto/16 :goto_7

    .line 3562
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    .end local v3    # "featureId":I
    .end local v4    # "value":I
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 3563
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 3564
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3566
    goto/16 :goto_7

    .line 3567
    :cond_22
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3570
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsCfgDynamicImsSwitchComplete(I)V

    .line 3571
    goto/16 :goto_7

    .line 3547
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 3548
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 3549
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3551
    goto/16 :goto_7

    .line 3552
    :cond_24
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3555
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3556
    .local v2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDialogIndication(ILjava/util/ArrayList;)V

    .line 3557
    goto/16 :goto_7

    .line 3528
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    :cond_25
    move v7, v1

    .line 3529
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_26

    .line 3530
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3532
    goto/16 :goto_7

    .line 3533
    :cond_26
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3536
    .local v8, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3537
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3538
    .local v13, "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3539
    .local v14, "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3540
    .local v15, "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3541
    .local v16, "rawData":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3542
    goto/16 :goto_7

    .line 3513
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 3514
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 3515
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3517
    goto/16 :goto_7

    .line 3518
    :cond_28
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3521
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3522
    .local v2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsConferenceInfoIndication(ILjava/util/ArrayList;)V

    .line 3523
    goto/16 :goto_7

    .line 3498
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 3499
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 3500
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3502
    goto/16 :goto_7

    .line 3503
    :cond_2a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3506
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3507
    .local v2, "info":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3508
    goto/16 :goto_7

    .line 3482
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "info":I
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 3483
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 3484
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3486
    goto/16 :goto_7

    .line 3487
    :cond_2c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3490
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3491
    .local v2, "iid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3492
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 3493
    goto/16 :goto_7

    .line 3467
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iid":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 3468
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 3469
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3471
    goto/16 :goto_7

    .line 3472
    :cond_2e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3475
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3476
    .local v2, "supportLteEcc":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsSupportEcc(II)V

    .line 3477
    goto/16 :goto_7

    .line 3452
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "supportLteEcc":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 3453
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 3454
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3456
    goto/16 :goto_7

    .line 3457
    :cond_30
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3460
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3461
    .local v2, "count":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->multiImsCount(II)V

    .line 3462
    goto/16 :goto_7

    .line 3438
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "count":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 3439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 3440
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3442
    goto/16 :goto_7

    .line 3443
    :cond_32
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3446
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDeregDone(I)V

    .line 3447
    goto/16 :goto_7

    .line 3424
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 3425
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 3426
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3428
    goto/16 :goto_7

    .line 3429
    :cond_34
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3431
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3432
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsBearerInit(I)V

    .line 3433
    goto/16 :goto_7

    .line 3408
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 3409
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 3410
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3412
    goto/16 :goto_7

    .line 3413
    :cond_36
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3416
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3417
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3418
    .local v3, "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsBearerDeactivation(IILjava/lang/String;)V

    .line 3419
    goto/16 :goto_7

    .line 3392
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 3393
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 3394
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3396
    goto/16 :goto_7

    .line 3397
    :cond_38
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3400
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3401
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3402
    .restart local v3    # "capability":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsBearerActivation(IILjava/lang/String;)V

    .line 3403
    goto/16 :goto_7

    .line 3377
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "capability":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 3378
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 3379
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3380
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3381
    goto/16 :goto_7

    .line 3382
    :cond_3a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3385
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3386
    .local v2, "isEnable":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->volteSetting(IZ)V

    .line 3387
    goto/16 :goto_7

    .line 3360
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isEnable":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 3361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 3362
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3364
    goto/16 :goto_7

    .line 3365
    :cond_3c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3368
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3369
    .local v2, "call_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3370
    .local v3, "ectResult":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3371
    .local v4, "cause":I
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->ectIndication(IIII)V

    .line 3372
    goto/16 :goto_7

    .line 3346
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "call_id":I
    .end local v3    # "ectResult":I
    .end local v4    # "cause":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 3347
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 3348
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3350
    goto/16 :goto_7

    .line 3351
    :cond_3e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3354
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDisableStart(I)V

    .line 3355
    goto/16 :goto_7

    .line 3332
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 3333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 3334
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3336
    goto/16 :goto_7

    .line 3337
    :cond_40
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3340
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsEnableStart(I)V

    .line 3341
    goto/16 :goto_7

    .line 3318
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 3319
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 3320
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3322
    goto/16 :goto_7

    .line 3323
    :cond_42
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3326
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsDisableDone(I)V

    .line 3327
    goto/16 :goto_7

    .line 3304
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 3305
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 3306
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3308
    goto/16 :goto_7

    .line 3309
    :cond_44
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3312
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsEnableDone(I)V

    .line 3313
    goto/16 :goto_7

    .line 3288
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 3289
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 3290
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3292
    goto/16 :goto_7

    .line 3293
    :cond_46
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3296
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3297
    .local v2, "registerState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3298
    .local v3, "capability":I
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsRegistrationInfo(III)V

    .line 3299
    goto/16 :goto_7

    .line 3269
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "registerState":I
    .end local v3    # "capability":I
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    :cond_47
    move v7, v1

    .line 3270
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_48

    .line 3271
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3272
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3273
    goto/16 :goto_7

    .line 3274
    :cond_48
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3277
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3278
    .restart local v12    # "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3279
    .restart local v13    # "ptype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3280
    .restart local v14    # "urcIdx":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3281
    .restart local v15    # "totalUrcCount":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3282
    .restart local v16    # "rawData":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    goto/16 :goto_7

    .line 3254
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "ptype":Ljava/lang/String;
    .end local v14    # "urcIdx":Ljava/lang/String;
    .end local v15    # "totalUrcCount":Ljava/lang/String;
    .end local v16    # "rawData":Ljava/lang/String;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 3255
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 3256
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3257
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3258
    goto/16 :goto_7

    .line 3259
    :cond_4a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3262
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3263
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onVolteSubscription(II)V

    .line 3264
    goto/16 :goto_7

    .line 3237
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 3238
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 3239
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3241
    goto/16 :goto_7

    .line 3242
    :cond_4c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3245
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3246
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3247
    .local v3, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3248
    .local v4, "xuiInfo":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    goto/16 :goto_7

    .line 3218
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accountId":Ljava/lang/String;
    .end local v3    # "broadcastFlag":Ljava/lang/String;
    .end local v4    # "xuiInfo":Ljava/lang/String;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    :cond_4d
    move v7, v1

    .line 3219
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_4e

    .line 3220
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3222
    goto/16 :goto_7

    .line 3223
    :cond_4e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3226
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3227
    .local v12, "pdnId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3228
    .local v13, "networkId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3229
    .local v14, "timer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3230
    .local v15, "sendPktLost":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3231
    .local v16, "recvPktLost":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    goto/16 :goto_7

    .line 3202
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "pdnId":Ljava/lang/String;
    .end local v13    # "networkId":Ljava/lang/String;
    .end local v14    # "timer":Ljava/lang/String;
    .end local v15    # "sendPktLost":Ljava/lang/String;
    .end local v16    # "recvPktLost":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 3203
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 3204
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3205
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3206
    goto/16 :goto_7

    .line 3207
    :cond_50
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3210
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3211
    .local v2, "result1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3212
    .local v3, "result2":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V

    .line 3213
    goto/16 :goto_7

    .line 3181
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result1":Ljava/lang/String;
    .end local v3    # "result2":Ljava/lang/String;
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    :cond_51
    move v12, v1

    .line 3182
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v2, :cond_52

    .line 3183
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3185
    goto/16 :goto_7

    .line 3186
    :cond_52
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3189
    .local v13, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3190
    .local v14, "clazz":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3191
    .local v15, "status":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3192
    .local v16, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3193
    .local v17, "lang":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3194
    .local v18, "errorcode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3195
    .local v19, "alertingPattern":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 3196
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

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    goto/16 :goto_7

    .line 3164
    .end local v12    # "_hidl_is_oneway":Z
    .end local v13    # "type":I
    .end local v14    # "clazz":Ljava/lang/String;
    .end local v15    # "status":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "lang":Ljava/lang/String;
    .end local v18    # "errorcode":Ljava/lang/String;
    .end local v19    # "alertingPattern":Ljava/lang/String;
    .end local v20    # "sipCause":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 3165
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 3166
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3168
    goto/16 :goto_7

    .line 3169
    :cond_54
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3172
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3173
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3174
    .local v3, "localVideoCap":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3175
    .local v4, "remoteVideoCap":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    goto/16 :goto_7

    .line 3145
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":Ljava/lang/String;
    .end local v3    # "localVideoCap":Ljava/lang/String;
    .end local v4    # "remoteVideoCap":Ljava/lang/String;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    :cond_55
    move v7, v1

    .line 3146
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_56

    .line 3147
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3149
    goto/16 :goto_7

    .line 3150
    :cond_56
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3153
    .restart local v8    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3154
    .local v12, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3155
    .local v13, "callMode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3156
    .local v14, "videoState":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3157
    .local v15, "audioDirection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3158
    .local v16, "pau":Ljava/lang/String;
    move-object v0, v9

    move v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    goto/16 :goto_7

    .line 3125
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "type":I
    .end local v12    # "callId":Ljava/lang/String;
    .end local v13    # "callMode":Ljava/lang/String;
    .end local v14    # "videoState":Ljava/lang/String;
    .end local v15    # "audioDirection":Ljava/lang/String;
    .end local v16    # "pau":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    :cond_57
    move v8, v1

    .line 3126
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_58

    .line 3127
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3129
    goto/16 :goto_7

    .line 3130
    :cond_58
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 3133
    .local v12, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3134
    .local v13, "callId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3135
    .local v14, "dir":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3136
    .local v15, "sipMsgType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3137
    .local v16, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3138
    .local v17, "responseCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3139
    .local v18, "reasonText":Ljava/lang/String;
    move-object v0, v9

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    goto/16 :goto_7

    .line 3105
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "callId":Ljava/lang/String;
    .end local v14    # "dir":Ljava/lang/String;
    .end local v15    # "sipMsgType":Ljava/lang/String;
    .end local v16    # "method":Ljava/lang/String;
    .end local v17    # "responseCode":Ljava/lang/String;
    .end local v18    # "reasonText":Ljava/lang/String;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    :cond_59
    move v8, v1

    .line 3106
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_5a

    .line 3107
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3109
    goto/16 :goto_7

    .line 3110
    :cond_5a
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 3113
    .restart local v12    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3114
    .local v13, "confCallId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3115
    .local v14, "op":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 3116
    .local v15, "num":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3117
    .local v16, "result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 3118
    .local v17, "cause":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3119
    .local v18, "joinedCallId":Ljava/lang/String;
    move-object v0, v9

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    goto/16 :goto_7

    .line 3090
    .end local v8    # "_hidl_is_oneway":Z
    .end local v12    # "type":I
    .end local v13    # "confCallId":Ljava/lang/String;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "num":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "cause":Ljava/lang/String;
    .end local v18    # "joinedCallId":Ljava/lang/String;
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 3091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 3092
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3094
    goto/16 :goto_7

    .line 3095
    :cond_5c
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3098
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3099
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callInfoIndication(ILjava/util/ArrayList;)V

    .line 3100
    goto/16 :goto_7

    .line 3074
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 3075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 3076
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3078
    goto/16 :goto_7

    .line 3079
    :cond_5e
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3082
    .restart local v0    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 3083
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, v10}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3084
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 3085
    goto/16 :goto_7

    .line 3058
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 3059
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 3060
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3061
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3062
    goto/16 :goto_7

    .line 3063
    :cond_60
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3066
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 3067
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3068
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 3069
    goto/16 :goto_7

    .line 3043
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 3044
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 3045
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3046
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3047
    goto/16 :goto_7

    .line 3048
    :cond_62
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3050
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3051
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3052
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 3053
    goto/16 :goto_7

    .line 3027
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 3028
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 3029
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3030
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3031
    goto/16 :goto_7

    .line 3032
    :cond_64
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3035
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 3036
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3037
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 3038
    goto/16 :goto_7

    .line 3012
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 3013
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 3014
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3015
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3016
    goto/16 :goto_7

    .line 3017
    :cond_66
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3020
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3021
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 3022
    goto/16 :goto_7

    .line 2996
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 2997
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 2998
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3000
    goto/16 :goto_7

    .line 3001
    :cond_68
    const-string v0, "android.hardware.radio@1.2::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3004
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 3005
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3006
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 3007
    goto/16 :goto_7

    .line 2980
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 2981
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 2982
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2984
    goto/16 :goto_7

    .line 2985
    :cond_6a
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2988
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 2989
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2990
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 2991
    goto/16 :goto_7

    .line 2964
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 2965
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 2966
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2968
    goto/16 :goto_7

    .line 2969
    :cond_6c
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2972
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 2973
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2974
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 2975
    goto/16 :goto_7

    .line 2950
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 2951
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 2952
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2954
    goto/16 :goto_7

    .line 2955
    :cond_6e
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2958
    .local v0, "info":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 2959
    goto/16 :goto_7

    .line 2935
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 2936
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 2937
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2939
    goto/16 :goto_7

    .line 2940
    :cond_70
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2943
    .local v0, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2944
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 2945
    goto/16 :goto_7

    .line 2919
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 2920
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 2921
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2923
    goto/16 :goto_7

    .line 2924
    :cond_72
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2927
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 2928
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2929
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 2930
    goto/16 :goto_7

    .line 2903
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 2904
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 2905
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2907
    goto/16 :goto_7

    .line 2908
    :cond_74
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2911
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 2912
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2913
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 2914
    goto/16 :goto_7

    .line 2888
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 2889
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 2890
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2892
    goto/16 :goto_7

    .line 2893
    :cond_76
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2896
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2897
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 2898
    goto/16 :goto_7

    .line 2872
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 2873
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 2874
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2876
    goto/16 :goto_7

    .line 2877
    :cond_78
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2880
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 2881
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2882
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 2883
    goto/16 :goto_7

    .line 2856
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 2857
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 2858
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2860
    goto/16 :goto_7

    .line 2861
    :cond_7a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2864
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 2865
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2866
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 2867
    goto/16 :goto_7

    .line 2841
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    move v1, v2

    nop

    .line 2842
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7b
    if-eq v1, v2, :cond_7c

    .line 2843
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2845
    goto/16 :goto_7

    .line 2846
    :cond_7c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2849
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2850
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 2851
    goto/16 :goto_7

    .line 2826
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    move v1, v2

    nop

    .line 2827
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7d
    if-eq v1, v2, :cond_7e

    .line 2828
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2830
    goto/16 :goto_7

    .line 2831
    :cond_7e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2834
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2835
    .local v2, "state":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->srvccStateNotify(II)V

    .line 2836
    goto/16 :goto_7

    .line 2811
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    move v1, v2

    nop

    .line 2812
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7f
    if-eq v1, v2, :cond_80

    .line 2813
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2814
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2815
    goto/16 :goto_7

    .line 2816
    :cond_80
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2819
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2820
    .local v2, "activate":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 2821
    goto/16 :goto_7

    .line 2797
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    move v1, v2

    nop

    .line 2798
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_81
    if-eq v1, v2, :cond_82

    .line 2799
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2801
    goto/16 :goto_7

    .line 2802
    :cond_82
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2805
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 2806
    goto/16 :goto_7

    .line 2782
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    move v1, v2

    nop

    .line 2783
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_83
    if-eq v1, v2, :cond_84

    .line 2784
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2786
    goto/16 :goto_7

    .line 2787
    :cond_84
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2790
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2791
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2792
    goto/16 :goto_7

    .line 2767
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    move v1, v2

    nop

    .line 2768
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_85
    if-eq v1, v2, :cond_86

    .line 2769
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2771
    goto/16 :goto_7

    .line 2772
    :cond_86
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2775
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2776
    .local v2, "rat":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2777
    goto/16 :goto_7

    .line 2753
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    move v1, v2

    nop

    .line 2754
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_87
    if-eq v1, v2, :cond_88

    .line 2755
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2757
    goto/16 :goto_7

    .line 2758
    :cond_88
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2761
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->rilConnected(I)V

    .line 2762
    goto/16 :goto_7

    .line 2739
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    move v1, v2

    nop

    .line 2740
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_89
    if-eq v1, v2, :cond_8a

    .line 2741
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2743
    goto/16 :goto_7

    .line 2744
    :cond_8a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2747
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2748
    goto/16 :goto_7

    .line 2724
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    move v1, v2

    nop

    .line 2725
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v1, v2, :cond_8c

    .line 2726
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2728
    goto/16 :goto_7

    .line 2729
    :cond_8c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2732
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2733
    .local v2, "version":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2734
    goto/16 :goto_7

    .line 2709
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "version":I
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    move v1, v2

    nop

    .line 2710
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8d
    if-eq v1, v2, :cond_8e

    .line 2711
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2713
    goto/16 :goto_7

    .line 2714
    :cond_8e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2717
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2718
    .local v2, "cdmaSource":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2719
    goto/16 :goto_7

    .line 2695
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSource":I
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    move v1, v2

    nop

    .line 2696
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8f
    if-eq v1, v2, :cond_90

    .line 2697
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2699
    goto/16 :goto_7

    .line 2700
    :cond_90
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2703
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->resendIncallMute(I)V

    .line 2704
    goto/16 :goto_7

    .line 2680
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    move v1, v2

    nop

    .line 2681
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_91
    if-eq v1, v2, :cond_92

    .line 2682
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2684
    goto/16 :goto_7

    .line 2685
    :cond_92
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2688
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2689
    .local v2, "start":Z
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2690
    goto/16 :goto_7

    .line 2664
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "start":Z
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    move v1, v2

    nop

    .line 2665
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_93
    if-eq v1, v2, :cond_94

    .line 2666
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2668
    goto/16 :goto_7

    .line 2669
    :cond_94
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2672
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2673
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2674
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2675
    goto/16 :goto_7

    .line 2649
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    move v1, v2

    nop

    .line 2650
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_95
    if-eq v1, v2, :cond_96

    .line 2651
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2653
    goto/16 :goto_7

    .line 2654
    :cond_96
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2657
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2658
    .local v2, "status":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2659
    goto/16 :goto_7

    .line 2633
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    move v1, v2

    nop

    .line 2634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_97
    if-eq v1, v2, :cond_98

    .line 2635
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2637
    goto/16 :goto_7

    .line 2638
    :cond_98
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2641
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2642
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2643
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2644
    goto/16 :goto_7

    .line 2619
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    move v1, v2

    nop

    .line 2620
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_99
    if-eq v1, v2, :cond_9a

    .line 2621
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2623
    goto/16 :goto_7

    .line 2624
    :cond_9a
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2627
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2628
    goto/16 :goto_7

    .line 2604
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    move v1, v2

    nop

    .line 2605
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9b
    if-eq v1, v2, :cond_9c

    .line 2606
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2608
    goto/16 :goto_7

    .line 2609
    :cond_9c
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2612
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2613
    .local v2, "state":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2614
    goto/16 :goto_7

    .line 2590
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 2591
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eq v1, v2, :cond_9e

    .line 2592
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2594
    goto/16 :goto_7

    .line 2595
    :cond_9e
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2598
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2599
    goto/16 :goto_7

    .line 2575
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 2576
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eq v1, v2, :cond_a0

    .line 2577
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2579
    goto/16 :goto_7

    .line 2580
    :cond_a0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2583
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2584
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2585
    goto/16 :goto_7

    .line 2559
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 2560
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eq v1, v2, :cond_a2

    .line 2561
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2563
    goto/16 :goto_7

    .line 2564
    :cond_a2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2567
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2568
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2569
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2570
    goto/16 :goto_7

    .line 2545
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_48
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a3

    move v1, v2

    nop

    .line 2546
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a3
    if-eq v1, v2, :cond_a4

    .line 2547
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2549
    goto/16 :goto_7

    .line 2550
    :cond_a4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2553
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->simStatusChanged(I)V

    .line 2554
    goto/16 :goto_7

    .line 2528
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a5

    move v1, v2

    nop

    .line 2529
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a5
    if-eq v1, v2, :cond_a6

    .line 2530
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2532
    goto/16 :goto_7

    .line 2533
    :cond_a6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2536
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2537
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2538
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, v10}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2539
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2540
    goto/16 :goto_7

    .line 2512
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_4a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a7

    move v1, v2

    nop

    .line 2513
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a7
    if-eq v1, v2, :cond_a8

    .line 2514
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2515
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2516
    goto/16 :goto_7

    .line 2517
    :cond_a8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2520
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2521
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2522
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2523
    goto/16 :goto_7

    .line 2498
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_4b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    move v1, v2

    nop

    .line 2499
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a9
    if-eq v1, v2, :cond_aa

    .line 2500
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2502
    goto/16 :goto_7

    .line 2503
    :cond_aa
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2506
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2507
    goto/16 :goto_7

    .line 2483
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ab

    move v1, v2

    nop

    .line 2484
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ab
    if-eq v1, v2, :cond_ac

    .line 2485
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2487
    goto/16 :goto_7

    .line 2488
    :cond_ac
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2491
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2492
    .local v2, "timeout":J
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2493
    goto/16 :goto_7

    .line 2468
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timeout":J
    :pswitch_4d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ad

    move v1, v2

    nop

    .line 2469
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ad
    if-eq v1, v2, :cond_ae

    .line 2470
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2472
    goto/16 :goto_7

    .line 2473
    :cond_ae
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2476
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2477
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2478
    goto/16 :goto_7

    .line 2453
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_4e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_af

    move v1, v2

    nop

    .line 2454
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_af
    if-eq v1, v2, :cond_b0

    .line 2455
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2457
    goto/16 :goto_7

    .line 2458
    :cond_b0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2461
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2462
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2463
    goto/16 :goto_7

    .line 2439
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_4f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b1

    move v1, v2

    nop

    .line 2440
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b1
    if-eq v1, v2, :cond_b2

    .line 2441
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2443
    goto/16 :goto_7

    .line 2444
    :cond_b2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2447
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2448
    goto/16 :goto_7

    .line 2423
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b3

    move v1, v2

    nop

    .line 2424
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b3
    if-eq v1, v2, :cond_b4

    .line 2425
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2427
    goto/16 :goto_7

    .line 2428
    :cond_b4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2431
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2432
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2433
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2434
    goto/16 :goto_7

    .line 2408
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_51
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b5

    move v1, v2

    nop

    .line 2409
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b5
    if-eq v1, v2, :cond_b6

    .line 2410
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2412
    goto/16 :goto_7

    .line 2413
    :cond_b6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2416
    .restart local v0    # "type":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2417
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2418
    goto/16 :goto_7

    .line 2392
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_52
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b7

    move v1, v2

    nop

    .line 2393
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b7
    if-eq v1, v2, :cond_b8

    .line 2394
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2396
    goto/16 :goto_7

    .line 2397
    :cond_b8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2400
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2401
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v10}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2402
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2403
    goto/16 :goto_7

    .line 2376
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_53
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b9

    move v1, v2

    nop

    .line 2377
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b9
    if-eq v1, v2, :cond_ba

    .line 2378
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2380
    goto/16 :goto_7

    .line 2381
    :cond_ba
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2384
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2385
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2386
    .local v3, "receivedTime":J
    invoke-virtual {v9, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2387
    goto/16 :goto_7

    .line 2360
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_54
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bb

    move v1, v2

    nop

    .line 2361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bb
    if-eq v1, v2, :cond_bc

    .line 2362
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2364
    goto/16 :goto_7

    .line 2365
    :cond_bc
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2368
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2369
    .local v2, "modeType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2370
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v9, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2371
    goto/16 :goto_7

    .line 2345
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_55
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bd

    move v1, v2

    nop

    .line 2346
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bd
    if-eq v1, v2, :cond_be

    .line 2347
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2349
    goto/16 :goto_7

    .line 2350
    :cond_be
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2353
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2354
    .local v2, "recordNumber":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2355
    goto/16 :goto_7

    .line 2330
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "recordNumber":I
    :pswitch_56
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bf

    move v1, v2

    nop

    .line 2331
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bf
    if-eq v1, v2, :cond_c0

    .line 2332
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2334
    goto/16 :goto_7

    .line 2335
    :cond_c0
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2338
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2339
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2340
    goto/16 :goto_7

    .line 2315
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_57
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c1

    move v1, v2

    nop

    .line 2316
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c1
    if-eq v1, v2, :cond_c2

    .line 2317
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2318
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2319
    goto/16 :goto_7

    .line 2320
    :cond_c2
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2323
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2324
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2325
    goto :goto_7

    .line 2301
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c3

    move v1, v2

    nop

    .line 2302
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c3
    if-eq v1, v2, :cond_c4

    .line 2303
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2305
    goto :goto_7

    .line 2306
    :cond_c4
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2309
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->networkStateChanged(I)V

    .line 2310
    goto :goto_7

    .line 2287
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_59
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c5

    move v1, v2

    nop

    .line 2288
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c5
    if-eq v1, v2, :cond_c6

    .line 2289
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2291
    goto :goto_7

    .line 2292
    :cond_c6
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2294
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2295
    .restart local v0    # "type":I
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->callStateChanged(I)V

    .line 2296
    goto :goto_7

    .line 2272
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c7

    move v1, v2

    nop

    .line 2273
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c7
    if-eq v1, v2, :cond_c8

    .line 2274
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2276
    goto :goto_7

    .line 2277
    :cond_c8
    const-string v0, "android.hardware.radio@1.0::IRadioIndication"

    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2280
    .restart local v0    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2281
    .local v2, "radioState":I
    invoke-virtual {v9, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->radioStateChanged(II)V

    .line 2282
    nop

    .line 3842
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "radioState":I
    :cond_c9
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2225
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2251
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    return-object p0

    .line 2254
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

    .line 2258
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2259
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2245
    const/4 v0, 0x1

    return v0
.end method
