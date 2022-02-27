.class public abstract Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_3/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_3/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5753
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5756
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5806
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5807
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5808
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5809
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5810
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

    .line 5778
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
        0x55t
        -0x62t
        0xat
        -0x1at
        -0x2dt
        -0x1et
        -0xet
        -0x7bt
        -0x7ft
        0xct
        -0x2at
        -0xct
        -0x4ct
        0xct
        0x1ft
        -0x64t
        -0x1at
        -0x72t
        -0x36t
        -0x1at
        -0x19t
        0x60t
        -0xet
        -0xft
        -0x34t
        0x24t
        -0x32t
        -0x56t
        0x60t
        -0xat
        -0x77t
        -0x58t
    .end array-data

    :array_1
    .array-data 1
        -0x34t
        -0x9t
        -0x4ct
        -0x37t
        0x58t
        -0x75t
        0x5t
        0x5ft
        0x4at
        0x2t
        -0x56t
        -0x52t
        -0x76t
        0x1t
        0x30t
        -0x60t
        0x7bt
        -0xct
        0x52t
        -0x3bt
        -0x48t
        -0xat
        -0x29t
        -0x63t
        0x3bt
        0x2bt
        0x76t
        0x5et
        -0x15t
        -0x5bt
        0x15t
        -0x49t
    .end array-data

    :array_2
    .array-data 1
        -0x55t
        0x13t
        0x2ct
        -0x67t
        0xat
        0x62t
        -0x10t
        -0x54t
        -0x5dt
        0x58t
        0x71t
        -0x40t
        -0x6et
        -0x3et
        0x2ft
        -0x47t
        -0x38t
        0x5dt
        0x47t
        -0x72t
        0x22t
        0x12t
        0x4et
        -0xat
        -0x5ct
        -0x30t
        -0x5et
        0x30t
        0x2dt
        -0x59t
        0x6at
        -0x61t
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x62t
        -0x21t
        0x50t
        -0x5dt
        0x78t
        -0x57t
        -0x37t
        -0x45t
        0x73t
        0x7ft
        -0x6dt
        -0xet
        0x5t
        -0x26t
        -0x47t
        0x1bt
        0x4ct
        0x63t
        -0x16t
        0x49t
        0x72t
        0x3at
        -0x4t
        0x6ft
        -0x7bt
        0x6ct
        0x13t
        -0x7et
        0x3t
        -0x16t
        -0x7ft
    .end array-data

    :array_4
    .array-data 1
        -0x65t
        0x5at
        -0x5ct
        -0x67t
        -0x14t
        0x3bt
        0x42t
        0x26t
        -0xft
        0x5ft
        0x48t
        -0xbt
        -0x13t
        0x8t
        -0x77t
        0x6et
        0x2ft
        -0x40t
        0x67t
        0x6ft
        -0x69t
        -0x74t
        -0x62t
        0x19t
        -0x64t
        0x1dt
        -0x5et
        0x1dt
        -0x56t
        -0x10t
        0x2t
        -0x5at
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

    .line 5761
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    const-string v5, "android.hardware.radio@1.0::IRadio"

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

    .line 5772
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5795
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5815
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5816
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 30
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    .line 5844
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    .line 10880
    :cond_0
    :goto_0
    move-object v14, v12

    goto/16 :goto_d

    .line 10871
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 10872
    .local v1, "_hidl_is_oneway":Z
    :cond_1
    if-eqz v1, :cond_0

    .line 10873
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10875
    goto :goto_0

    .line 10858
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 10859
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2
    if-eq v1, v2, :cond_3

    .line 10860
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10862
    goto :goto_0

    .line 10863
    :cond_3
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10865
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->notifySyspropsChanged()V

    .line 10866
    goto :goto_0

    .line 10842
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 10843
    .local v2, "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 10844
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10846
    goto :goto_0

    .line 10847
    :cond_5
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10849
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 10850
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10851
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 10852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10853
    goto :goto_0

    .line 10827
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 10828
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 10829
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10831
    goto :goto_0

    .line 10832
    :cond_7
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10834
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->ping()V

    .line 10835
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10837
    goto :goto_0

    .line 10817
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 10818
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eqz v1, :cond_0

    .line 10819
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10821
    goto :goto_0

    .line 10804
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9

    move v1, v2

    nop

    .line 10805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9
    if-eq v1, v2, :cond_a

    .line 10806
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10808
    goto/16 :goto_0

    .line 10809
    :cond_a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10811
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setHALInstrumentation()V

    .line 10812
    goto/16 :goto_0

    .line 10771
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    move v2, v1

    .line 10772
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_3
    if-eqz v2, :cond_c

    .line 10773
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10775
    goto/16 :goto_0

    .line 10776
    :cond_c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10778
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10779
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10781
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 10783
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 10784
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10785
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10786
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 10787
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_4
    if-ge v1, v4, :cond_d

    .line 10789
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 10790
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10791
    nop

    .line 10787
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10794
    .end local v1    # "_hidl_index_0":I
    :cond_d
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10796
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10798
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10799
    goto/16 :goto_0

    .line 10755
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    move v2, v1

    .line 10756
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_f

    .line 10757
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10759
    goto/16 :goto_0

    .line 10760
    :cond_f
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10762
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10763
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10764
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10765
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10766
    goto/16 :goto_0

    .line 10741
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    move v2, v1

    .line 10742
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_11

    .line 10743
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10745
    goto/16 :goto_0

    .line 10746
    :cond_11
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10748
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10750
    goto/16 :goto_0

    .line 10725
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    move v2, v1

    .line 10726
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_13

    .line 10727
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10729
    goto/16 :goto_0

    .line 10730
    :cond_13
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10732
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10733
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10734
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10735
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10736
    goto/16 :goto_0

    .line 10710
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14

    move v1, v2

    nop

    .line 10711
    .local v1, "_hidl_is_oneway":Z
    :cond_14
    if-eq v1, v2, :cond_15

    .line 10712
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10714
    goto/16 :goto_0

    .line 10715
    :cond_15
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10718
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10719
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10720
    goto/16 :goto_0

    .line 10695
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16

    move v1, v2

    nop

    .line 10696
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v1, v2, :cond_17

    .line 10697
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10699
    goto/16 :goto_0

    .line 10700
    :cond_17
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10703
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10704
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10705
    goto/16 :goto_0

    .line 10680
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18

    move v1, v2

    nop

    .line 10681
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v1, v2, :cond_19

    .line 10682
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10684
    goto/16 :goto_0

    .line 10685
    :cond_19
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10688
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10689
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10690
    goto/16 :goto_0

    .line 10664
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a

    move v1, v2

    nop

    .line 10665
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v1, v2, :cond_1b

    .line 10666
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10668
    goto/16 :goto_0

    .line 10669
    :cond_1b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10672
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10673
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10674
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10675
    goto/16 :goto_0

    .line 10648
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c

    move v1, v2

    nop

    .line 10649
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v1, v2, :cond_1d

    .line 10650
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10652
    goto/16 :goto_0

    .line 10653
    :cond_1d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10656
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10657
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10658
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10659
    goto/16 :goto_0

    .line 10633
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e

    move v1, v2

    nop

    .line 10634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v1, v2, :cond_1f

    .line 10635
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10637
    goto/16 :goto_0

    .line 10638
    :cond_1f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10641
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10642
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10643
    goto/16 :goto_0

    .line 10618
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20

    move v1, v2

    nop

    .line 10619
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v1, v2, :cond_21

    .line 10620
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10622
    goto/16 :goto_0

    .line 10623
    :cond_21
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10626
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10627
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10628
    goto/16 :goto_0

    .line 10603
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 10604
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_23

    .line 10605
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10607
    goto/16 :goto_0

    .line 10608
    :cond_23
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10611
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10612
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSilentReboot(II)V

    .line 10613
    goto/16 :goto_0

    .line 10588
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24

    move v1, v2

    nop

    .line 10589
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v1, v2, :cond_25

    .line 10590
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10592
    goto/16 :goto_0

    .line 10593
    :cond_25
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10595
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10596
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10597
    .local v2, "simMode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportSimMode(II)V

    .line 10598
    goto/16 :goto_0

    .line 10573
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simMode":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26

    move v1, v2

    nop

    .line 10574
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v1, v2, :cond_27

    .line 10575
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10577
    goto/16 :goto_0

    .line 10578
    :cond_27
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10580
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10581
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10582
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10583
    goto/16 :goto_0

    .line 10559
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28

    move v1, v2

    nop

    .line 10560
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v1, v2, :cond_29

    .line 10561
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10563
    goto/16 :goto_0

    .line 10564
    :cond_29
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10567
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10568
    goto/16 :goto_0

    .line 10544
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2a

    move v1, v2

    nop

    .line 10545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v1, v2, :cond_2b

    .line 10546
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10548
    goto/16 :goto_0

    .line 10549
    :cond_2b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10552
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10553
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10554
    goto/16 :goto_0

    .line 10530
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2c

    move v1, v2

    nop

    .line 10531
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v1, v2, :cond_2d

    .line 10532
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10534
    goto/16 :goto_0

    .line 10535
    :cond_2d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10538
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetAllConnections(I)V

    .line 10539
    goto/16 :goto_0

    .line 10515
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2e

    move v1, v2

    nop

    .line 10516
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v1, v2, :cond_2f

    .line 10517
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10519
    goto/16 :goto_0

    .line 10520
    :cond_2f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10523
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10524
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10525
    goto/16 :goto_0

    .line 10500
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_30

    move v1, v2

    nop

    .line 10501
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v1, v2, :cond_31

    .line 10502
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10504
    goto/16 :goto_0

    .line 10505
    :cond_31
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10508
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10509
    .restart local v2    # "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10510
    goto/16 :goto_0

    .line 10485
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_32

    move v1, v2

    nop

    .line 10486
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v1, v2, :cond_33

    .line 10487
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10489
    goto/16 :goto_0

    .line 10490
    :cond_33
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10493
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10494
    .local v2, "featureId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10495
    goto/16 :goto_0

    .line 10469
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_34

    move v1, v2

    nop

    .line 10470
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v1, v2, :cond_35

    .line 10471
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10473
    goto/16 :goto_0

    .line 10474
    :cond_35
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10477
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10478
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10479
    .local v3, "value":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10480
    goto/16 :goto_0

    .line 10454
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_36

    move v1, v2

    nop

    .line 10455
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v1, v2, :cond_37

    .line 10456
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10458
    goto/16 :goto_0

    .line 10459
    :cond_37
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10462
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10463
    .local v2, "configId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10464
    goto/16 :goto_0

    .line 10438
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    move v1, v2

    nop

    .line 10439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v1, v2, :cond_39

    .line 10440
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10442
    goto/16 :goto_0

    .line 10443
    :cond_39
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10446
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10447
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10448
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10449
    goto/16 :goto_0

    .line 10422
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3a

    move v1, v2

    nop

    .line 10423
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v1, v2, :cond_3b

    .line 10424
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10426
    goto/16 :goto_0

    .line 10427
    :cond_3b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10430
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10431
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10432
    .local v3, "network":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10433
    goto/16 :goto_0

    .line 10404
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3c

    move v1, v2

    nop

    :cond_3c
    move v6, v1

    .line 10405
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_3d

    .line 10406
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10408
    goto/16 :goto_0

    .line 10409
    :cond_3d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10412
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10413
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10414
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10415
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10416
    .local v11, "isLast":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10417
    goto/16 :goto_0

    .line 10389
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3e

    move v1, v2

    nop

    .line 10390
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v1, v2, :cond_3f

    .line 10391
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10392
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10393
    goto/16 :goto_0

    .line 10394
    :cond_3f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10396
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10397
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10398
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10399
    goto/16 :goto_0

    .line 10375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_40

    move v1, v2

    nop

    .line 10376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v1, v2, :cond_41

    .line 10377
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10379
    goto/16 :goto_0

    .line 10380
    :cond_41
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10383
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getApcInfo(I)V

    .line 10384
    goto/16 :goto_0

    .line 10358
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_42

    move v1, v2

    nop

    .line 10359
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_42
    if-eq v1, v2, :cond_43

    .line 10360
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10362
    goto/16 :goto_0

    .line 10363
    :cond_43
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10366
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10367
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10368
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10369
    .local v4, "interval":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setApcMode(IIII)V

    .line 10370
    goto/16 :goto_0

    .line 10341
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_44

    move v1, v2

    nop

    .line 10342
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v1, v2, :cond_45

    .line 10343
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10345
    goto/16 :goto_0

    .line 10346
    :cond_45
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10349
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10350
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10351
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10352
    .local v4, "pktloss":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10353
    goto/16 :goto_0

    .line 10321
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_46

    move v1, v2

    nop

    :cond_46
    move v8, v1

    .line 10322
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_47

    .line 10323
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10324
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10325
    goto/16 :goto_0

    .line 10326
    :cond_47
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10329
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10330
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10331
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10332
    .local v16, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 10333
    .local v17, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10334
    .local v18, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 10335
    .local v19, "dstPort":I
    move-object v0, v13

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10336
    goto/16 :goto_0

    .line 10306
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v16    # "srcIp":Ljava/lang/String;
    .end local v17    # "srcPort":I
    .end local v18    # "dstIp":Ljava/lang/String;
    .end local v19    # "dstPort":I
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_48

    move v1, v2

    nop

    .line 10307
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_48
    if-eq v1, v2, :cond_49

    .line 10308
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10310
    goto/16 :goto_0

    .line 10311
    :cond_49
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10314
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10315
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10316
    goto/16 :goto_0

    .line 10281
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4a

    move v1, v2

    nop

    :cond_4a
    move v11, v1

    .line 10282
    .local v11, "_hidl_is_oneway":Z
    if-eq v11, v2, :cond_4b

    .line 10283
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10285
    goto/16 :goto_0

    .line 10286
    :cond_4b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10289
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10290
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10291
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10292
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10293
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10294
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10295
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10296
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10297
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10298
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10299
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10300
    .local v27, "ueWlanMac":Ljava/lang/String;
    move-object v0, v13

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v28, v11

    move-object/from16 v11, v26

    .end local v11    # "_hidl_is_oneway":Z
    .local v28, "_hidl_is_oneway":Z
    move-object v14, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10301
    goto/16 :goto_d

    .line 10264
    .end local v16    # "serial":I
    .end local v17    # "accountId":Ljava/lang/String;
    .end local v18    # "broadcastFlag":Ljava/lang/String;
    .end local v19    # "latitude":Ljava/lang/String;
    .end local v20    # "longitude":Ljava/lang/String;
    .end local v21    # "accuracy":Ljava/lang/String;
    .end local v22    # "method":Ljava/lang/String;
    .end local v23    # "city":Ljava/lang/String;
    .end local v24    # "state":Ljava/lang/String;
    .end local v25    # "zip":Ljava/lang/String;
    .end local v26    # "countryCode":Ljava/lang/String;
    .end local v27    # "ueWlanMac":Ljava/lang/String;
    .end local v28    # "_hidl_is_oneway":Z
    :pswitch_1c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4c

    move v1, v2

    nop

    .line 10265
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4c
    if-eq v1, v2, :cond_4d

    .line 10266
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10268
    goto/16 :goto_d

    .line 10269
    :cond_4d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10272
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10273
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10274
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10275
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10276
    goto/16 :goto_d

    .line 10248
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_1d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4e

    move v1, v2

    nop

    .line 10249
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v1, v2, :cond_4f

    .line 10250
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10252
    goto/16 :goto_d

    .line 10253
    :cond_4f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10256
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10257
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10258
    .local v3, "snr":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10259
    goto/16 :goto_d

    .line 10230
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_1e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_50

    move v1, v2

    nop

    :cond_50
    move v6, v1

    .line 10231
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_51

    .line 10232
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10234
    goto/16 :goto_d

    .line 10235
    :cond_51
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10238
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10239
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10240
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10241
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10242
    .local v11, "apMac":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10243
    goto/16 :goto_d

    .line 10213
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_1f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_52

    move v1, v2

    nop

    .line 10214
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v1, v2, :cond_53

    .line 10215
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10217
    goto/16 :goto_d

    .line 10218
    :cond_53
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10221
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10222
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10223
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10224
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10225
    goto/16 :goto_d

    .line 10198
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_20
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_54

    move v1, v2

    nop

    .line 10199
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v1, v2, :cond_55

    .line 10200
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10202
    goto/16 :goto_d

    .line 10203
    :cond_55
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10206
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10207
    .local v2, "vdp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10208
    goto/16 :goto_d

    .line 10183
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "vdp":I
    :pswitch_21
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_56

    move v1, v2

    nop

    .line 10184
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v1, v2, :cond_57

    .line 10185
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10187
    goto/16 :goto_d

    .line 10188
    :cond_57
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10191
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10192
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setE911State(II)V

    .line 10193
    goto/16 :goto_d

    .line 10167
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_22
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_58

    move v1, v2

    nop

    .line 10168
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v1, v2, :cond_59

    .line 10169
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10171
    goto/16 :goto_d

    .line 10172
    :cond_59
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10175
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10176
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10177
    .local v3, "interfaceId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10178
    goto/16 :goto_d

    .line 10152
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_23
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5a

    move v1, v2

    nop

    .line 10153
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v1, v2, :cond_5b

    .line 10154
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10156
    goto/16 :goto_d

    .line 10157
    :cond_5b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10160
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10161
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10162
    goto/16 :goto_d

    .line 10137
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_24
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    move v1, v2

    nop

    .line 10138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v1, v2, :cond_5d

    .line 10139
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10141
    goto/16 :goto_d

    .line 10142
    :cond_5d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10145
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10146
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10147
    goto/16 :goto_d

    .line 10122
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_25
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5e

    move v1, v2

    nop

    .line 10123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v1, v2, :cond_5f

    .line 10124
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10126
    goto/16 :goto_d

    .line 10127
    :cond_5f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10130
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10131
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10132
    goto/16 :goto_d

    .line 10107
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_26
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_60

    move v1, v2

    nop

    .line 10108
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v1, v2, :cond_61

    .line 10109
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10111
    goto/16 :goto_d

    .line 10112
    :cond_61
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10115
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10116
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10117
    goto/16 :goto_d

    .line 10093
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_27
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_62

    move v1, v2

    nop

    .line 10094
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v1, v2, :cond_63

    .line 10095
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10097
    goto/16 :goto_d

    .line 10098
    :cond_63
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10101
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->restartRILD(I)V

    .line 10102
    goto/16 :goto_d

    .line 10079
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_28
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_64

    move v1, v2

    nop

    .line 10080
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v1, v2, :cond_65

    .line 10081
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10083
    goto/16 :goto_d

    .line 10084
    :cond_65
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10087
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetRadio(I)V

    .line 10088
    goto/16 :goto_d

    .line 10064
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_66

    move v1, v2

    nop

    .line 10065
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v1, v2, :cond_67

    .line 10066
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10068
    goto/16 :goto_d

    .line 10069
    :cond_67
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10072
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10073
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10074
    goto/16 :goto_d

    .line 10049
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_68

    move v1, v2

    nop

    .line 10050
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v1, v2, :cond_69

    .line 10051
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10053
    goto/16 :goto_d

    .line 10054
    :cond_69
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v0

    .line 10057
    .local v0, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10058
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10059
    goto/16 :goto_d

    .line 10034
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6a

    move v1, v2

    nop

    .line 10035
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v1, v2, :cond_6b

    .line 10036
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10037
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10038
    goto/16 :goto_d

    .line 10039
    :cond_6b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10042
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10043
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10044
    goto/16 :goto_d

    .line 10019
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6c

    move v1, v2

    nop

    .line 10020
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v1, v2, :cond_6d

    .line 10021
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10023
    goto/16 :goto_d

    .line 10024
    :cond_6d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10027
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10028
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10029
    goto/16 :goto_d

    .line 10004
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_2d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6e

    move v1, v2

    nop

    .line 10005
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v1, v2, :cond_6f

    .line 10006
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10008
    goto/16 :goto_d

    .line 10009
    :cond_6f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10012
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10013
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10014
    goto/16 :goto_d

    .line 9989
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_2e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_70

    move v1, v2

    nop

    .line 9990
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v1, v2, :cond_71

    .line 9991
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9993
    goto/16 :goto_d

    .line 9994
    :cond_71
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9997
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9998
    .local v2, "resultCode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 9999
    goto/16 :goto_d

    .line 9974
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resultCode":I
    :pswitch_2f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_72

    move v1, v2

    nop

    .line 9975
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v1, v2, :cond_73

    .line 9976
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9977
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9978
    goto/16 :goto_d

    .line 9979
    :cond_73
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9982
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9983
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setTrm(II)V

    .line 9984
    goto/16 :goto_d

    .line 9957
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_30
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_74

    move v1, v2

    nop

    .line 9958
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v1, v2, :cond_75

    .line 9959
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9960
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9961
    goto/16 :goto_d

    .line 9962
    :cond_75
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9965
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9966
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9967
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9968
    .local v4, "param2":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setFdMode(IIII)V

    .line 9969
    goto/16 :goto_d

    .line 9940
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_31
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_76

    move v1, v2

    nop

    .line 9941
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v1, v2, :cond_77

    .line 9942
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9944
    goto/16 :goto_d

    .line 9945
    :cond_77
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9948
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9949
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9950
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9951
    .local v4, "nAct":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 9952
    goto/16 :goto_d

    .line 9926
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_32
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_78

    move v1, v2

    nop

    .line 9927
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_78
    if-eq v1, v2, :cond_79

    .line 9928
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9929
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9930
    goto/16 :goto_d

    .line 9931
    :cond_79
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9934
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCurrentPOLList(I)V

    .line 9935
    goto/16 :goto_d

    .line 9912
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_33
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7a

    move v1, v2

    nop

    .line 9913
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v1, v2, :cond_7b

    .line 9914
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9915
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9916
    goto/16 :goto_d

    .line 9917
    :cond_7b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9920
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPOLCapability(I)V

    .line 9921
    goto/16 :goto_d

    .line 9897
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7c

    move v1, v2

    nop

    .line 9898
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v1, v2, :cond_7d

    .line 9899
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9901
    goto/16 :goto_d

    .line 9902
    :cond_7d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9905
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9906
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getRxTestResult(II)V

    .line 9907
    goto/16 :goto_d

    .line 9882
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_35
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7e

    move v1, v2

    nop

    .line 9883
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7e
    if-eq v1, v2, :cond_7f

    .line 9884
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9885
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9886
    goto/16 :goto_d

    .line 9887
    :cond_7f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9890
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9891
    .local v2, "antType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRxTestConfig(II)V

    .line 9892
    goto/16 :goto_d

    .line 9862
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "antType":I
    :pswitch_36
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    :cond_80
    move v8, v1

    .line 9863
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_81

    .line 9864
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9865
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9866
    goto/16 :goto_d

    .line 9867
    :cond_81
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9870
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9871
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9872
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9873
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9874
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9875
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9876
    .local v18, "rilDataRegState":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9877
    goto/16 :goto_d

    .line 9847
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_37
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_82

    move v1, v2

    nop

    .line 9848
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_82
    if-eq v1, v2, :cond_83

    .line 9849
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9851
    goto/16 :goto_d

    .line 9852
    :cond_83
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9855
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9856
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9857
    goto/16 :goto_d

    .line 9833
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_38
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_84

    move v1, v2

    nop

    .line 9834
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v1, v2, :cond_85

    .line 9835
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9837
    goto/16 :goto_d

    .line 9838
    :cond_85
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9841
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9842
    goto/16 :goto_d

    .line 9816
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_39
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_86

    move v1, v2

    nop

    .line 9817
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_86
    if-eq v1, v2, :cond_87

    .line 9818
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9820
    goto/16 :goto_d

    .line 9821
    :cond_87
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9824
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9825
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9826
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9827
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9828
    goto/16 :goto_d

    .line 9802
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_3a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_88

    move v1, v2

    nop

    .line 9803
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v1, v2, :cond_89

    .line 9804
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9806
    goto/16 :goto_d

    .line 9807
    :cond_89
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9810
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->abortFemtocellList(I)V

    .line 9811
    goto/16 :goto_d

    .line 9788
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8a

    move v1, v2

    nop

    .line 9789
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v1, v2, :cond_8b

    .line 9790
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9792
    goto/16 :goto_d

    .line 9793
    :cond_8b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9796
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getFemtocellList(I)V

    .line 9797
    goto/16 :goto_d

    .line 9774
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8c

    move v1, v2

    nop

    .line 9775
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v1, v2, :cond_8d

    .line 9776
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9778
    goto/16 :goto_d

    .line 9779
    :cond_8d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9782
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9783
    goto/16 :goto_d

    .line 9760
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8e

    move v1, v2

    nop

    .line 9761
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v1, v2, :cond_8f

    .line 9762
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9764
    goto/16 :goto_d

    .line 9765
    :cond_8f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9768
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9769
    goto/16 :goto_d

    .line 9746
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 9747
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_91

    .line 9748
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9750
    goto/16 :goto_d

    .line 9751
    :cond_91
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9754
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9755
    goto/16 :goto_d

    .line 9729
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_92

    move v1, v2

    nop

    .line 9730
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v1, v2, :cond_93

    .line 9731
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9733
    goto/16 :goto_d

    .line 9734
    :cond_93
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9737
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9738
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9739
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9740
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9741
    goto/16 :goto_d

    .line 9715
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_40
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_94

    move v1, v2

    nop

    .line 9716
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v1, v2, :cond_95

    .line 9717
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9719
    goto/16 :goto_d

    .line 9720
    :cond_95
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9723
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9724
    goto/16 :goto_d

    .line 9700
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_41
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_96

    move v1, v2

    nop

    .line 9701
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_96
    if-eq v1, v2, :cond_97

    .line 9702
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9703
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9704
    goto/16 :goto_d

    .line 9705
    :cond_97
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9708
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9709
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reloadModemType(II)V

    .line 9710
    goto/16 :goto_d

    .line 9685
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_42
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_98

    move v1, v2

    nop

    .line 9686
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_98
    if-eq v1, v2, :cond_99

    .line 9687
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9688
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9689
    goto/16 :goto_d

    .line 9690
    :cond_99
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9693
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9694
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->storeModemType(II)V

    .line 9695
    goto/16 :goto_d

    .line 9670
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_43
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9a

    move v1, v2

    nop

    .line 9671
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9a
    if-eq v1, v2, :cond_9b

    .line 9672
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9674
    goto/16 :goto_d

    .line 9675
    :cond_9b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9678
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9679
    .local v2, "sessionId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResumeRegistration(II)V

    .line 9680
    goto/16 :goto_d

    .line 9655
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionId":I
    :pswitch_44
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9c

    move v1, v2

    nop

    .line 9656
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9c
    if-eq v1, v2, :cond_9d

    .line 9657
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9659
    goto/16 :goto_d

    .line 9660
    :cond_9d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9663
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9664
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9665
    goto/16 :goto_d

    .line 9640
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_45
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9e

    move v1, v2

    nop

    .line 9641
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9e
    if-eq v1, v2, :cond_9f

    .line 9642
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9644
    goto/16 :goto_d

    .line 9645
    :cond_9f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9648
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9649
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9650
    goto/16 :goto_d

    .line 9624
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_46
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a0

    move v1, v2

    nop

    .line 9625
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a0
    if-eq v1, v2, :cond_a1

    .line 9626
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9628
    goto/16 :goto_d

    .line 9629
    :cond_a1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9632
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9633
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9634
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9635
    goto/16 :goto_d

    .line 9608
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_47
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a2

    move v1, v2

    nop

    .line 9609
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a2
    if-eq v1, v2, :cond_a3

    .line 9610
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9612
    goto/16 :goto_d

    .line 9613
    :cond_a3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9616
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9617
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9618
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9619
    goto/16 :goto_d

    .line 9594
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_48
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a4

    move v1, v2

    nop

    .line 9595
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a4
    if-eq v1, v2, :cond_a5

    .line 9596
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9597
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9598
    goto/16 :goto_d

    .line 9599
    :cond_a5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9602
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9603
    goto/16 :goto_d

    .line 9578
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_49
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    move v1, v2

    nop

    .line 9579
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a6
    if-eq v1, v2, :cond_a7

    .line 9580
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9582
    goto/16 :goto_d

    .line 9583
    :cond_a7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9586
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9587
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9588
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9589
    goto/16 :goto_d

    .line 9564
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a8

    move v1, v2

    nop

    .line 9565
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a8
    if-eq v1, v2, :cond_a9

    .line 9566
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9568
    goto/16 :goto_d

    .line 9569
    :cond_a9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9572
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9573
    goto/16 :goto_d

    .line 9550
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_aa

    move v1, v2

    nop

    .line 9551
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_aa
    if-eq v1, v2, :cond_ab

    .line 9552
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9554
    goto/16 :goto_d

    .line 9555
    :cond_ab
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9558
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9559
    goto/16 :goto_d

    .line 9535
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ac

    move v1, v2

    nop

    .line 9536
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ac
    if-eq v1, v2, :cond_ad

    .line 9537
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9538
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9539
    goto/16 :goto_d

    .line 9540
    :cond_ad
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9543
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9544
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9545
    goto/16 :goto_d

    .line 9519
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_4d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ae

    move v1, v2

    nop

    .line 9520
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ae
    if-eq v1, v2, :cond_af

    .line 9521
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9523
    goto/16 :goto_d

    .line 9524
    :cond_af
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9527
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9528
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9529
    .local v3, "serialId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->removeCbMsg(III)V

    .line 9530
    goto/16 :goto_d

    .line 9504
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_4e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b0

    move v1, v2

    nop

    .line 9505
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b0
    if-eq v1, v2, :cond_b1

    .line 9506
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9507
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9508
    goto/16 :goto_d

    .line 9509
    :cond_b1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9511
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9512
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9513
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEtws(II)V

    .line 9514
    goto/16 :goto_d

    .line 9490
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_4f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b2

    move v1, v2

    nop

    .line 9491
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b2
    if-eq v1, v2, :cond_b3

    .line 9492
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9494
    goto/16 :goto_d

    .line 9495
    :cond_b3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9498
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9499
    goto/16 :goto_d

    .line 9474
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_50
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b4

    move v1, v2

    nop

    .line 9475
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b4
    if-eq v1, v2, :cond_b5

    .line 9476
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9477
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9478
    goto/16 :goto_d

    .line 9479
    :cond_b5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9482
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9483
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9484
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9485
    goto/16 :goto_d

    .line 9460
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_51
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b6

    move v1, v2

    nop

    .line 9461
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b6
    if-eq v1, v2, :cond_b7

    .line 9462
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9464
    goto/16 :goto_d

    .line 9465
    :cond_b7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9468
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmsParameters(I)V

    .line 9469
    goto/16 :goto_d

    .line 9441
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_52
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b8

    move v1, v2

    nop

    :cond_b8
    move v7, v1

    .line 9442
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_b9

    .line 9443
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9445
    goto/16 :goto_d

    .line 9446
    :cond_b9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9449
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9450
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9451
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9452
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9453
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9454
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, v13

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9455
    goto/16 :goto_d

    .line 9424
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_53
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ba

    move v1, v2

    nop

    .line 9425
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ba
    if-eq v1, v2, :cond_bb

    .line 9426
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9428
    goto/16 :goto_d

    .line 9429
    :cond_bb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9431
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9432
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9433
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9434
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9435
    .local v4, "simType":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9436
    goto/16 :goto_d

    .line 9408
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_54
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bc

    move v1, v2

    nop

    .line 9409
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bc
    if-eq v1, v2, :cond_bd

    .line 9410
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9412
    goto/16 :goto_d

    .line 9413
    :cond_bd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9416
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9417
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9418
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9419
    goto/16 :goto_d

    .line 9388
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_55
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_be

    move v1, v2

    nop

    :cond_be
    move v8, v1

    .line 9389
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_bf

    .line 9390
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9392
    goto/16 :goto_d

    .line 9393
    :cond_bf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9396
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9397
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9398
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9399
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9400
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9401
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9402
    .local v18, "gid2":Ljava/lang/String;
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9403
    goto/16 :goto_d

    .line 9373
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_56
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c0

    move v1, v2

    nop

    .line 9374
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c0
    if-eq v1, v2, :cond_c1

    .line 9375
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9377
    goto/16 :goto_d

    .line 9378
    :cond_c1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9381
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9382
    .local v2, "category":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryNetworkLock(II)V

    .line 9383
    goto/16 :goto_d

    .line 9357
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "category":I
    :pswitch_57
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c2

    move v1, v2

    nop

    .line 9358
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v1, v2, :cond_c3

    .line 9359
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9360
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9361
    goto/16 :goto_d

    .line 9362
    :cond_c3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9365
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9366
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9367
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9368
    goto/16 :goto_d

    .line 9342
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_58
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c4

    move v1, v2

    nop

    .line 9343
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c4
    if-eq v1, v2, :cond_c5

    .line 9344
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9346
    goto/16 :goto_d

    .line 9347
    :cond_c5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9350
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9351
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSimPower(II)V

    .line 9352
    goto/16 :goto_d

    .line 9328
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_59
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c6

    move v1, v2

    nop

    .line 9329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c6
    if-eq v1, v2, :cond_c7

    .line 9330
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9332
    goto/16 :goto_d

    .line 9333
    :cond_c7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9336
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getIccid(I)V

    .line 9337
    goto/16 :goto_d

    .line 9314
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c8

    move v1, v2

    nop

    .line 9315
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c8
    if-eq v1, v2, :cond_c9

    .line 9316
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9318
    goto/16 :goto_d

    .line 9319
    :cond_c9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9322
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getATR(I)V

    .line 9323
    goto/16 :goto_d

    .line 9299
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ca

    move v1, v2

    nop

    .line 9300
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ca
    if-eq v1, v2, :cond_cb

    .line 9301
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9303
    goto/16 :goto_d

    .line 9304
    :cond_cb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9307
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9308
    .restart local v2    # "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9309
    goto/16 :goto_d

    .line 9284
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cc

    move v1, v2

    nop

    .line 9285
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cc
    if-eq v1, v2, :cond_cd

    .line 9286
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9288
    goto/16 :goto_d

    .line 9289
    :cond_cd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9292
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9293
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setModemPower(IZ)V

    .line 9294
    goto/16 :goto_d

    .line 9269
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_5d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ce

    move v1, v2

    nop

    .line 9270
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ce
    if-eq v1, v2, :cond_cf

    .line 9271
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9272
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9273
    goto/16 :goto_d

    .line 9274
    :cond_cf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9277
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9278
    .local v2, "ready":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPhonebookReady(II)V

    .line 9279
    goto/16 :goto_d

    .line 9253
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ready":I
    :pswitch_5e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d0

    move v1, v2

    nop

    .line 9254
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d0
    if-eq v1, v2, :cond_d1

    .line 9255
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9257
    goto/16 :goto_d

    .line 9258
    :cond_d1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9261
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9262
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9263
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBAasList(III)V

    .line 9264
    goto/16 :goto_d

    .line 9237
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_5f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d2

    move v1, v2

    nop

    .line 9238
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d2
    if-eq v1, v2, :cond_d3

    .line 9239
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9241
    goto/16 :goto_d

    .line 9242
    :cond_d3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9245
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9246
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9247
    .local v3, "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9248
    goto/16 :goto_d

    .line 9221
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_60
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d4

    move v1, v2

    nop

    .line 9222
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d4
    if-eq v1, v2, :cond_d5

    .line 9223
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9225
    goto/16 :goto_d

    .line 9226
    :cond_d5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9229
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9230
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9231
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9232
    goto/16 :goto_d

    .line 9205
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_61
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d6

    move v1, v2

    nop

    .line 9206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d6
    if-eq v1, v2, :cond_d7

    .line 9207
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9209
    goto/16 :goto_d

    .line 9210
    :cond_d7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9213
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9214
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9215
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9216
    goto/16 :goto_d

    .line 9189
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_62
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d8

    move v1, v2

    nop

    .line 9190
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d8
    if-eq v1, v2, :cond_d9

    .line 9191
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9193
    goto/16 :goto_d

    .line 9194
    :cond_d9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9197
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9198
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9199
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9200
    goto/16 :goto_d

    .line 9173
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_63
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_da

    move v1, v2

    nop

    .line 9174
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_da
    if-eq v1, v2, :cond_db

    .line 9175
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9177
    goto/16 :goto_d

    .line 9178
    :cond_db
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9181
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9182
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9183
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9184
    goto/16 :goto_d

    .line 9157
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_64
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dc

    move v1, v2

    nop

    .line 9158
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dc
    if-eq v1, v2, :cond_dd

    .line 9159
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9161
    goto/16 :goto_d

    .line 9162
    :cond_dd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9164
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9165
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9166
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9167
    .local v3, "index2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9168
    goto/16 :goto_d

    .line 9141
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_65
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_de

    move v1, v2

    nop

    .line 9142
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_de
    if-eq v1, v2, :cond_df

    .line 9143
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9145
    goto/16 :goto_d

    .line 9146
    :cond_df
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9149
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9150
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9151
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9152
    goto/16 :goto_d

    .line 9127
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_66
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e0

    move v1, v2

    nop

    .line 9128
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e0
    if-eq v1, v2, :cond_e1

    .line 9129
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9131
    goto/16 :goto_d

    .line 9132
    :cond_e1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9134
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9135
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9136
    goto/16 :goto_d

    .line 9113
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_67
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e2

    move v1, v2

    nop

    .line 9114
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e2
    if-eq v1, v2, :cond_e3

    .line 9115
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9117
    goto/16 :goto_d

    .line 9118
    :cond_e3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9121
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9122
    goto/16 :goto_d

    .line 9097
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_68
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e4

    move v1, v2

    nop

    .line 9098
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e4
    if-eq v1, v2, :cond_e5

    .line 9099
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9101
    goto/16 :goto_d

    .line 9102
    :cond_e5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9105
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9106
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9107
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9108
    goto/16 :goto_d

    .line 9082
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_69
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e6

    move v1, v2

    nop

    .line 9083
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e6
    if-eq v1, v2, :cond_e7

    .line 9084
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9086
    goto/16 :goto_d

    .line 9087
    :cond_e7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9090
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9091
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9092
    goto/16 :goto_d

    .line 9066
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    :pswitch_6a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e8

    move v1, v2

    nop

    .line 9067
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e8
    if-eq v1, v2, :cond_e9

    .line 9068
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9070
    goto/16 :goto_d

    .line 9071
    :cond_e9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9074
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9075
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9076
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readUPBGasList(III)V

    .line 9077
    goto/16 :goto_d

    .line 9049
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ea

    move v1, v2

    nop

    .line 9050
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ea
    if-eq v1, v2, :cond_eb

    .line 9051
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9053
    goto/16 :goto_d

    .line 9054
    :cond_eb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9058
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9059
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9060
    .local v4, "entryIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9061
    goto/16 :goto_d

    .line 9034
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ec

    move v1, v2

    nop

    .line 9035
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ec
    if-eq v1, v2, :cond_ed

    .line 9036
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9037
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9038
    goto/16 :goto_d

    .line 9039
    :cond_ed
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9042
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9043
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9044
    goto/16 :goto_d

    .line 9020
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ee

    move v1, v2

    nop

    .line 9021
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ee
    if-eq v1, v2, :cond_ef

    .line 9022
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9023
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9024
    goto/16 :goto_d

    .line 9025
    :cond_ef
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9028
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryUPBCapability(I)V

    .line 9029
    goto/16 :goto_d

    .line 9003
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f0

    move v1, v2

    nop

    .line 9004
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f0
    if-eq v1, v2, :cond_f1

    .line 9005
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9006
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9007
    goto/16 :goto_d

    .line 9008
    :cond_f1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9011
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9012
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9013
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9014
    .local v4, "eIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9015
    goto/16 :goto_d

    .line 8987
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_6f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f2

    move v1, v2

    nop

    .line 8988
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f2
    if-eq v1, v2, :cond_f3

    .line 8989
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8991
    goto/16 :goto_d

    .line 8992
    :cond_f3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8995
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 8996
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8997
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 8998
    goto/16 :goto_d

    .line 8972
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_70
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f4

    move v1, v2

    nop

    .line 8973
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f4
    if-eq v1, v2, :cond_f5

    .line 8974
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8976
    goto/16 :goto_d

    .line 8977
    :cond_f5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8979
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8980
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8981
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 8982
    goto/16 :goto_d

    .line 8958
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_71
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f6

    move v1, v2

    nop

    .line 8959
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f6
    if-eq v1, v2, :cond_f7

    .line 8960
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8961
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8962
    goto/16 :goto_d

    .line 8963
    :cond_f7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8966
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getEccNum(I)V

    .line 8967
    goto/16 :goto_d

    .line 8942
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_72
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f8

    move v1, v2

    nop

    .line 8943
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v1, v2, :cond_f9

    .line 8944
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8945
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8946
    goto/16 :goto_d

    .line 8947
    :cond_f9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8950
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8951
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8952
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 8953
    goto/16 :goto_d

    .line 8927
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_73
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fa

    move v1, v2

    nop

    .line 8928
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fa
    if-eq v1, v2, :cond_fb

    .line 8929
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8931
    goto/16 :goto_d

    .line 8932
    :cond_fb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8935
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8936
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 8937
    goto/16 :goto_d

    .line 8912
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_74
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fc

    move v1, v2

    nop

    .line 8913
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fc
    if-eq v1, v2, :cond_fd

    .line 8914
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8915
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8916
    goto/16 :goto_d

    .line 8917
    :cond_fd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8920
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8921
    .local v2, "phoneType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->eccPreferredRat(II)V

    .line 8922
    goto/16 :goto_d

    .line 8896
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneType":I
    :pswitch_75
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    move v1, v2

    nop

    .line 8897
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fe
    if-eq v1, v2, :cond_ff

    .line 8898
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8899
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8900
    goto/16 :goto_d

    .line 8901
    :cond_ff
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8904
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8905
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8906
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->currentStatus(III)V

    .line 8907
    goto/16 :goto_d

    .line 8880
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_76
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_100

    move v1, v2

    nop

    .line 8881
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_100
    if-eq v1, v2, :cond_101

    .line 8882
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8883
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8884
    goto/16 :goto_d

    .line 8885
    :cond_101
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8887
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8888
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8889
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8890
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 8891
    goto/16 :goto_d

    .line 8865
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_77
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_102

    move v1, v2

    nop

    .line 8866
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_102
    if-eq v1, v2, :cond_103

    .line 8867
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8868
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8869
    goto/16 :goto_d

    .line 8870
    :cond_103
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8873
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8874
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8875
    goto/16 :goto_d

    .line 8849
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceCategory":I
    :pswitch_78
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_104

    move v1, v2

    nop

    .line 8850
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_104
    if-eq v1, v2, :cond_105

    .line 8851
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8853
    goto/16 :goto_d

    .line 8854
    :cond_105
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8857
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8858
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8859
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8860
    goto/16 :goto_d

    .line 8832
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_79
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_106

    move v1, v2

    nop

    .line 8833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_106
    if-eq v1, v2, :cond_107

    .line 8834
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8836
    goto/16 :goto_d

    .line 8837
    :cond_107
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8840
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8841
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8842
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8843
    .local v4, "seqNumber":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallIndication(IIII)V

    .line 8844
    goto/16 :goto_d

    .line 8818
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_7a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_108

    move v1, v2

    nop

    .line 8819
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_108
    if-eq v1, v2, :cond_109

    .line 8820
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8822
    goto/16 :goto_d

    .line 8823
    :cond_109
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8826
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangupAll(I)V

    .line 8827
    goto/16 :goto_d

    .line 8803
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10a

    move v1, v2

    nop

    .line 8804
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10a
    if-eq v1, v2, :cond_10b

    .line 8805
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8807
    goto/16 :goto_d

    .line 8808
    :cond_10b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8811
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8812
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8813
    goto/16 :goto_d

    .line 8789
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10c

    move v1, v2

    nop

    .line 8790
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10c
    if-eq v1, v2, :cond_10d

    .line 8791
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8793
    goto/16 :goto_d

    .line 8794
    :cond_10d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8797
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resetSuppServ(I)V

    .line 8798
    goto/16 :goto_d

    .line 8775
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10e

    move v1, v2

    nop

    .line 8776
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10e
    if-eq v1, v2, :cond_10f

    .line 8777
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8779
    goto/16 :goto_d

    .line 8780
    :cond_10f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8783
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getXcapStatus(I)V

    .line 8784
    goto/16 :goto_d

    .line 8761
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_110

    move v1, v2

    nop

    .line 8762
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_110
    if-eq v1, v2, :cond_111

    .line 8763
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8765
    goto/16 :goto_d

    .line 8766
    :cond_111
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8769
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->cancelUssi(I)V

    .line 8770
    goto/16 :goto_d

    .line 8745
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_112

    move v1, v2

    nop

    .line 8746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_112
    if-eq v1, v2, :cond_113

    .line 8747
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8749
    goto/16 :goto_d

    .line 8750
    :cond_113
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8753
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8754
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8755
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8756
    goto/16 :goto_d

    .line 8727
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_80
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_114

    move v1, v2

    nop

    :cond_114
    move v6, v1

    .line 8728
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_115

    .line 8729
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8731
    goto/16 :goto_d

    .line 8732
    :cond_115
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8735
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8736
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8737
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8738
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8739
    .local v11, "netId":I
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8740
    goto/16 :goto_d

    .line 8711
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_81
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_116

    move v1, v2

    nop

    .line 8712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_116
    if-eq v1, v2, :cond_117

    .line 8713
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8715
    goto/16 :goto_d

    .line 8716
    :cond_117
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8719
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8720
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8721
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8722
    goto/16 :goto_d

    .line 8695
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_82
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_118

    move v1, v2

    nop

    .line 8696
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_118
    if-eq v1, v2, :cond_119

    .line 8697
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8699
    goto/16 :goto_d

    .line 8700
    :cond_119
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8703
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8704
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8705
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8706
    goto/16 :goto_d

    .line 8680
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_83
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11a

    move v1, v2

    nop

    .line 8681
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v1, v2, :cond_11b

    .line 8682
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8684
    goto/16 :goto_d

    .line 8685
    :cond_11b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8688
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8689
    .local v2, "colrEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setColr(II)V

    .line 8690
    goto/16 :goto_d

    .line 8665
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrEnable":I
    :pswitch_84
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11c

    move v1, v2

    nop

    .line 8666
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11c
    if-eq v1, v2, :cond_11d

    .line 8667
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8669
    goto/16 :goto_d

    .line 8670
    :cond_11d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8673
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8674
    .local v2, "colpEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setColp(II)V

    .line 8675
    goto/16 :goto_d

    .line 8650
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colpEnable":I
    :pswitch_85
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11e

    move v1, v2

    nop

    .line 8651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11e
    if-eq v1, v2, :cond_11f

    .line 8652
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8654
    goto/16 :goto_d

    .line 8655
    :cond_11f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8658
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8659
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8660
    goto/16 :goto_d

    .line 8636
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_86
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_120

    move v1, v2

    nop

    .line 8637
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_120
    if-eq v1, v2, :cond_121

    .line 8638
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8640
    goto/16 :goto_d

    .line 8641
    :cond_121
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8644
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getColr(I)V

    .line 8645
    goto/16 :goto_d

    .line 8622
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_87
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_122

    move v1, v2

    nop

    .line 8623
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_122
    if-eq v1, v2, :cond_123

    .line 8624
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8626
    goto/16 :goto_d

    .line 8627
    :cond_123
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8629
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8630
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getColp(I)V

    .line 8631
    goto/16 :goto_d

    .line 8607
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_88
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_124

    move v1, v2

    nop

    .line 8608
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_124
    if-eq v1, v2, :cond_125

    .line 8609
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8611
    goto/16 :goto_d

    .line 8612
    :cond_125
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8615
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8616
    .local v2, "clipEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setClip(II)V

    .line 8617
    goto/16 :goto_d

    .line 8589
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clipEnable":I
    :pswitch_89
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_126

    move v1, v2

    nop

    :cond_126
    move v6, v1

    .line 8590
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_127

    .line 8591
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8593
    goto/16 :goto_d

    .line 8594
    :cond_127
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8597
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8598
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8599
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8600
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8601
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8602
    goto/16 :goto_d

    .line 8574
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_8a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_128

    move v1, v2

    nop

    .line 8575
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_128
    if-eq v1, v2, :cond_129

    .line 8576
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8577
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8578
    goto/16 :goto_d

    .line 8579
    :cond_129
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8582
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8583
    .local v2, "phoneId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getRoamingEnable(II)V

    .line 8584
    goto/16 :goto_d

    .line 8559
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    :pswitch_8b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12a

    move v1, v2

    nop

    .line 8560
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12a
    if-eq v1, v2, :cond_12b

    .line 8561
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8563
    goto/16 :goto_d

    .line 8564
    :cond_12b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8567
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8568
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8569
    goto/16 :goto_d

    .line 8544
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12c

    move v1, v2

    nop

    .line 8545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v1, v2, :cond_12d

    .line 8546
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8548
    goto/16 :goto_d

    .line 8549
    :cond_12d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8552
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8553
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8554
    goto/16 :goto_d

    .line 8530
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_8d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12e

    move v1, v2

    nop

    .line 8531
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12e
    if-eq v1, v2, :cond_12f

    .line 8532
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8534
    goto/16 :goto_d

    .line 8535
    :cond_12f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8538
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8539
    goto/16 :goto_d

    .line 8514
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_130

    move v1, v2

    nop

    .line 8515
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_130
    if-eq v1, v2, :cond_131

    .line 8516
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8518
    goto/16 :goto_d

    .line 8519
    :cond_131
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8522
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8523
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8524
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8525
    goto/16 :goto_d

    .line 8497
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_8f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_132

    move v1, v2

    nop

    .line 8498
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_132
    if-eq v1, v2, :cond_133

    .line 8499
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8501
    goto/16 :goto_d

    .line 8502
    :cond_133
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8505
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8506
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8507
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8508
    .local v4, "timer":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8509
    goto/16 :goto_d

    .line 8481
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_90
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_134

    move v1, v2

    nop

    .line 8482
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_134
    if-eq v1, v2, :cond_135

    .line 8483
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8484
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8485
    goto/16 :goto_d

    .line 8486
    :cond_135
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8489
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8490
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8491
    .local v3, "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8492
    goto/16 :goto_d

    .line 8465
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_91
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_136

    move v1, v2

    nop

    .line 8466
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_136
    if-eq v1, v2, :cond_137

    .line 8467
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8468
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8469
    goto/16 :goto_d

    .line 8470
    :cond_137
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8473
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8474
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8475
    .restart local v3    # "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8476
    goto/16 :goto_d

    .line 8450
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_92
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_138

    move v1, v2

    nop

    .line 8451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_138
    if-eq v1, v2, :cond_139

    .line 8452
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8454
    goto/16 :goto_d

    .line 8455
    :cond_139
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8459
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->forceReleaseCall(II)V

    .line 8460
    goto/16 :goto_d

    .line 8434
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_93
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13a

    move v1, v2

    nop

    .line 8435
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13a
    if-eq v1, v2, :cond_13b

    .line 8436
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8438
    goto/16 :goto_d

    .line 8439
    :cond_13b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8442
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8443
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8444
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8445
    goto/16 :goto_d

    .line 8419
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_94
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13c

    move v1, v2

    nop

    .line 8420
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13c
    if-eq v1, v2, :cond_13d

    .line 8421
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8423
    goto/16 :goto_d

    .line 8424
    :cond_13d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8427
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8428
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8429
    goto/16 :goto_d

    .line 8404
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_95
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13e

    move v1, v2

    nop

    .line 8405
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13e
    if-eq v1, v2, :cond_13f

    .line 8406
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8407
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8408
    goto/16 :goto_d

    .line 8409
    :cond_13f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8412
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8413
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8414
    goto/16 :goto_d

    .line 8387
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_96
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_140

    move v1, v2

    nop

    .line 8388
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_140
    if-eq v1, v2, :cond_141

    .line 8389
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8391
    goto/16 :goto_d

    .line 8392
    :cond_141
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8395
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8396
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8397
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8398
    .local v4, "type":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8399
    goto/16 :goto_d

    .line 8371
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_97
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    move v1, v2

    nop

    .line 8372
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_142
    if-eq v1, v2, :cond_143

    .line 8373
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8375
    goto/16 :goto_d

    .line 8376
    :cond_143
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8379
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8380
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8381
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8382
    goto/16 :goto_d

    .line 8356
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_98
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_144

    move v1, v2

    nop

    .line 8357
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_144
    if-eq v1, v2, :cond_145

    .line 8358
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8360
    goto/16 :goto_d

    .line 8361
    :cond_145
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8364
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8365
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWfcProfile(II)V

    .line 8366
    goto/16 :goto_d

    .line 8339
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "wfcPreference":I
    :pswitch_99
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_146

    move v1, v2

    nop

    .line 8340
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_146
    if-eq v1, v2, :cond_147

    .line 8341
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8343
    goto/16 :goto_d

    .line 8344
    :cond_147
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8347
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8348
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8349
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8350
    .local v4, "callToRemove":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8351
    goto/16 :goto_d

    .line 8322
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_9a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_148

    move v1, v2

    nop

    .line 8323
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_148
    if-eq v1, v2, :cond_149

    .line 8324
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8325
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8326
    goto/16 :goto_d

    .line 8327
    :cond_149
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8330
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8331
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8332
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8333
    .local v4, "callToAdd":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8334
    goto/16 :goto_d

    .line 8306
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14a

    move v1, v2

    nop

    .line 8307
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14a
    if-eq v1, v2, :cond_14b

    .line 8308
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8310
    goto/16 :goto_d

    .line 8311
    :cond_14b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8314
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8315
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8316
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8317
    goto/16 :goto_d

    .line 8291
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14c

    move v1, v2

    nop

    .line 8292
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14c
    if-eq v1, v2, :cond_14d

    .line 8293
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8295
    goto/16 :goto_d

    .line 8296
    :cond_14d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8299
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8300
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8301
    goto/16 :goto_d

    .line 8271
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_9d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14e

    move v1, v2

    nop

    :cond_14e
    move v8, v1

    .line 8272
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_14f

    .line 8273
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8275
    goto/16 :goto_d

    .line 8276
    :cond_14f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8279
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8280
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8281
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8282
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8283
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8284
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8285
    .local v18, "eimsEnable":Z
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8286
    goto/16 :goto_d

    .line 8256
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_9e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_150

    move v1, v2

    nop

    .line 8257
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_150
    if-eq v1, v2, :cond_151

    .line 8258
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8260
    goto/16 :goto_d

    .line 8261
    :cond_151
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8264
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8265
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8266
    goto/16 :goto_d

    .line 8241
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_9f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_152

    move v1, v2

    nop

    .line 8242
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_152
    if-eq v1, v2, :cond_153

    .line 8243
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8245
    goto/16 :goto_d

    .line 8246
    :cond_153
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8248
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8249
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8250
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8251
    goto/16 :goto_d

    .line 8226
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_154

    move v1, v2

    nop

    .line 8227
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_154
    if-eq v1, v2, :cond_155

    .line 8228
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8229
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8230
    goto/16 :goto_d

    .line 8231
    :cond_155
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8234
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8235
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8236
    goto/16 :goto_d

    .line 8211
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_156

    move v1, v2

    nop

    .line 8212
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_156
    if-eq v1, v2, :cond_157

    .line 8213
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8215
    goto/16 :goto_d

    .line 8216
    :cond_157
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8219
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8220
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8221
    goto/16 :goto_d

    .line 8196
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_158

    move v1, v2

    nop

    .line 8197
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_158
    if-eq v1, v2, :cond_159

    .line 8198
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8200
    goto/16 :goto_d

    .line 8201
    :cond_159
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8204
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8205
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8206
    goto/16 :goto_d

    .line 8181
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15a

    move v1, v2

    nop

    .line 8182
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15a
    if-eq v1, v2, :cond_15b

    .line 8183
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8185
    goto/16 :goto_d

    .line 8186
    :cond_15b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8189
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8190
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8191
    goto/16 :goto_d

    .line 8166
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15c

    move v1, v2

    nop

    .line 8167
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15c
    if-eq v1, v2, :cond_15d

    .line 8168
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8170
    goto/16 :goto_d

    .line 8171
    :cond_15d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8174
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8175
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8176
    goto/16 :goto_d

    .line 8151
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15e

    move v1, v2

    nop

    .line 8152
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15e
    if-eq v1, v2, :cond_15f

    .line 8153
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8155
    goto/16 :goto_d

    .line 8156
    :cond_15f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8159
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8160
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setImsEnable(IZ)V

    .line 8161
    goto/16 :goto_d

    .line 8136
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_160

    move v1, v2

    nop

    .line 8137
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_160
    if-eq v1, v2, :cond_161

    .line 8138
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8140
    goto/16 :goto_d

    .line 8141
    :cond_161
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8144
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8145
    .local v2, "cause":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsDeregNotification(II)V

    .line 8146
    goto/16 :goto_d

    .line 8121
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cause":I
    :pswitch_a7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_162

    move v1, v2

    nop

    .line 8122
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_162
    if-eq v1, v2, :cond_163

    .line 8123
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8125
    goto/16 :goto_d

    .line 8126
    :cond_163
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8129
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8130
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->resumeCall(II)V

    .line 8131
    goto/16 :goto_d

    .line 8106
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_a8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_164

    move v1, v2

    nop

    .line 8107
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_164
    if-eq v1, v2, :cond_165

    .line 8108
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8110
    goto/16 :goto_d

    .line 8111
    :cond_165
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8114
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8115
    .restart local v2    # "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->holdCall(II)V

    .line 8116
    goto/16 :goto_d

    .line 8090
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_a9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    move v1, v2

    nop

    .line 8091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_166
    if-eq v1, v2, :cond_167

    .line 8092
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8094
    goto/16 :goto_d

    .line 8095
    :cond_167
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8098
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8099
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8100
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8101
    goto/16 :goto_d

    .line 8074
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_aa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_168

    move v1, v2

    nop

    .line 8075
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_168
    if-eq v1, v2, :cond_169

    .line 8076
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8078
    goto/16 :goto_d

    .line 8079
    :cond_169
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8081
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8082
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8083
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8084
    .local v3, "callId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->videoCallAccept(III)V

    .line 8085
    goto/16 :goto_d

    .line 8057
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_ab
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16a

    goto :goto_8

    :cond_16a
    move v2, v1

    .line 8058
    .local v2, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16b

    .line 8059
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8061
    goto/16 :goto_d

    .line 8062
    :cond_16b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v0

    .line 8065
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v3

    .line 8066
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8067
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8069
    goto/16 :goto_d

    .line 8040
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_ac
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16c

    goto :goto_9

    :cond_16c
    move v2, v1

    .line 8041
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_16d

    .line 8042
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8044
    goto/16 :goto_d

    .line 8045
    :cond_16d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v0

    .line 8048
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v3

    .line 8049
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8050
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8052
    goto/16 :goto_d

    .line 8023
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_ad
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16e

    goto :goto_a

    :cond_16e
    move v2, v1

    .line 8024
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_16f

    .line 8025
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8027
    goto/16 :goto_d

    .line 8028
    :cond_16f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v0

    .line 8031
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v3

    .line 8032
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8033
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8035
    goto/16 :goto_d

    .line 8006
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_ae
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_170

    goto :goto_b

    :cond_170
    move v2, v1

    .line 8007
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_171

    .line 8008
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8010
    goto/16 :goto_d

    .line 8011
    :cond_171
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v0

    .line 8014
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v3

    .line 8015
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8016
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8018
    goto/16 :goto_d

    .line 7990
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_af
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_172

    move v1, v2

    nop

    .line 7991
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_172
    if-eq v1, v2, :cond_173

    .line 7992
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7994
    goto/16 :goto_d

    .line 7995
    :cond_173
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7998
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7999
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8000
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8001
    goto/16 :goto_d

    .line 7967
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_b0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_174

    move v1, v2

    nop

    :cond_174
    move v10, v1

    .line 7968
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_175

    .line 7969
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7971
    goto/16 :goto_d

    .line 7972
    :cond_175
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7975
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7976
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 7977
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 7979
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 7980
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 7981
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 7982
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 7983
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 7984
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v13

    move v1, v11

    move v2, v12

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    .end local v9    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .local v22, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7985
    goto/16 :goto_d

    .line 7947
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "serial":I
    .end local v12    # "accessNetwork":I
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    :pswitch_b1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_176

    move v1, v2

    nop

    :cond_176
    move v8, v1

    .line 7948
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_177

    .line 7949
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7951
    goto/16 :goto_d

    .line 7952
    :cond_177
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7955
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7956
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7957
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7958
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 7959
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 7960
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7961
    .local v18, "accessNetwork":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 7962
    goto/16 :goto_d

    .line 7929
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_178

    move v1, v2

    nop

    :cond_178
    move v6, v1

    .line 7930
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_179

    .line 7931
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7933
    goto/16 :goto_d

    .line 7934
    :cond_179
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7937
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7938
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7939
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 7940
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7941
    .local v11, "accessNetwork":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 7942
    goto/16 :goto_d

    .line 7914
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17a

    move v1, v2

    nop

    .line 7915
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17a
    if-eq v1, v2, :cond_17b

    .line 7916
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7918
    goto/16 :goto_d

    .line 7919
    :cond_17b
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7922
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7923
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 7924
    goto/16 :goto_d

    .line 7898
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17c

    move v1, v2

    nop

    .line 7899
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17c
    if-eq v1, v2, :cond_17d

    .line 7900
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7902
    goto/16 :goto_d

    .line 7903
    :cond_17d
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7905
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7906
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 7907
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7908
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 7909
    goto/16 :goto_d

    .line 7883
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17e

    move v1, v2

    nop

    .line 7884
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v1, v2, :cond_17f

    .line 7885
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7887
    goto/16 :goto_d

    .line 7888
    :cond_17f
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7891
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7892
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopKeepalive(II)V

    .line 7893
    goto/16 :goto_d

    .line 7867
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionHandle":I
    :pswitch_b6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_180

    move v1, v2

    nop

    .line 7868
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_180
    if-eq v1, v2, :cond_181

    .line 7869
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7870
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7871
    goto/16 :goto_d

    .line 7872
    :cond_181
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7874
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7875
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7876
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7877
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7878
    goto/16 :goto_d

    .line 7853
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_b7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_182

    move v1, v2

    nop

    .line 7854
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_182
    if-eq v1, v2, :cond_183

    .line 7855
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7857
    goto/16 :goto_d

    .line 7858
    :cond_183
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7861
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopNetworkScan(I)V

    .line 7862
    goto/16 :goto_d

    .line 7837
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_184

    move v1, v2

    nop

    .line 7838
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_184
    if-eq v1, v2, :cond_185

    .line 7839
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7841
    goto/16 :goto_d

    .line 7842
    :cond_185
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7845
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7846
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7847
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7848
    goto/16 :goto_d

    .line 7822
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_b9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_186

    move v1, v2

    nop

    .line 7823
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_186
    if-eq v1, v2, :cond_187

    .line 7824
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7826
    goto/16 :goto_d

    .line 7827
    :cond_187
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7830
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7831
    .local v2, "powerUp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7832
    goto/16 :goto_d

    .line 7806
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":I
    :pswitch_ba
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_188

    move v1, v2

    nop

    .line 7807
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_188
    if-eq v1, v2, :cond_189

    .line 7808
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7810
    goto/16 :goto_d

    .line 7811
    :cond_189
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7814
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7815
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7816
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7817
    goto/16 :goto_d

    .line 7793
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_bb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    move v1, v2

    nop

    .line 7794
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18a
    if-eq v1, v2, :cond_18b

    .line 7795
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7797
    goto/16 :goto_d

    .line 7798
    :cond_18b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7800
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->responseAcknowledgement()V

    .line 7801
    goto/16 :goto_d

    .line 7778
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18c

    move v1, v2

    nop

    .line 7779
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18c
    if-eq v1, v2, :cond_18d

    .line 7780
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7781
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7782
    goto/16 :goto_d

    .line 7783
    :cond_18d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7786
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7787
    .local v2, "powerUp":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7788
    goto/16 :goto_d

    .line 7763
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":Z
    :pswitch_bd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18e

    move v1, v2

    nop

    .line 7764
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18e
    if-eq v1, v2, :cond_18f

    .line 7765
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7767
    goto/16 :goto_d

    .line 7768
    :cond_18f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7770
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7771
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7772
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setIndicationFilter(II)V

    .line 7773
    goto/16 :goto_d

    .line 7747
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_be
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_190

    move v1, v2

    nop

    .line 7748
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_190
    if-eq v1, v2, :cond_191

    .line 7749
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7751
    goto/16 :goto_d

    .line 7752
    :cond_191
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7755
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7756
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7757
    .local v3, "state":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7758
    goto/16 :goto_d

    .line 7733
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_bf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_192

    move v1, v2

    nop

    .line 7734
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_192
    if-eq v1, v2, :cond_193

    .line 7735
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7737
    goto/16 :goto_d

    .line 7738
    :cond_193
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7741
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7742
    goto/16 :goto_d

    .line 7716
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_194

    move v1, v2

    nop

    .line 7717
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_194
    if-eq v1, v2, :cond_195

    .line 7718
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7720
    goto/16 :goto_d

    .line 7721
    :cond_195
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7724
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7725
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7726
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v15}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7727
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7728
    goto/16 :goto_d

    .line 7702
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_196

    move v1, v2

    nop

    .line 7703
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_196
    if-eq v1, v2, :cond_197

    .line 7704
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7706
    goto/16 :goto_d

    .line 7707
    :cond_197
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7710
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7711
    goto/16 :goto_d

    .line 7688
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_198

    move v1, v2

    nop

    .line 7689
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_198
    if-eq v1, v2, :cond_199

    .line 7690
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7692
    goto/16 :goto_d

    .line 7693
    :cond_199
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7696
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->pullLceData(I)V

    .line 7697
    goto/16 :goto_d

    .line 7674
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19a

    move v1, v2

    nop

    .line 7675
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19a
    if-eq v1, v2, :cond_19b

    .line 7676
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7678
    goto/16 :goto_d

    .line 7679
    :cond_19b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7682
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopLceService(I)V

    .line 7683
    goto/16 :goto_d

    .line 7658
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19c

    move v1, v2

    nop

    .line 7659
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19c
    if-eq v1, v2, :cond_19d

    .line 7660
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7662
    goto/16 :goto_d

    .line 7663
    :cond_19d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7666
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7667
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7668
    .local v3, "pullMode":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startLceService(IIZ)V

    .line 7669
    goto/16 :goto_d

    .line 7642
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19e

    move v1, v2

    nop

    .line 7643
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19e
    if-eq v1, v2, :cond_19f

    .line 7644
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7645
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7646
    goto/16 :goto_d

    .line 7647
    :cond_19f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7649
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7650
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7651
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7652
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7653
    goto/16 :goto_d

    .line 7628
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a0

    move v1, v2

    nop

    .line 7629
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a0
    if-eq v1, v2, :cond_1a1

    .line 7630
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7632
    goto/16 :goto_d

    .line 7633
    :cond_1a1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7636
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getRadioCapability(I)V

    .line 7637
    goto/16 :goto_d

    .line 7614
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a2

    move v1, v2

    nop

    .line 7615
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a2
    if-eq v1, v2, :cond_1a3

    .line 7616
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7618
    goto/16 :goto_d

    .line 7619
    :cond_1a3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7622
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->requestShutdown(I)V

    .line 7623
    goto/16 :goto_d

    .line 7598
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a4

    move v1, v2

    nop

    .line 7599
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a4
    if-eq v1, v2, :cond_1a5

    .line 7600
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7602
    goto/16 :goto_d

    .line 7603
    :cond_1a5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7606
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7607
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7608
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7609
    goto/16 :goto_d

    .line 7581
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_c9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a6

    move v1, v2

    nop

    .line 7582
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a6
    if-eq v1, v2, :cond_1a7

    .line 7583
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7585
    goto/16 :goto_d

    .line 7586
    :cond_1a7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7589
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7590
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7591
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7592
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7593
    goto/16 :goto_d

    .line 7567
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_ca
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a8

    move v1, v2

    nop

    .line 7568
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a8
    if-eq v1, v2, :cond_1a9

    .line 7569
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7571
    goto/16 :goto_d

    .line 7572
    :cond_1a9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7575
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getHardwareConfig(I)V

    .line 7576
    goto/16 :goto_d

    .line 7552
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_cb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1aa

    move v1, v2

    nop

    .line 7553
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1aa
    if-eq v1, v2, :cond_1ab

    .line 7554
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7556
    goto/16 :goto_d

    .line 7557
    :cond_1ab
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7560
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7561
    .local v2, "allow":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7562
    goto/16 :goto_d

    .line 7536
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allow":Z
    :pswitch_cc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ac

    move v1, v2

    nop

    .line 7537
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ac
    if-eq v1, v2, :cond_1ad

    .line 7538
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7540
    goto/16 :goto_d

    .line 7541
    :cond_1ad
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7544
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7545
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7546
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7547
    goto/16 :goto_d

    .line 7521
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_cd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ae

    move v1, v2

    nop

    .line 7522
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ae
    if-eq v1, v2, :cond_1af

    .line 7523
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7525
    goto/16 :goto_d

    .line 7526
    :cond_1af
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7529
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7530
    .local v2, "resetType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvResetConfig(II)V

    .line 7531
    goto/16 :goto_d

    .line 7506
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resetType":I
    :pswitch_ce
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b0

    move v1, v2

    nop

    .line 7507
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b0
    if-eq v1, v2, :cond_1b1

    .line 7508
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7509
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7510
    goto/16 :goto_d

    .line 7511
    :cond_1b1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7513
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7514
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7515
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7516
    goto/16 :goto_d

    .line 7490
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_cf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b2

    move v1, v2

    nop

    .line 7491
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b2
    if-eq v1, v2, :cond_1b3

    .line 7492
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7494
    goto/16 :goto_d

    .line 7495
    :cond_1b3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7498
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7499
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7500
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7501
    goto/16 :goto_d

    .line 7475
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b4

    move v1, v2

    nop

    .line 7476
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b4
    if-eq v1, v2, :cond_1b5

    .line 7477
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7479
    goto/16 :goto_d

    .line 7480
    :cond_1b5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7482
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7483
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7484
    .local v2, "itemId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->nvReadItem(II)V

    .line 7485
    goto/16 :goto_d

    .line 7459
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "itemId":I
    :pswitch_d1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b6

    move v1, v2

    nop

    .line 7460
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b6
    if-eq v1, v2, :cond_1b7

    .line 7461
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7463
    goto/16 :goto_d

    .line 7464
    :cond_1b7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7467
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7468
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7469
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7470
    goto/16 :goto_d

    .line 7444
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b8

    move v1, v2

    nop

    .line 7445
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b8
    if-eq v1, v2, :cond_1b9

    .line 7446
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7448
    goto/16 :goto_d

    .line 7449
    :cond_1b9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7452
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7453
    .local v2, "channelId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7454
    goto/16 :goto_d

    .line 7428
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    :pswitch_d3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ba

    move v1, v2

    nop

    .line 7429
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ba
    if-eq v1, v2, :cond_1bb

    .line 7430
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7432
    goto/16 :goto_d

    .line 7433
    :cond_1bb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7436
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7437
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7438
    .local v3, "p2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7439
    goto/16 :goto_d

    .line 7412
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bc

    move v1, v2

    nop

    .line 7413
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bc
    if-eq v1, v2, :cond_1bd

    .line 7414
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7416
    goto/16 :goto_d

    .line 7417
    :cond_1bd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7420
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7421
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7422
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7423
    goto/16 :goto_d

    .line 7396
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1be

    move v1, v2

    nop

    .line 7397
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1be
    if-eq v1, v2, :cond_1bf

    .line 7398
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7400
    goto/16 :goto_d

    .line 7401
    :cond_1bf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7404
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7405
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7406
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7407
    goto/16 :goto_d

    .line 7382
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c0

    move v1, v2

    nop

    .line 7383
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c0
    if-eq v1, v2, :cond_1c1

    .line 7384
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7386
    goto/16 :goto_d

    .line 7387
    :cond_1c1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7390
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7391
    goto/16 :goto_d

    .line 7364
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c2

    move v1, v2

    nop

    .line 7365
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c2
    if-eq v1, v2, :cond_1c3

    .line 7366
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7367
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7368
    goto/16 :goto_d

    .line 7369
    :cond_1c3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7372
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7373
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7375
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7376
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7377
    goto/16 :goto_d

    .line 7349
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_d8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c4

    move v1, v2

    nop

    .line 7350
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c4
    if-eq v1, v2, :cond_1c5

    .line 7351
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7352
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7353
    goto/16 :goto_d

    .line 7354
    :cond_1c5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7356
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7357
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7358
    .local v2, "rate":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7359
    goto/16 :goto_d

    .line 7335
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rate":I
    :pswitch_d9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c6

    move v1, v2

    nop

    .line 7336
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c6
    if-eq v1, v2, :cond_1c7

    .line 7337
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7339
    goto/16 :goto_d

    .line 7340
    :cond_1c7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7342
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7343
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCellInfoList(I)V

    .line 7344
    goto/16 :goto_d

    .line 7321
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_da
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c8

    move v1, v2

    nop

    .line 7322
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c8
    if-eq v1, v2, :cond_1c9

    .line 7323
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7324
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7325
    goto/16 :goto_d

    .line 7326
    :cond_1c9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7329
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7330
    goto/16 :goto_d

    .line 7306
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_db
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ca

    move v1, v2

    nop

    .line 7307
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ca
    if-eq v1, v2, :cond_1cb

    .line 7308
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7310
    goto/16 :goto_d

    .line 7311
    :cond_1cb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7314
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7315
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7316
    goto/16 :goto_d

    .line 7290
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_dc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cc

    move v1, v2

    nop

    .line 7291
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cc
    if-eq v1, v2, :cond_1cd

    .line 7292
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7294
    goto/16 :goto_d

    .line 7295
    :cond_1cd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7298
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7299
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7300
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7301
    goto/16 :goto_d

    .line 7275
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_dd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ce

    move v1, v2

    nop

    .line 7276
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ce
    if-eq v1, v2, :cond_1cf

    .line 7277
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7279
    goto/16 :goto_d

    .line 7280
    :cond_1cf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7283
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7284
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7285
    goto/16 :goto_d

    .line 7261
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_de
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d0

    move v1, v2

    nop

    .line 7262
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d0
    if-eq v1, v2, :cond_1d1

    .line 7263
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7264
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7265
    goto/16 :goto_d

    .line 7266
    :cond_1d1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7268
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7269
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7270
    goto/16 :goto_d

    .line 7247
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_df
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d2

    move v1, v2

    nop

    .line 7248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d2
    if-eq v1, v2, :cond_1d3

    .line 7249
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7251
    goto/16 :goto_d

    .line 7252
    :cond_1d3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7255
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7256
    goto/16 :goto_d

    .line 7232
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d4

    move v1, v2

    nop

    .line 7233
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d4
    if-eq v1, v2, :cond_1d5

    .line 7234
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7236
    goto/16 :goto_d

    .line 7237
    :cond_1d5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7240
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7241
    .local v2, "available":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7242
    goto/16 :goto_d

    .line 7217
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "available":Z
    :pswitch_e1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d6

    move v1, v2

    nop

    .line 7218
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d6
    if-eq v1, v2, :cond_1d7

    .line 7219
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7221
    goto/16 :goto_d

    .line 7222
    :cond_1d7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7225
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7226
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7227
    goto/16 :goto_d

    .line 7203
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d8

    move v1, v2

    nop

    .line 7204
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d8
    if-eq v1, v2, :cond_1d9

    .line 7205
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7207
    goto/16 :goto_d

    .line 7208
    :cond_1d9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7211
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSmscAddress(I)V

    .line 7212
    goto/16 :goto_d

    .line 7189
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1da

    move v1, v2

    nop

    .line 7190
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1da
    if-eq v1, v2, :cond_1db

    .line 7191
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7193
    goto/16 :goto_d

    .line 7194
    :cond_1db
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7197
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7198
    goto/16 :goto_d

    .line 7175
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1dc

    move v1, v2

    nop

    .line 7176
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1dc
    if-eq v1, v2, :cond_1dd

    .line 7177
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7179
    goto/16 :goto_d

    .line 7180
    :cond_1dd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7182
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7183
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7184
    goto/16 :goto_d

    .line 7160
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1de

    move v1, v2

    nop

    .line 7161
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1de
    if-eq v1, v2, :cond_1df

    .line 7162
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7164
    goto/16 :goto_d

    .line 7165
    :cond_1df
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7168
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7169
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7170
    goto/16 :goto_d

    .line 7144
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_e6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e0

    move v1, v2

    nop

    .line 7145
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e0
    if-eq v1, v2, :cond_1e1

    .line 7146
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7148
    goto/16 :goto_d

    .line 7149
    :cond_1e1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7152
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7153
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7154
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7155
    goto/16 :goto_d

    .line 7130
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_e7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e2

    move v1, v2

    nop

    .line 7131
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e2
    if-eq v1, v2, :cond_1e3

    .line 7132
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7134
    goto/16 :goto_d

    .line 7135
    :cond_1e3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7138
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCDMASubscription(I)V

    .line 7139
    goto/16 :goto_d

    .line 7115
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e4

    move v1, v2

    nop

    .line 7116
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e4
    if-eq v1, v2, :cond_1e5

    .line 7117
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7119
    goto/16 :goto_d

    .line 7120
    :cond_1e5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7123
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7124
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7125
    goto/16 :goto_d

    .line 7100
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_e9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e6

    move v1, v2

    nop

    .line 7101
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e6
    if-eq v1, v2, :cond_1e7

    .line 7102
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7104
    goto/16 :goto_d

    .line 7105
    :cond_1e7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7108
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7109
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7110
    goto/16 :goto_d

    .line 7086
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ea
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e8

    move v1, v2

    nop

    .line 7087
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e8
    if-eq v1, v2, :cond_1e9

    .line 7088
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7089
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7090
    goto/16 :goto_d

    .line 7091
    :cond_1e9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7093
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7094
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7095
    goto/16 :goto_d

    .line 7071
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_eb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ea

    move v1, v2

    nop

    .line 7072
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ea
    if-eq v1, v2, :cond_1eb

    .line 7073
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7074
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7075
    goto/16 :goto_d

    .line 7076
    :cond_1eb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7079
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7080
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7081
    goto/16 :goto_d

    .line 7056
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_ec
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ec

    move v1, v2

    nop

    .line 7057
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ec
    if-eq v1, v2, :cond_1ed

    .line 7058
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7059
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7060
    goto/16 :goto_d

    .line 7061
    :cond_1ed
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7063
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7064
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7065
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7066
    goto/16 :goto_d

    .line 7042
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ee

    move v1, v2

    nop

    .line 7043
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ee
    if-eq v1, v2, :cond_1ef

    .line 7044
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7046
    goto/16 :goto_d

    .line 7047
    :cond_1ef
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7050
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7051
    goto/16 :goto_d

    .line 7026
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ee
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f0

    move v1, v2

    nop

    .line 7027
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f0
    if-eq v1, v2, :cond_1f1

    .line 7028
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7029
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7030
    goto/16 :goto_d

    .line 7031
    :cond_1f1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7034
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7035
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7036
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7037
    goto/16 :goto_d

    .line 7010
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_ef
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f2

    move v1, v2

    nop

    .line 7011
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f2
    if-eq v1, v2, :cond_1f3

    .line 7012
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7014
    goto/16 :goto_d

    .line 7015
    :cond_1f3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7018
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7019
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7020
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7021
    goto/16 :goto_d

    .line 6993
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f4

    move v1, v2

    nop

    .line 6994
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f4
    if-eq v1, v2, :cond_1f5

    .line 6995
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6997
    goto/16 :goto_d

    .line 6998
    :cond_1f5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7001
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7002
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7003
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7004
    .local v4, "off":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7005
    goto/16 :goto_d

    .line 6978
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f6

    move v1, v2

    nop

    .line 6979
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f6
    if-eq v1, v2, :cond_1f7

    .line 6980
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6981
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6982
    goto/16 :goto_d

    .line 6983
    :cond_1f7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6986
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6987
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 6988
    goto/16 :goto_d

    .line 6964
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f8

    move v1, v2

    nop

    .line 6965
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f8
    if-eq v1, v2, :cond_1f9

    .line 6966
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6968
    goto/16 :goto_d

    .line 6969
    :cond_1f9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6972
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 6973
    goto/16 :goto_d

    .line 6949
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fa

    move v1, v2

    nop

    .line 6950
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fa
    if-eq v1, v2, :cond_1fb

    .line 6951
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6953
    goto/16 :goto_d

    .line 6954
    :cond_1fb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6957
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6958
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 6959
    goto/16 :goto_d

    .line 6935
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_f4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fc

    move v1, v2

    nop

    .line 6936
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fc
    if-eq v1, v2, :cond_1fd

    .line 6937
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6939
    goto/16 :goto_d

    .line 6940
    :cond_1fd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6943
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getTTYMode(I)V

    .line 6944
    goto/16 :goto_d

    .line 6920
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fe

    move v1, v2

    nop

    .line 6921
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fe
    if-eq v1, v2, :cond_1ff

    .line 6922
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6924
    goto/16 :goto_d

    .line 6925
    :cond_1ff
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6927
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6928
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6929
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setTTYMode(II)V

    .line 6930
    goto/16 :goto_d

    .line 6906
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_f6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_200

    move v1, v2

    nop

    .line 6907
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_200
    if-eq v1, v2, :cond_201

    .line 6908
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6910
    goto/16 :goto_d

    .line 6911
    :cond_201
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6914
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 6915
    goto/16 :goto_d

    .line 6891
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_202

    move v1, v2

    nop

    .line 6892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_202
    if-eq v1, v2, :cond_203

    .line 6893
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6895
    goto/16 :goto_d

    .line 6896
    :cond_203
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6899
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6900
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 6901
    goto/16 :goto_d

    .line 6876
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_f8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_204

    move v1, v2

    nop

    .line 6877
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_204
    if-eq v1, v2, :cond_205

    .line 6878
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6880
    goto/16 :goto_d

    .line 6881
    :cond_205
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6883
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6884
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6885
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6886
    goto/16 :goto_d

    .line 6861
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSub":I
    :pswitch_f9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_206

    move v1, v2

    nop

    .line 6862
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_206
    if-eq v1, v2, :cond_207

    .line 6863
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6864
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6865
    goto/16 :goto_d

    .line 6866
    :cond_207
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6869
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6870
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6871
    goto/16 :goto_d

    .line 6847
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_fa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_208

    move v1, v2

    nop

    .line 6848
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_208
    if-eq v1, v2, :cond_209

    .line 6849
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6851
    goto/16 :goto_d

    .line 6852
    :cond_209
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6855
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getNeighboringCids(I)V

    .line 6856
    goto/16 :goto_d

    .line 6833
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20a

    move v1, v2

    nop

    .line 6834
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20a
    if-eq v1, v2, :cond_20b

    .line 6835
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6837
    goto/16 :goto_d

    .line 6838
    :cond_20b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6841
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6842
    goto/16 :goto_d

    .line 6818
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20c

    move v1, v2

    nop

    .line 6819
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20c
    if-eq v1, v2, :cond_20d

    .line 6820
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6822
    goto/16 :goto_d

    .line 6823
    :cond_20d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6826
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6827
    .local v2, "nwType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6828
    goto/16 :goto_d

    .line 6804
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_fd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20e

    move v1, v2

    nop

    .line 6805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20e
    if-eq v1, v2, :cond_20f

    .line 6806
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6808
    goto/16 :goto_d

    .line 6809
    :cond_20f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6812
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6813
    goto/16 :goto_d

    .line 6789
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fe
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_210

    move v1, v2

    nop

    .line 6790
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_210
    if-eq v1, v2, :cond_211

    .line 6791
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6793
    goto/16 :goto_d

    .line 6794
    :cond_211
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6797
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6798
    .local v2, "accept":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6799
    goto/16 :goto_d

    .line 6774
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accept":Z
    :pswitch_ff
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_212

    move v1, v2

    nop

    .line 6775
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_212
    if-eq v1, v2, :cond_213

    .line 6776
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6778
    goto/16 :goto_d

    .line 6779
    :cond_213
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6782
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6783
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6784
    goto/16 :goto_d

    .line 6759
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_100
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_214

    move v1, v2

    nop

    .line 6760
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_214
    if-eq v1, v2, :cond_215

    .line 6761
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6763
    goto/16 :goto_d

    .line 6764
    :cond_215
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6767
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6768
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6769
    goto/16 :goto_d

    .line 6745
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_101
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_216

    move v1, v2

    nop

    .line 6746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_216
    if-eq v1, v2, :cond_217

    .line 6747
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6749
    goto/16 :goto_d

    .line 6750
    :cond_217
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6753
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6754
    goto/16 :goto_d

    .line 6730
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_102
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_218

    move v1, v2

    nop

    .line 6731
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_218
    if-eq v1, v2, :cond_219

    .line 6732
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6734
    goto/16 :goto_d

    .line 6735
    :cond_219
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6738
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6739
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setBandMode(II)V

    .line 6740
    goto/16 :goto_d

    .line 6715
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_103
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21a

    move v1, v2

    nop

    .line 6716
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21a
    if-eq v1, v2, :cond_21b

    .line 6717
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6719
    goto/16 :goto_d

    .line 6720
    :cond_21b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6723
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6724
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6725
    goto/16 :goto_d

    .line 6699
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_104
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21c

    move v1, v2

    nop

    .line 6700
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21c
    if-eq v1, v2, :cond_21d

    .line 6701
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6703
    goto/16 :goto_d

    .line 6704
    :cond_21d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6707
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6708
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6709
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6710
    goto/16 :goto_d

    .line 6684
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_105
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21e

    move v1, v2

    nop

    .line 6685
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21e
    if-eq v1, v2, :cond_21f

    .line 6686
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6688
    goto/16 :goto_d

    .line 6689
    :cond_21f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6692
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6693
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6694
    goto/16 :goto_d

    .line 6670
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_106
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_220

    move v1, v2

    nop

    .line 6671
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_220
    if-eq v1, v2, :cond_221

    .line 6672
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6674
    goto/16 :goto_d

    .line 6675
    :cond_221
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6678
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDataCallList(I)V

    .line 6679
    goto/16 :goto_d

    .line 6656
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_107
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_222

    move v1, v2

    nop

    .line 6657
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_222
    if-eq v1, v2, :cond_223

    .line 6658
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6659
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6660
    goto/16 :goto_d

    .line 6661
    :cond_223
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6663
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6664
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getClip(I)V

    .line 6665
    goto/16 :goto_d

    .line 6642
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_108
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_224

    move v1, v2

    nop

    .line 6643
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_224
    if-eq v1, v2, :cond_225

    .line 6644
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6645
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6646
    goto/16 :goto_d

    .line 6647
    :cond_225
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6649
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6650
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getMute(I)V

    .line 6651
    goto/16 :goto_d

    .line 6627
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_109
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_226

    move v1, v2

    nop

    .line 6628
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_226
    if-eq v1, v2, :cond_227

    .line 6629
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6631
    goto/16 :goto_d

    .line 6632
    :cond_227
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6635
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6636
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setMute(IZ)V

    .line 6637
    goto/16 :goto_d

    .line 6612
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_10a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_228

    move v1, v2

    nop

    .line 6613
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_228
    if-eq v1, v2, :cond_229

    .line 6614
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6615
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6616
    goto/16 :goto_d

    .line 6617
    :cond_229
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6620
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6621
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->separateConnection(II)V

    .line 6622
    goto/16 :goto_d

    .line 6598
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_10b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22a

    move v1, v2

    nop

    .line 6599
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22a
    if-eq v1, v2, :cond_22b

    .line 6600
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6602
    goto/16 :goto_d

    .line 6603
    :cond_22b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6606
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getBasebandVersion(I)V

    .line 6607
    goto/16 :goto_d

    .line 6584
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22c

    move v1, v2

    nop

    .line 6585
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22c
    if-eq v1, v2, :cond_22d

    .line 6586
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6588
    goto/16 :goto_d

    .line 6589
    :cond_22d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6592
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->stopDtmf(I)V

    .line 6593
    goto/16 :goto_d

    .line 6569
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22e

    move v1, v2

    nop

    .line 6570
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22e
    if-eq v1, v2, :cond_22f

    .line 6571
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6573
    goto/16 :goto_d

    .line 6574
    :cond_22f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6577
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6578
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6579
    goto/16 :goto_d

    .line 6555
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_10e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_230

    move v1, v2

    nop

    .line 6556
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_230
    if-eq v1, v2, :cond_231

    .line 6557
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6559
    goto/16 :goto_d

    .line 6560
    :cond_231
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6563
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6564
    goto/16 :goto_d

    .line 6540
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_232

    move v1, v2

    nop

    .line 6541
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_232
    if-eq v1, v2, :cond_233

    .line 6542
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6544
    goto/16 :goto_d

    .line 6545
    :cond_233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6548
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6549
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6550
    goto/16 :goto_d

    .line 6526
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_110
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_234

    move v1, v2

    nop

    .line 6527
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_234
    if-eq v1, v2, :cond_235

    .line 6528
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6530
    goto/16 :goto_d

    .line 6531
    :cond_235
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6534
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6535
    goto/16 :goto_d

    .line 6512
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_111
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_236

    move v1, v2

    nop

    .line 6513
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_236
    if-eq v1, v2, :cond_237

    .line 6514
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6515
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6516
    goto/16 :goto_d

    .line 6517
    :cond_237
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6520
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6521
    goto/16 :goto_d

    .line 6495
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_112
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_238

    move v1, v2

    nop

    .line 6496
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_238
    if-eq v1, v2, :cond_239

    .line 6497
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6499
    goto/16 :goto_d

    .line 6500
    :cond_239
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6503
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6504
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6505
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6506
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6507
    goto/16 :goto_d

    .line 6476
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_113
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23a

    move v1, v2

    nop

    :cond_23a
    move v7, v1

    .line 6477
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_23b

    .line 6478
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6480
    goto/16 :goto_d

    .line 6481
    :cond_23b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6484
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6485
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6486
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6487
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6488
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6489
    .local v16, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6490
    goto/16 :goto_d

    .line 6458
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_114
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23c

    move v1, v2

    nop

    :cond_23c
    move v6, v1

    .line 6459
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_23d

    .line 6460
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6462
    goto/16 :goto_d

    .line 6463
    :cond_23d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6466
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6467
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6468
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6469
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6470
    .local v11, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6471
    goto/16 :goto_d

    .line 6442
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_115
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23e

    move v1, v2

    nop

    .line 6443
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23e
    if-eq v1, v2, :cond_23f

    .line 6444
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6446
    goto/16 :goto_d

    .line 6447
    :cond_23f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6450
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6451
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6452
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6453
    goto/16 :goto_d

    .line 6428
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_116
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_240

    move v1, v2

    nop

    .line 6429
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_240
    if-eq v1, v2, :cond_241

    .line 6430
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6432
    goto/16 :goto_d

    .line 6433
    :cond_241
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6436
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acceptCall(I)V

    .line 6437
    goto/16 :goto_d

    .line 6412
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_117
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_242

    move v1, v2

    nop

    .line 6413
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_242
    if-eq v1, v2, :cond_243

    .line 6414
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6416
    goto/16 :goto_d

    .line 6417
    :cond_243
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6420
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6421
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6422
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6423
    goto/16 :goto_d

    .line 6396
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_118
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_244

    move v1, v2

    nop

    .line 6397
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v1, v2, :cond_245

    .line 6398
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6400
    goto/16 :goto_d

    .line 6401
    :cond_245
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6404
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6405
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6406
    .local v3, "serviceClass":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6407
    goto/16 :goto_d

    .line 6381
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_119
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_246

    move v1, v2

    nop

    .line 6382
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_246
    if-eq v1, v2, :cond_247

    .line 6383
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6385
    goto/16 :goto_d

    .line 6386
    :cond_247
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6389
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6390
    .local v2, "serviceClass":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCallWaiting(II)V

    .line 6391
    goto/16 :goto_d

    .line 6365
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_11a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_248

    move v1, v2

    nop

    .line 6366
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_248
    if-eq v1, v2, :cond_249

    .line 6367
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6369
    goto/16 :goto_d

    .line 6370
    :cond_249
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6373
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6374
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6375
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6376
    goto/16 :goto_d

    .line 6349
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24a

    move v1, v2

    nop

    .line 6350
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24a
    if-eq v1, v2, :cond_24b

    .line 6351
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6352
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6353
    goto/16 :goto_d

    .line 6354
    :cond_24b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6356
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6357
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6358
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6359
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6360
    goto/16 :goto_d

    .line 6334
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24c

    move v1, v2

    nop

    .line 6335
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24c
    if-eq v1, v2, :cond_24d

    .line 6336
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6338
    goto/16 :goto_d

    .line 6339
    :cond_24d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6342
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6343
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setClir(II)V

    .line 6344
    goto/16 :goto_d

    .line 6320
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_11d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24e

    move v1, v2

    nop

    .line 6321
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24e
    if-eq v1, v2, :cond_24f

    .line 6322
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6323
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6324
    goto/16 :goto_d

    .line 6325
    :cond_24f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6327
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6328
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getClir(I)V

    .line 6329
    goto/16 :goto_d

    .line 6306
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_250

    move v1, v2

    nop

    .line 6307
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_250
    if-eq v1, v2, :cond_251

    .line 6308
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6310
    goto/16 :goto_d

    .line 6311
    :cond_251
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6314
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6315
    goto/16 :goto_d

    .line 6291
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_252

    move v1, v2

    nop

    .line 6292
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_252
    if-eq v1, v2, :cond_253

    .line 6293
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6295
    goto/16 :goto_d

    .line 6296
    :cond_253
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6299
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6300
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6301
    goto/16 :goto_d

    .line 6275
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_120
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_254

    move v1, v2

    nop

    .line 6276
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_254
    if-eq v1, v2, :cond_255

    .line 6277
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6279
    goto/16 :goto_d

    .line 6280
    :cond_255
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6283
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6284
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6285
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6286
    goto/16 :goto_d

    .line 6255
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_121
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_256

    move v1, v2

    nop

    :cond_256
    move v7, v1

    .line 6256
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_257

    .line 6257
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6259
    goto/16 :goto_d

    .line 6260
    :cond_257
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6263
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6264
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6265
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6267
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6268
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6269
    .local v16, "isRoaming":Z
    move-object v0, v13

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6270
    goto/16 :goto_d

    .line 6239
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_122
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_258

    move v1, v2

    nop

    .line 6240
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_258
    if-eq v1, v2, :cond_259

    .line 6241
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6243
    goto/16 :goto_d

    .line 6244
    :cond_259
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6247
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6248
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6249
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6250
    goto/16 :goto_d

    .line 6223
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_123
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25a

    move v1, v2

    nop

    .line 6224
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25a
    if-eq v1, v2, :cond_25b

    .line 6225
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6226
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6227
    goto/16 :goto_d

    .line 6228
    :cond_25b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6231
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6232
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6233
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6234
    goto/16 :goto_d

    .line 6208
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_124
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25c

    move v1, v2

    nop

    .line 6209
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25c
    if-eq v1, v2, :cond_25d

    .line 6210
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6212
    goto/16 :goto_d

    .line 6213
    :cond_25d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6216
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6217
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6218
    goto/16 :goto_d

    .line 6193
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_125
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25e

    move v1, v2

    nop

    .line 6194
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25e
    if-eq v1, v2, :cond_25f

    .line 6195
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6196
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6197
    goto/16 :goto_d

    .line 6198
    :cond_25f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6201
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6202
    .local v2, "on":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setRadioPower(IZ)V

    .line 6203
    goto/16 :goto_d

    .line 6179
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_126
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_260

    move v1, v2

    nop

    .line 6180
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_260
    if-eq v1, v2, :cond_261

    .line 6181
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6183
    goto/16 :goto_d

    .line 6184
    :cond_261
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6187
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getOperator(I)V

    .line 6188
    goto/16 :goto_d

    .line 6165
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_127
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_262

    move v1, v2

    nop

    .line 6166
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_262
    if-eq v1, v2, :cond_263

    .line 6167
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6169
    goto/16 :goto_d

    .line 6170
    :cond_263
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6173
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6174
    goto/16 :goto_d

    .line 6151
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_128
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_264

    move v1, v2

    nop

    .line 6152
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_264
    if-eq v1, v2, :cond_265

    .line 6153
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6155
    goto/16 :goto_d

    .line 6156
    :cond_265
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6159
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6160
    goto/16 :goto_d

    .line 6137
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_129
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_266

    move v1, v2

    nop

    .line 6138
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_266
    if-eq v1, v2, :cond_267

    .line 6139
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6140
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6141
    goto/16 :goto_d

    .line 6142
    :cond_267
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6145
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getSignalStrength(I)V

    .line 6146
    goto/16 :goto_d

    .line 6123
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_268

    move v1, v2

    nop

    .line 6124
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_268
    if-eq v1, v2, :cond_269

    .line 6125
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6127
    goto/16 :goto_d

    .line 6128
    :cond_269
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6131
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6132
    goto/16 :goto_d

    .line 6109
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26a

    move v1, v2

    nop

    .line 6110
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26a
    if-eq v1, v2, :cond_26b

    .line 6111
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6112
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6113
    goto/16 :goto_d

    .line 6114
    :cond_26b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6117
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->rejectCall(I)V

    .line 6118
    goto/16 :goto_d

    .line 6095
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26c

    move v1, v2

    nop

    .line 6096
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26c
    if-eq v1, v2, :cond_26d

    .line 6097
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6099
    goto/16 :goto_d

    .line 6100
    :cond_26d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6103
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->conference(I)V

    .line 6104
    goto/16 :goto_d

    .line 6081
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26e

    move v1, v2

    nop

    .line 6082
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26e
    if-eq v1, v2, :cond_26f

    .line 6083
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6085
    goto/16 :goto_d

    .line 6086
    :cond_26f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6089
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6090
    goto/16 :goto_d

    .line 6067
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_270

    move v1, v2

    nop

    .line 6068
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_270
    if-eq v1, v2, :cond_271

    .line 6069
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6071
    goto/16 :goto_d

    .line 6072
    :cond_271
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6075
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6076
    goto/16 :goto_d

    .line 6053
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_272

    move v1, v2

    nop

    .line 6054
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_272
    if-eq v1, v2, :cond_273

    .line 6055
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6057
    goto/16 :goto_d

    .line 6058
    :cond_273
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6061
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6062
    goto/16 :goto_d

    .line 6038
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_130
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_274

    move v1, v2

    nop

    .line 6039
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_274
    if-eq v1, v2, :cond_275

    .line 6040
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6042
    goto/16 :goto_d

    .line 6043
    :cond_275
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6046
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6047
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->hangup(II)V

    .line 6048
    goto/16 :goto_d

    .line 6023
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_131
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_276

    move v1, v2

    nop

    .line 6024
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_276
    if-eq v1, v2, :cond_277

    .line 6025
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6027
    goto/16 :goto_d

    .line 6028
    :cond_277
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6031
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6032
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6033
    goto/16 :goto_d

    .line 6007
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_132
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_278

    move v1, v2

    nop

    .line 6008
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_278
    if-eq v1, v2, :cond_279

    .line 6009
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6011
    goto/16 :goto_d

    .line 6012
    :cond_279
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6015
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6016
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6017
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6018
    goto/16 :goto_d

    .line 5993
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_133
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27a

    move v1, v2

    nop

    .line 5994
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27a
    if-eq v1, v2, :cond_27b

    .line 5995
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5997
    goto/16 :goto_d

    .line 5998
    :cond_27b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6001
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getCurrentCalls(I)V

    .line 6002
    goto/16 :goto_d

    .line 5978
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_134
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27c

    move v1, v2

    nop

    .line 5979
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27c
    if-eq v1, v2, :cond_27d

    .line 5980
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5981
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5982
    goto/16 :goto_d

    .line 5983
    :cond_27d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5986
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5987
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 5988
    goto/16 :goto_d

    .line 5961
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_135
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27e

    move v1, v2

    nop

    .line 5962
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27e
    if-eq v1, v2, :cond_27f

    .line 5963
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5965
    goto/16 :goto_d

    .line 5966
    :cond_27f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5969
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5970
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5971
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5972
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5973
    goto/16 :goto_d

    .line 5944
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_136
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_280

    move v1, v2

    nop

    .line 5945
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_280
    if-eq v1, v2, :cond_281

    .line 5946
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5947
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5948
    goto/16 :goto_d

    .line 5949
    :cond_281
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5952
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5953
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5954
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5955
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5956
    goto/16 :goto_d

    .line 5927
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_137
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_282

    move v1, v2

    nop

    .line 5928
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_282
    if-eq v1, v2, :cond_283

    .line 5929
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5931
    goto/16 :goto_d

    .line 5932
    :cond_283
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5935
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5936
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5937
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5938
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5939
    goto/16 :goto_d

    .line 5911
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_138
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_284

    move v1, v2

    nop

    .line 5912
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_284
    if-eq v1, v2, :cond_285

    .line 5913
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5915
    goto/16 :goto_d

    .line 5916
    :cond_285
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5919
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5920
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5921
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5922
    goto/16 :goto_d

    .line 5894
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_139
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_286

    move v1, v2

    nop

    .line 5895
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_286
    if-eq v1, v2, :cond_287

    .line 5896
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5898
    goto/16 :goto_d

    .line 5899
    :cond_287
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5902
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5903
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5904
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5905
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5906
    goto/16 :goto_d

    .line 5878
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_288

    move v1, v2

    nop

    .line 5879
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_288
    if-eq v1, v2, :cond_289

    .line 5880
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5881
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5882
    goto :goto_d

    .line 5883
    :cond_289
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5886
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5887
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5888
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5889
    goto :goto_d

    .line 5864
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28a

    move v1, v2

    nop

    .line 5865
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28a
    if-eq v1, v2, :cond_28b

    .line 5866
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5868
    goto :goto_d

    .line 5869
    :cond_28b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5872
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->getIccCardStatus(I)V

    .line 5873
    goto :goto_d

    .line 5847
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28c

    goto :goto_c

    :cond_28c
    move v2, v1

    .line 5848
    .local v2, "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_28d

    .line 5849
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5851
    goto :goto_d

    .line 5852
    :cond_28d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 5855
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 5856
    .local v3, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5857
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5859
    nop

    .line 10880
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
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

    .line 5800
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5826
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5827
    return-object p0

    .line 5829
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

    .line 5833
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5834
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5791
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5820
    const/4 v0, 0x1

    return v0
.end method
