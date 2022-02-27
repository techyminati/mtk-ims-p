.class public abstract Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_4/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_4/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5777
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5780
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5832
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5833
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5834
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5835
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5836
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

    .line 5803
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
        -0x77t
        -0x2at
        0x61t
        -0x1ct
        -0x26t
        -0x1bt
        0x60t
        0x14t
        -0x53t
        -0x14t
        0x56t
        -0x43t
        0x4ft
        0x55t
        -0x69t
        -0x22t
        0x63t
        -0x3et
        0x66t
        -0x2et
        0x14t
        0x20t
        0x1ft
        0x5ft
        0x6et
        -0x56t
        -0x44t
        0x29t
        0x3et
        0x19t
        -0x4bt
        0x49t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    .line 5785
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    const-string v6, "android.hardware.radio@1.0::IRadio"

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

    .line 5797
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5821
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5841
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5842
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

    .line 5870
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    .line 10922
    :cond_0
    :goto_0
    move-object v14, v12

    goto/16 :goto_d

    .line 10913
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 10914
    .local v1, "_hidl_is_oneway":Z
    :cond_1
    if-eqz v1, :cond_0

    .line 10915
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10916
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10917
    goto :goto_0

    .line 10900
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 10901
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2
    if-eq v1, v2, :cond_3

    .line 10902
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10904
    goto :goto_0

    .line 10905
    :cond_3
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10907
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->notifySyspropsChanged()V

    .line 10908
    goto :goto_0

    .line 10884
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 10885
    .local v2, "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 10886
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10887
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10888
    goto :goto_0

    .line 10889
    :cond_5
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10891
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 10892
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10893
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 10894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10895
    goto :goto_0

    .line 10869
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    .line 10870
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 10871
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10873
    goto :goto_0

    .line 10874
    :cond_7
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10876
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->ping()V

    .line 10877
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10879
    goto :goto_0

    .line 10859
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 10860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eqz v1, :cond_0

    .line 10861
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10863
    goto :goto_0

    .line 10846
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9

    move v1, v2

    nop

    .line 10847
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9
    if-eq v1, v2, :cond_a

    .line 10848
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10850
    goto/16 :goto_0

    .line 10851
    :cond_a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10853
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setHALInstrumentation()V

    .line 10854
    goto/16 :goto_0

    .line 10813
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    move v2, v1

    .line 10814
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_3
    if-eqz v2, :cond_c

    .line 10815
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10817
    goto/16 :goto_0

    .line 10818
    :cond_c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10820
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10821
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10823
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 10825
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 10826
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10827
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10828
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 10829
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_4
    if-ge v1, v4, :cond_d

    .line 10831
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 10832
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10833
    nop

    .line 10829
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10836
    .end local v1    # "_hidl_index_0":I
    :cond_d
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10838
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10840
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10841
    goto/16 :goto_0

    .line 10797
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    move v2, v1

    .line 10798
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_f

    .line 10799
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10801
    goto/16 :goto_0

    .line 10802
    :cond_f
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10804
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10805
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10806
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10808
    goto/16 :goto_0

    .line 10783
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    move v2, v1

    .line 10784
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_11

    .line 10785
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10787
    goto/16 :goto_0

    .line 10788
    :cond_11
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10790
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10792
    goto/16 :goto_0

    .line 10767
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    move v2, v1

    .line 10768
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_13

    .line 10769
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10771
    goto/16 :goto_0

    .line 10772
    :cond_13
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10774
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10775
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10776
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10778
    goto/16 :goto_0

    .line 10751
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14

    move v1, v2

    nop

    .line 10752
    .local v1, "_hidl_is_oneway":Z
    :cond_14
    if-eq v1, v2, :cond_15

    .line 10753
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10755
    goto/16 :goto_0

    .line 10756
    :cond_15
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10759
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10760
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10761
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupWithReason(III)V

    .line 10762
    goto/16 :goto_0

    .line 10736
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    .end local v3    # "reason":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16

    move v1, v2

    nop

    .line 10737
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v1, v2, :cond_17

    .line 10738
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10740
    goto/16 :goto_0

    .line 10741
    :cond_17
    const-string v0, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10744
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10745
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10746
    goto/16 :goto_0

    .line 10721
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18

    move v1, v2

    nop

    .line 10722
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v1, v2, :cond_19

    .line 10723
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10725
    goto/16 :goto_0

    .line 10726
    :cond_19
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10729
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10730
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10731
    goto/16 :goto_0

    .line 10706
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a

    move v1, v2

    nop

    .line 10707
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v1, v2, :cond_1b

    .line 10708
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10710
    goto/16 :goto_0

    .line 10711
    :cond_1b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10714
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10715
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10716
    goto/16 :goto_0

    .line 10690
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c

    move v1, v2

    nop

    .line 10691
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v1, v2, :cond_1d

    .line 10692
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10694
    goto/16 :goto_0

    .line 10695
    :cond_1d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10697
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10698
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10699
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10700
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10701
    goto/16 :goto_0

    .line 10674
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e

    move v1, v2

    nop

    .line 10675
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v1, v2, :cond_1f

    .line 10676
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10678
    goto/16 :goto_0

    .line 10679
    :cond_1f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10682
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10683
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10684
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10685
    goto/16 :goto_0

    .line 10659
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20

    move v1, v2

    nop

    .line 10660
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v1, v2, :cond_21

    .line 10661
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10663
    goto/16 :goto_0

    .line 10664
    :cond_21
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10667
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10668
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10669
    goto/16 :goto_0

    .line 10644
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    .line 10645
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v1, v2, :cond_23

    .line 10646
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10648
    goto/16 :goto_0

    .line 10649
    :cond_23
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10652
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10653
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10654
    goto/16 :goto_0

    .line 10629
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24

    move v1, v2

    nop

    .line 10630
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v1, v2, :cond_25

    .line 10631
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10632
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10633
    goto/16 :goto_0

    .line 10634
    :cond_25
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10637
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10638
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSilentReboot(II)V

    .line 10639
    goto/16 :goto_0

    .line 10614
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26

    move v1, v2

    nop

    .line 10615
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v1, v2, :cond_27

    .line 10616
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10618
    goto/16 :goto_0

    .line 10619
    :cond_27
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10622
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10623
    .local v2, "simMode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportSimMode(II)V

    .line 10624
    goto/16 :goto_0

    .line 10599
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simMode":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28

    move v1, v2

    nop

    .line 10600
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v1, v2, :cond_29

    .line 10601
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10603
    goto/16 :goto_0

    .line 10604
    :cond_29
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10607
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10608
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10609
    goto/16 :goto_0

    .line 10585
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2a

    move v1, v2

    nop

    .line 10586
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v1, v2, :cond_2b

    .line 10587
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10589
    goto/16 :goto_0

    .line 10590
    :cond_2b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10593
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10594
    goto/16 :goto_0

    .line 10570
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2c

    move v1, v2

    nop

    .line 10571
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v1, v2, :cond_2d

    .line 10572
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10574
    goto/16 :goto_0

    .line 10575
    :cond_2d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10578
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10579
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10580
    goto/16 :goto_0

    .line 10556
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2e

    move v1, v2

    nop

    .line 10557
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v1, v2, :cond_2f

    .line 10558
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10560
    goto/16 :goto_0

    .line 10561
    :cond_2f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10564
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetAllConnections(I)V

    .line 10565
    goto/16 :goto_0

    .line 10541
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_30

    move v1, v2

    nop

    .line 10542
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v1, v2, :cond_31

    .line 10543
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10545
    goto/16 :goto_0

    .line 10546
    :cond_31
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10549
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10550
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10551
    goto/16 :goto_0

    .line 10526
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_32

    move v1, v2

    nop

    .line 10527
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v1, v2, :cond_33

    .line 10528
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10530
    goto/16 :goto_0

    .line 10531
    :cond_33
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10534
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10535
    .restart local v2    # "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10536
    goto/16 :goto_0

    .line 10511
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_34

    move v1, v2

    nop

    .line 10512
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v1, v2, :cond_35

    .line 10513
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10515
    goto/16 :goto_0

    .line 10516
    :cond_35
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10519
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10520
    .local v2, "featureId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10521
    goto/16 :goto_0

    .line 10495
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_36

    move v1, v2

    nop

    .line 10496
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v1, v2, :cond_37

    .line 10497
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10499
    goto/16 :goto_0

    .line 10500
    :cond_37
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10503
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10504
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10505
    .local v3, "value":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10506
    goto/16 :goto_0

    .line 10480
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_38

    move v1, v2

    nop

    .line 10481
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v1, v2, :cond_39

    .line 10482
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10484
    goto/16 :goto_0

    .line 10485
    :cond_39
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10488
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10489
    .local v2, "configId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10490
    goto/16 :goto_0

    .line 10464
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3a

    move v1, v2

    nop

    .line 10465
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v1, v2, :cond_3b

    .line 10466
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10468
    goto/16 :goto_0

    .line 10469
    :cond_3b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10472
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10473
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10474
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10475
    goto/16 :goto_0

    .line 10448
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3c

    move v1, v2

    nop

    .line 10449
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v1, v2, :cond_3d

    .line 10450
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10452
    goto/16 :goto_0

    .line 10453
    :cond_3d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10456
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10457
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10458
    .local v3, "network":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10459
    goto/16 :goto_0

    .line 10430
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3e

    move v1, v2

    nop

    :cond_3e
    move v6, v1

    .line 10431
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_3f

    .line 10432
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10434
    goto/16 :goto_0

    .line 10435
    :cond_3f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10438
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10439
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10440
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10441
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10442
    .local v11, "isLast":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10443
    goto/16 :goto_0

    .line 10415
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_40

    move v1, v2

    nop

    .line 10416
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v1, v2, :cond_41

    .line 10417
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10418
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10419
    goto/16 :goto_0

    .line 10420
    :cond_41
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10423
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10424
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10425
    goto/16 :goto_0

    .line 10401
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_42

    move v1, v2

    nop

    .line 10402
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_42
    if-eq v1, v2, :cond_43

    .line 10403
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10405
    goto/16 :goto_0

    .line 10406
    :cond_43
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10409
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getApcInfo(I)V

    .line 10410
    goto/16 :goto_0

    .line 10384
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_44

    move v1, v2

    nop

    .line 10385
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v1, v2, :cond_45

    .line 10386
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10388
    goto/16 :goto_0

    .line 10389
    :cond_45
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10392
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10393
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10394
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10395
    .local v4, "interval":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setApcMode(IIII)V

    .line 10396
    goto/16 :goto_0

    .line 10367
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_46

    move v1, v2

    nop

    .line 10368
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v1, v2, :cond_47

    .line 10369
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10371
    goto/16 :goto_0

    .line 10372
    :cond_47
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10375
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10376
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10377
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10378
    .local v4, "pktloss":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10379
    goto/16 :goto_0

    .line 10347
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_48

    move v1, v2

    nop

    :cond_48
    move v8, v1

    .line 10348
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_49

    .line 10349
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10351
    goto/16 :goto_0

    .line 10352
    :cond_49
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10355
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10356
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10357
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10358
    .local v16, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 10359
    .local v17, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10360
    .local v18, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 10361
    .local v19, "dstPort":I
    move-object v0, v13

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10362
    goto/16 :goto_0

    .line 10332
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v16    # "srcIp":Ljava/lang/String;
    .end local v17    # "srcPort":I
    .end local v18    # "dstIp":Ljava/lang/String;
    .end local v19    # "dstPort":I
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4a

    move v1, v2

    nop

    .line 10333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v1, v2, :cond_4b

    .line 10334
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10336
    goto/16 :goto_0

    .line 10337
    :cond_4b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10340
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10341
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10342
    goto/16 :goto_0

    .line 10307
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4c

    move v1, v2

    nop

    :cond_4c
    move v11, v1

    .line 10308
    .local v11, "_hidl_is_oneway":Z
    if-eq v11, v2, :cond_4d

    .line 10309
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10310
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10311
    goto/16 :goto_0

    .line 10312
    :cond_4d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10314
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10315
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10316
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10317
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10318
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10319
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10320
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10321
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10322
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10323
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10324
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10325
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10326
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10327
    goto/16 :goto_d

    .line 10290
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
    :pswitch_1d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4e

    move v1, v2

    nop

    .line 10291
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v1, v2, :cond_4f

    .line 10292
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10294
    goto/16 :goto_d

    .line 10295
    :cond_4f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10298
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10299
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10300
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10301
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10302
    goto/16 :goto_d

    .line 10274
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_1e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_50

    move v1, v2

    nop

    .line 10275
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_50
    if-eq v1, v2, :cond_51

    .line 10276
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10278
    goto/16 :goto_d

    .line 10279
    :cond_51
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10282
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10283
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10284
    .local v3, "snr":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10285
    goto/16 :goto_d

    .line 10256
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_1f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_52

    move v1, v2

    nop

    :cond_52
    move v6, v1

    .line 10257
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_53

    .line 10258
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10260
    goto/16 :goto_d

    .line 10261
    :cond_53
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10264
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10265
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10266
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10267
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10268
    .local v11, "apMac":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10269
    goto/16 :goto_d

    .line 10239
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_20
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_54

    move v1, v2

    nop

    .line 10240
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v1, v2, :cond_55

    .line 10241
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10243
    goto/16 :goto_d

    .line 10244
    :cond_55
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10247
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10248
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10249
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10250
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10251
    goto/16 :goto_d

    .line 10224
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_21
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_56

    move v1, v2

    nop

    .line 10225
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v1, v2, :cond_57

    .line 10226
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10228
    goto/16 :goto_d

    .line 10229
    :cond_57
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10232
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10233
    .local v2, "vdp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10234
    goto/16 :goto_d

    .line 10209
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "vdp":I
    :pswitch_22
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_58

    move v1, v2

    nop

    .line 10210
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v1, v2, :cond_59

    .line 10211
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10212
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10213
    goto/16 :goto_d

    .line 10214
    :cond_59
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10217
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10218
    .local v2, "state":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setE911State(II)V

    .line 10219
    goto/16 :goto_d

    .line 10193
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_23
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5a

    move v1, v2

    nop

    .line 10194
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v1, v2, :cond_5b

    .line 10195
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10196
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10197
    goto/16 :goto_d

    .line 10198
    :cond_5b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10201
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10202
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10203
    .local v3, "interfaceId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10204
    goto/16 :goto_d

    .line 10178
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_24
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5c

    move v1, v2

    nop

    .line 10179
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v1, v2, :cond_5d

    .line 10180
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10182
    goto/16 :goto_d

    .line 10183
    :cond_5d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10186
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10187
    .local v2, "enable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10188
    goto/16 :goto_d

    .line 10163
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":I
    :pswitch_25
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5e

    move v1, v2

    nop

    .line 10164
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v1, v2, :cond_5f

    .line 10165
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10167
    goto/16 :goto_d

    .line 10168
    :cond_5f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10171
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10172
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10173
    goto/16 :goto_d

    .line 10148
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_26
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_60

    move v1, v2

    nop

    .line 10149
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v1, v2, :cond_61

    .line 10150
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10151
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10152
    goto/16 :goto_d

    .line 10153
    :cond_61
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10156
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10157
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10158
    goto/16 :goto_d

    .line 10133
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_27
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_62

    move v1, v2

    nop

    .line 10134
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v1, v2, :cond_63

    .line 10135
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10136
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10137
    goto/16 :goto_d

    .line 10138
    :cond_63
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10141
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10142
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10143
    goto/16 :goto_d

    .line 10119
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_28
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_64

    move v1, v2

    nop

    .line 10120
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v1, v2, :cond_65

    .line 10121
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10123
    goto/16 :goto_d

    .line 10124
    :cond_65
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10127
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->restartRILD(I)V

    .line 10128
    goto/16 :goto_d

    .line 10105
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_66

    move v1, v2

    nop

    .line 10106
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v1, v2, :cond_67

    .line 10107
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10109
    goto/16 :goto_d

    .line 10110
    :cond_67
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10113
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetRadio(I)V

    .line 10114
    goto/16 :goto_d

    .line 10090
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_68

    move v1, v2

    nop

    .line 10091
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v1, v2, :cond_69

    .line 10092
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10094
    goto/16 :goto_d

    .line 10095
    :cond_69
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10098
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10099
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10100
    goto/16 :goto_d

    .line 10075
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6a

    move v1, v2

    nop

    .line 10076
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v1, v2, :cond_6b

    .line 10077
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10079
    goto/16 :goto_d

    .line 10080
    :cond_6b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v0

    .line 10083
    .local v0, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10084
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10085
    goto/16 :goto_d

    .line 10060
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6c

    move v1, v2

    nop

    .line 10061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v1, v2, :cond_6d

    .line 10062
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10064
    goto/16 :goto_d

    .line 10065
    :cond_6d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10068
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10069
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10070
    goto/16 :goto_d

    .line 10045
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6e

    move v1, v2

    nop

    .line 10046
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v1, v2, :cond_6f

    .line 10047
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10049
    goto/16 :goto_d

    .line 10050
    :cond_6f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10053
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10054
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10055
    goto/16 :goto_d

    .line 10030
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_2e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_70

    move v1, v2

    nop

    .line 10031
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v1, v2, :cond_71

    .line 10032
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10034
    goto/16 :goto_d

    .line 10035
    :cond_71
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10038
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10039
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10040
    goto/16 :goto_d

    .line 10015
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_2f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_72

    move v1, v2

    nop

    .line 10016
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v1, v2, :cond_73

    .line 10017
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10019
    goto/16 :goto_d

    .line 10020
    :cond_73
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10023
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10024
    .local v2, "resultCode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10025
    goto/16 :goto_d

    .line 10000
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resultCode":I
    :pswitch_30
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_74

    move v1, v2

    nop

    .line 10001
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v1, v2, :cond_75

    .line 10002
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10003
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10004
    goto/16 :goto_d

    .line 10005
    :cond_75
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10008
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10009
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setTrm(II)V

    .line 10010
    goto/16 :goto_d

    .line 9983
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_31
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_76

    move v1, v2

    nop

    .line 9984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v1, v2, :cond_77

    .line 9985
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9987
    goto/16 :goto_d

    .line 9988
    :cond_77
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9991
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9992
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9993
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9994
    .local v4, "param2":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setFdMode(IIII)V

    .line 9995
    goto/16 :goto_d

    .line 9966
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_32
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_78

    move v1, v2

    nop

    .line 9967
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_78
    if-eq v1, v2, :cond_79

    .line 9968
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9970
    goto/16 :goto_d

    .line 9971
    :cond_79
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9974
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9975
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9976
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9977
    .local v4, "nAct":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 9978
    goto/16 :goto_d

    .line 9952
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_33
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7a

    move v1, v2

    nop

    .line 9953
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v1, v2, :cond_7b

    .line 9954
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9956
    goto/16 :goto_d

    .line 9957
    :cond_7b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9960
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCurrentPOLList(I)V

    .line 9961
    goto/16 :goto_d

    .line 9938
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7c

    move v1, v2

    nop

    .line 9939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v1, v2, :cond_7d

    .line 9940
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9942
    goto/16 :goto_d

    .line 9943
    :cond_7d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9946
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPOLCapability(I)V

    .line 9947
    goto/16 :goto_d

    .line 9923
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_35
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7e

    move v1, v2

    nop

    .line 9924
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7e
    if-eq v1, v2, :cond_7f

    .line 9925
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9927
    goto/16 :goto_d

    .line 9928
    :cond_7f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9931
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9932
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getRxTestResult(II)V

    .line 9933
    goto/16 :goto_d

    .line 9908
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_36
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    .line 9909
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_80
    if-eq v1, v2, :cond_81

    .line 9910
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9912
    goto/16 :goto_d

    .line 9913
    :cond_81
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9916
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9917
    .local v2, "antType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRxTestConfig(II)V

    .line 9918
    goto/16 :goto_d

    .line 9888
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "antType":I
    :pswitch_37
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_82

    move v1, v2

    nop

    :cond_82
    move v8, v1

    .line 9889
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_83

    .line 9890
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9892
    goto/16 :goto_d

    .line 9893
    :cond_83
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9896
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9897
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9898
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9899
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9900
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9901
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9902
    .local v18, "rilDataRegState":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9903
    goto/16 :goto_d

    .line 9873
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_38
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_84

    move v1, v2

    nop

    .line 9874
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v1, v2, :cond_85

    .line 9875
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9877
    goto/16 :goto_d

    .line 9878
    :cond_85
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9881
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9882
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9883
    goto/16 :goto_d

    .line 9859
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_39
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_86

    move v1, v2

    nop

    .line 9860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_86
    if-eq v1, v2, :cond_87

    .line 9861
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9863
    goto/16 :goto_d

    .line 9864
    :cond_87
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9867
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9868
    goto/16 :goto_d

    .line 9842
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_88

    move v1, v2

    nop

    .line 9843
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v1, v2, :cond_89

    .line 9844
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9846
    goto/16 :goto_d

    .line 9847
    :cond_89
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9850
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9851
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9852
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9853
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9854
    goto/16 :goto_d

    .line 9828
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_3b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8a

    move v1, v2

    nop

    .line 9829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v1, v2, :cond_8b

    .line 9830
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9832
    goto/16 :goto_d

    .line 9833
    :cond_8b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9836
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->abortFemtocellList(I)V

    .line 9837
    goto/16 :goto_d

    .line 9814
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8c

    move v1, v2

    nop

    .line 9815
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v1, v2, :cond_8d

    .line 9816
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9818
    goto/16 :goto_d

    .line 9819
    :cond_8d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9822
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getFemtocellList(I)V

    .line 9823
    goto/16 :goto_d

    .line 9800
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8e

    move v1, v2

    nop

    .line 9801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v1, v2, :cond_8f

    .line 9802
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9804
    goto/16 :goto_d

    .line 9805
    :cond_8f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9808
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9809
    goto/16 :goto_d

    .line 9786
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    .line 9787
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v1, v2, :cond_91

    .line 9788
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9790
    goto/16 :goto_d

    .line 9791
    :cond_91
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9794
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9795
    goto/16 :goto_d

    .line 9772
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_92

    move v1, v2

    nop

    .line 9773
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v1, v2, :cond_93

    .line 9774
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9776
    goto/16 :goto_d

    .line 9777
    :cond_93
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9780
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9781
    goto/16 :goto_d

    .line 9755
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_40
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_94

    move v1, v2

    nop

    .line 9756
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v1, v2, :cond_95

    .line 9757
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9759
    goto/16 :goto_d

    .line 9760
    :cond_95
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9763
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9764
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9765
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9766
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9767
    goto/16 :goto_d

    .line 9741
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_41
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_96

    move v1, v2

    nop

    .line 9742
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_96
    if-eq v1, v2, :cond_97

    .line 9743
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9745
    goto/16 :goto_d

    .line 9746
    :cond_97
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9749
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9750
    goto/16 :goto_d

    .line 9726
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_42
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_98

    move v1, v2

    nop

    .line 9727
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_98
    if-eq v1, v2, :cond_99

    .line 9728
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9729
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9730
    goto/16 :goto_d

    .line 9731
    :cond_99
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9734
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9735
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reloadModemType(II)V

    .line 9736
    goto/16 :goto_d

    .line 9711
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_43
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9a

    move v1, v2

    nop

    .line 9712
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9a
    if-eq v1, v2, :cond_9b

    .line 9713
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9714
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9715
    goto/16 :goto_d

    .line 9716
    :cond_9b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9719
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9720
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->storeModemType(II)V

    .line 9721
    goto/16 :goto_d

    .line 9696
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "modemType":I
    :pswitch_44
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9c

    move v1, v2

    nop

    .line 9697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9c
    if-eq v1, v2, :cond_9d

    .line 9698
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9700
    goto/16 :goto_d

    .line 9701
    :cond_9d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9704
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9705
    .local v2, "sessionId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResumeRegistration(II)V

    .line 9706
    goto/16 :goto_d

    .line 9681
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionId":I
    :pswitch_45
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9e

    move v1, v2

    nop

    .line 9682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9e
    if-eq v1, v2, :cond_9f

    .line 9683
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9684
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9685
    goto/16 :goto_d

    .line 9686
    :cond_9f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9689
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9690
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9691
    goto/16 :goto_d

    .line 9666
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_46
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a0

    move v1, v2

    nop

    .line 9667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a0
    if-eq v1, v2, :cond_a1

    .line 9668
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9670
    goto/16 :goto_d

    .line 9671
    :cond_a1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9674
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9675
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9676
    goto/16 :goto_d

    .line 9650
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_47
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a2

    move v1, v2

    nop

    .line 9651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a2
    if-eq v1, v2, :cond_a3

    .line 9652
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9654
    goto/16 :goto_d

    .line 9655
    :cond_a3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9658
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9659
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9660
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9661
    goto/16 :goto_d

    .line 9634
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_48
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a4

    move v1, v2

    nop

    .line 9635
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a4
    if-eq v1, v2, :cond_a5

    .line 9636
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9638
    goto/16 :goto_d

    .line 9639
    :cond_a5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9642
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9643
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9644
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9645
    goto/16 :goto_d

    .line 9620
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_49
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a6

    move v1, v2

    nop

    .line 9621
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a6
    if-eq v1, v2, :cond_a7

    .line 9622
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9623
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9624
    goto/16 :goto_d

    .line 9625
    :cond_a7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9628
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9629
    goto/16 :goto_d

    .line 9604
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a8

    move v1, v2

    nop

    .line 9605
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a8
    if-eq v1, v2, :cond_a9

    .line 9606
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9608
    goto/16 :goto_d

    .line 9609
    :cond_a9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9612
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9613
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9614
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9615
    goto/16 :goto_d

    .line 9590
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_aa

    move v1, v2

    nop

    .line 9591
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_aa
    if-eq v1, v2, :cond_ab

    .line 9592
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9594
    goto/16 :goto_d

    .line 9595
    :cond_ab
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9598
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9599
    goto/16 :goto_d

    .line 9576
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ac

    move v1, v2

    nop

    .line 9577
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ac
    if-eq v1, v2, :cond_ad

    .line 9578
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9580
    goto/16 :goto_d

    .line 9581
    :cond_ad
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9584
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9585
    goto/16 :goto_d

    .line 9561
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ae

    move v1, v2

    nop

    .line 9562
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ae
    if-eq v1, v2, :cond_af

    .line 9563
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9564
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9565
    goto/16 :goto_d

    .line 9566
    :cond_af
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9569
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9570
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9571
    goto/16 :goto_d

    .line 9545
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_4e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b0

    move v1, v2

    nop

    .line 9546
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b0
    if-eq v1, v2, :cond_b1

    .line 9547
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9549
    goto/16 :goto_d

    .line 9550
    :cond_b1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9553
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9554
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9555
    .local v3, "serialId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->removeCbMsg(III)V

    .line 9556
    goto/16 :goto_d

    .line 9530
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_4f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b2

    move v1, v2

    nop

    .line 9531
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b2
    if-eq v1, v2, :cond_b3

    .line 9532
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9534
    goto/16 :goto_d

    .line 9535
    :cond_b3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9538
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9539
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEtws(II)V

    .line 9540
    goto/16 :goto_d

    .line 9516
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_50
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b4

    move v1, v2

    nop

    .line 9517
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b4
    if-eq v1, v2, :cond_b5

    .line 9518
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9520
    goto/16 :goto_d

    .line 9521
    :cond_b5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9524
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9525
    goto/16 :goto_d

    .line 9500
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_51
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b6

    move v1, v2

    nop

    .line 9501
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b6
    if-eq v1, v2, :cond_b7

    .line 9502
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9504
    goto/16 :goto_d

    .line 9505
    :cond_b7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9508
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9509
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9510
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9511
    goto/16 :goto_d

    .line 9486
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_52
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_b8

    move v1, v2

    nop

    .line 9487
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_b8
    if-eq v1, v2, :cond_b9

    .line 9488
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9490
    goto/16 :goto_d

    .line 9491
    :cond_b9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9494
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmsParameters(I)V

    .line 9495
    goto/16 :goto_d

    .line 9467
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_53
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ba

    move v1, v2

    nop

    :cond_ba
    move v7, v1

    .line 9468
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_bb

    .line 9469
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9470
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9471
    goto/16 :goto_d

    .line 9472
    :cond_bb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9475
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9476
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9477
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9478
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9479
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9480
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, v13

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9481
    goto/16 :goto_d

    .line 9450
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_54
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_bc

    move v1, v2

    nop

    .line 9451
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_bc
    if-eq v1, v2, :cond_bd

    .line 9452
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9454
    goto/16 :goto_d

    .line 9455
    :cond_bd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9459
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9460
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9461
    .local v4, "simType":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9462
    goto/16 :goto_d

    .line 9434
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_55
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_be

    move v1, v2

    nop

    .line 9435
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_be
    if-eq v1, v2, :cond_bf

    .line 9436
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9437
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9438
    goto/16 :goto_d

    .line 9439
    :cond_bf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9441
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9442
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9443
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9444
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9445
    goto/16 :goto_d

    .line 9414
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_56
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c0

    move v1, v2

    nop

    :cond_c0
    move v8, v1

    .line 9415
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_c1

    .line 9416
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9418
    goto/16 :goto_d

    .line 9419
    :cond_c1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9422
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9423
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9424
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9425
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9426
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9427
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9428
    .local v18, "gid2":Ljava/lang/String;
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9429
    goto/16 :goto_d

    .line 9399
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_57
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c2

    move v1, v2

    nop

    .line 9400
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v1, v2, :cond_c3

    .line 9401
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9403
    goto/16 :goto_d

    .line 9404
    :cond_c3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9407
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9408
    .local v2, "category":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryNetworkLock(II)V

    .line 9409
    goto/16 :goto_d

    .line 9383
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "category":I
    :pswitch_58
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c4

    move v1, v2

    nop

    .line 9384
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c4
    if-eq v1, v2, :cond_c5

    .line 9385
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9387
    goto/16 :goto_d

    .line 9388
    :cond_c5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9391
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9392
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9393
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9394
    goto/16 :goto_d

    .line 9368
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_59
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c6

    move v1, v2

    nop

    .line 9369
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c6
    if-eq v1, v2, :cond_c7

    .line 9370
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9372
    goto/16 :goto_d

    .line 9373
    :cond_c7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9376
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9377
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSimPower(II)V

    .line 9378
    goto/16 :goto_d

    .line 9354
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c8

    move v1, v2

    nop

    .line 9355
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_c8
    if-eq v1, v2, :cond_c9

    .line 9356
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9358
    goto/16 :goto_d

    .line 9359
    :cond_c9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9362
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getIccid(I)V

    .line 9363
    goto/16 :goto_d

    .line 9340
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ca

    move v1, v2

    nop

    .line 9341
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ca
    if-eq v1, v2, :cond_cb

    .line 9342
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9343
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9344
    goto/16 :goto_d

    .line 9345
    :cond_cb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9348
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getATR(I)V

    .line 9349
    goto/16 :goto_d

    .line 9325
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_cc

    move v1, v2

    nop

    .line 9326
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_cc
    if-eq v1, v2, :cond_cd

    .line 9327
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9329
    goto/16 :goto_d

    .line 9330
    :cond_cd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9333
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9334
    .restart local v2    # "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9335
    goto/16 :goto_d

    .line 9310
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_5d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ce

    move v1, v2

    nop

    .line 9311
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ce
    if-eq v1, v2, :cond_cf

    .line 9312
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9314
    goto/16 :goto_d

    .line 9315
    :cond_cf
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9318
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9319
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setModemPower(IZ)V

    .line 9320
    goto/16 :goto_d

    .line 9295
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_5e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d0

    move v1, v2

    nop

    .line 9296
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d0
    if-eq v1, v2, :cond_d1

    .line 9297
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9299
    goto/16 :goto_d

    .line 9300
    :cond_d1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9303
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9304
    .local v2, "ready":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPhonebookReady(II)V

    .line 9305
    goto/16 :goto_d

    .line 9279
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ready":I
    :pswitch_5f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d2

    move v1, v2

    nop

    .line 9280
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d2
    if-eq v1, v2, :cond_d3

    .line 9281
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9283
    goto/16 :goto_d

    .line 9284
    :cond_d3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9287
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9288
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9289
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBAasList(III)V

    .line 9290
    goto/16 :goto_d

    .line 9263
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_60
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d4

    move v1, v2

    nop

    .line 9264
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d4
    if-eq v1, v2, :cond_d5

    .line 9265
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9267
    goto/16 :goto_d

    .line 9268
    :cond_d5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9270
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9271
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9272
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9273
    .local v3, "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9274
    goto/16 :goto_d

    .line 9247
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

    .line 9248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d6
    if-eq v1, v2, :cond_d7

    .line 9249
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9251
    goto/16 :goto_d

    .line 9252
    :cond_d7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9255
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9256
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9257
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9258
    goto/16 :goto_d

    .line 9231
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

    .line 9232
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_d8
    if-eq v1, v2, :cond_d9

    .line 9233
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9234
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9235
    goto/16 :goto_d

    .line 9236
    :cond_d9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9239
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9240
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9241
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9242
    goto/16 :goto_d

    .line 9215
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_63
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_da

    move v1, v2

    nop

    .line 9216
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_da
    if-eq v1, v2, :cond_db

    .line 9217
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9219
    goto/16 :goto_d

    .line 9220
    :cond_db
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9223
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9224
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9225
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9226
    goto/16 :goto_d

    .line 9199
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_64
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_dc

    move v1, v2

    nop

    .line 9200
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_dc
    if-eq v1, v2, :cond_dd

    .line 9201
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9203
    goto/16 :goto_d

    .line 9204
    :cond_dd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9207
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9208
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9209
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9210
    goto/16 :goto_d

    .line 9183
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_65
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_de

    move v1, v2

    nop

    .line 9184
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_de
    if-eq v1, v2, :cond_df

    .line 9185
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9187
    goto/16 :goto_d

    .line 9188
    :cond_df
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9191
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9192
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9193
    .local v3, "index2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9194
    goto/16 :goto_d

    .line 9167
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_66
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e0

    move v1, v2

    nop

    .line 9168
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e0
    if-eq v1, v2, :cond_e1

    .line 9169
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9171
    goto/16 :goto_d

    .line 9172
    :cond_e1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9175
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9176
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9177
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9178
    goto/16 :goto_d

    .line 9153
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_67
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e2

    move v1, v2

    nop

    .line 9154
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e2
    if-eq v1, v2, :cond_e3

    .line 9155
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9157
    goto/16 :goto_d

    .line 9158
    :cond_e3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9161
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9162
    goto/16 :goto_d

    .line 9139
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_68
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e4

    move v1, v2

    nop

    .line 9140
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e4
    if-eq v1, v2, :cond_e5

    .line 9141
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9143
    goto/16 :goto_d

    .line 9144
    :cond_e5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9147
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9148
    goto/16 :goto_d

    .line 9123
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_69
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e6

    move v1, v2

    nop

    .line 9124
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e6
    if-eq v1, v2, :cond_e7

    .line 9125
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9127
    goto/16 :goto_d

    .line 9128
    :cond_e7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9131
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9132
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9133
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9134
    goto/16 :goto_d

    .line 9108
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_e8

    move v1, v2

    nop

    .line 9109
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_e8
    if-eq v1, v2, :cond_e9

    .line 9110
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9112
    goto/16 :goto_d

    .line 9113
    :cond_e9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9116
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9117
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9118
    goto/16 :goto_d

    .line 9092
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "adnIndex":I
    :pswitch_6b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ea

    move v1, v2

    nop

    .line 9093
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ea
    if-eq v1, v2, :cond_eb

    .line 9094
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9095
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9096
    goto/16 :goto_d

    .line 9097
    :cond_eb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9100
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9101
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9102
    .local v3, "endIndex":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readUPBGasList(III)V

    .line 9103
    goto/16 :goto_d

    .line 9075
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ec

    move v1, v2

    nop

    .line 9076
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ec
    if-eq v1, v2, :cond_ed

    .line 9077
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9079
    goto/16 :goto_d

    .line 9080
    :cond_ed
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9083
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9084
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9085
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9086
    .local v4, "entryIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9087
    goto/16 :goto_d

    .line 9060
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_ee

    move v1, v2

    nop

    .line 9061
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_ee
    if-eq v1, v2, :cond_ef

    .line 9062
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9064
    goto/16 :goto_d

    .line 9065
    :cond_ef
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9068
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9069
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9070
    goto/16 :goto_d

    .line 9046
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f0

    move v1, v2

    nop

    .line 9047
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f0
    if-eq v1, v2, :cond_f1

    .line 9048
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9049
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9050
    goto/16 :goto_d

    .line 9051
    :cond_f1
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9054
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryUPBCapability(I)V

    .line 9055
    goto/16 :goto_d

    .line 9029
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f2

    move v1, v2

    nop

    .line 9030
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f2
    if-eq v1, v2, :cond_f3

    .line 9031
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9033
    goto/16 :goto_d

    .line 9034
    :cond_f3
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9037
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9038
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9039
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9040
    .local v4, "eIndex":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9041
    goto/16 :goto_d

    .line 9013
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_70
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f4

    move v1, v2

    nop

    .line 9014
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f4
    if-eq v1, v2, :cond_f5

    .line 9015
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9017
    goto/16 :goto_d

    .line 9018
    :cond_f5
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9021
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9022
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9023
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9024
    goto/16 :goto_d

    .line 8998
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_71
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f6

    move v1, v2

    nop

    .line 8999
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f6
    if-eq v1, v2, :cond_f7

    .line 9000
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9002
    goto/16 :goto_d

    .line 9003
    :cond_f7
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9006
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9007
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9008
    goto/16 :goto_d

    .line 8984
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_72
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f8

    move v1, v2

    nop

    .line 8985
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_f8
    if-eq v1, v2, :cond_f9

    .line 8986
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8987
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8988
    goto/16 :goto_d

    .line 8989
    :cond_f9
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8992
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getEccNum(I)V

    .line 8993
    goto/16 :goto_d

    .line 8968
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_73
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fa

    move v1, v2

    nop

    .line 8969
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fa
    if-eq v1, v2, :cond_fb

    .line 8970
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8972
    goto/16 :goto_d

    .line 8973
    :cond_fb
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8976
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8977
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8978
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 8979
    goto/16 :goto_d

    .line 8953
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_74
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fc

    move v1, v2

    nop

    .line 8954
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fc
    if-eq v1, v2, :cond_fd

    .line 8955
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8957
    goto/16 :goto_d

    .line 8958
    :cond_fd
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8961
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8962
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 8963
    goto/16 :goto_d

    .line 8938
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_75
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_fe

    move v1, v2

    nop

    .line 8939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_fe
    if-eq v1, v2, :cond_ff

    .line 8940
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8942
    goto/16 :goto_d

    .line 8943
    :cond_ff
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8946
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8947
    .local v2, "phoneType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->eccPreferredRat(II)V

    .line 8948
    goto/16 :goto_d

    .line 8922
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneType":I
    :pswitch_76
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_100

    move v1, v2

    nop

    .line 8923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_100
    if-eq v1, v2, :cond_101

    .line 8924
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8926
    goto/16 :goto_d

    .line 8927
    :cond_101
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8930
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8931
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8932
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->currentStatus(III)V

    .line 8933
    goto/16 :goto_d

    .line 8906
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_77
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_102

    move v1, v2

    nop

    .line 8907
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_102
    if-eq v1, v2, :cond_103

    .line 8908
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8910
    goto/16 :goto_d

    .line 8911
    :cond_103
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8914
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8915
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8916
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 8917
    goto/16 :goto_d

    .line 8891
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_78
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_104

    move v1, v2

    nop

    .line 8892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_104
    if-eq v1, v2, :cond_105

    .line 8893
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8895
    goto/16 :goto_d

    .line 8896
    :cond_105
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8899
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8900
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8901
    goto/16 :goto_d

    .line 8875
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceCategory":I
    :pswitch_79
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_106

    move v1, v2

    nop

    .line 8876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_106
    if-eq v1, v2, :cond_107

    .line 8877
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8879
    goto/16 :goto_d

    .line 8880
    :cond_107
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8883
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8884
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8885
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8886
    goto/16 :goto_d

    .line 8858
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_108

    move v1, v2

    nop

    .line 8859
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_108
    if-eq v1, v2, :cond_109

    .line 8860
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8862
    goto/16 :goto_d

    .line 8863
    :cond_109
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8866
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8867
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8868
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8869
    .local v4, "seqNumber":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallIndication(IIII)V

    .line 8870
    goto/16 :goto_d

    .line 8844
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_7b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10a

    move v1, v2

    nop

    .line 8845
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10a
    if-eq v1, v2, :cond_10b

    .line 8846
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8848
    goto/16 :goto_d

    .line 8849
    :cond_10b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8852
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupAll(I)V

    .line 8853
    goto/16 :goto_d

    .line 8829
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10c

    move v1, v2

    nop

    .line 8830
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10c
    if-eq v1, v2, :cond_10d

    .line 8831
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8833
    goto/16 :goto_d

    .line 8834
    :cond_10d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8837
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8838
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8839
    goto/16 :goto_d

    .line 8815
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_10e

    move v1, v2

    nop

    .line 8816
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_10e
    if-eq v1, v2, :cond_10f

    .line 8817
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8819
    goto/16 :goto_d

    .line 8820
    :cond_10f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8823
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resetSuppServ(I)V

    .line 8824
    goto/16 :goto_d

    .line 8801
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_110

    move v1, v2

    nop

    .line 8802
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_110
    if-eq v1, v2, :cond_111

    .line 8803
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8804
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8805
    goto/16 :goto_d

    .line 8806
    :cond_111
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8808
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8809
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getXcapStatus(I)V

    .line 8810
    goto/16 :goto_d

    .line 8787
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_112

    move v1, v2

    nop

    .line 8788
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_112
    if-eq v1, v2, :cond_113

    .line 8789
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8791
    goto/16 :goto_d

    .line 8792
    :cond_113
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8795
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->cancelUssi(I)V

    .line 8796
    goto/16 :goto_d

    .line 8771
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_80
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_114

    move v1, v2

    nop

    .line 8772
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_114
    if-eq v1, v2, :cond_115

    .line 8773
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8775
    goto/16 :goto_d

    .line 8776
    :cond_115
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8779
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8780
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8781
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8782
    goto/16 :goto_d

    .line 8753
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_81
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_116

    move v1, v2

    nop

    :cond_116
    move v6, v1

    .line 8754
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_117

    .line 8755
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8757
    goto/16 :goto_d

    .line 8758
    :cond_117
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8761
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8762
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8763
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8764
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8765
    .local v11, "netId":I
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8766
    goto/16 :goto_d

    .line 8737
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_82
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_118

    move v1, v2

    nop

    .line 8738
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_118
    if-eq v1, v2, :cond_119

    .line 8739
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8741
    goto/16 :goto_d

    .line 8742
    :cond_119
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8745
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8746
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8747
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8748
    goto/16 :goto_d

    .line 8721
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_83
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11a

    move v1, v2

    nop

    .line 8722
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v1, v2, :cond_11b

    .line 8723
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8725
    goto/16 :goto_d

    .line 8726
    :cond_11b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8729
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8730
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8731
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8732
    goto/16 :goto_d

    .line 8706
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_84
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11c

    move v1, v2

    nop

    .line 8707
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11c
    if-eq v1, v2, :cond_11d

    .line 8708
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8710
    goto/16 :goto_d

    .line 8711
    :cond_11d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8714
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8715
    .local v2, "colrEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setColr(II)V

    .line 8716
    goto/16 :goto_d

    .line 8691
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrEnable":I
    :pswitch_85
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11e

    move v1, v2

    nop

    .line 8692
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_11e
    if-eq v1, v2, :cond_11f

    .line 8693
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8694
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8695
    goto/16 :goto_d

    .line 8696
    :cond_11f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8698
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8699
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8700
    .local v2, "colpEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setColp(II)V

    .line 8701
    goto/16 :goto_d

    .line 8676
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colpEnable":I
    :pswitch_86
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_120

    move v1, v2

    nop

    .line 8677
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_120
    if-eq v1, v2, :cond_121

    .line 8678
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8679
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8680
    goto/16 :goto_d

    .line 8681
    :cond_121
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8683
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8684
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8685
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8686
    goto/16 :goto_d

    .line 8662
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_87
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_122

    move v1, v2

    nop

    .line 8663
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_122
    if-eq v1, v2, :cond_123

    .line 8664
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8666
    goto/16 :goto_d

    .line 8667
    :cond_123
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8670
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getColr(I)V

    .line 8671
    goto/16 :goto_d

    .line 8648
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_88
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_124

    move v1, v2

    nop

    .line 8649
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_124
    if-eq v1, v2, :cond_125

    .line 8650
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8652
    goto/16 :goto_d

    .line 8653
    :cond_125
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8656
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getColp(I)V

    .line 8657
    goto/16 :goto_d

    .line 8633
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_89
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_126

    move v1, v2

    nop

    .line 8634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_126
    if-eq v1, v2, :cond_127

    .line 8635
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8637
    goto/16 :goto_d

    .line 8638
    :cond_127
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8641
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8642
    .local v2, "clipEnable":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setClip(II)V

    .line 8643
    goto/16 :goto_d

    .line 8615
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clipEnable":I
    :pswitch_8a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_128

    move v1, v2

    nop

    :cond_128
    move v6, v1

    .line 8616
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_129

    .line 8617
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8619
    goto/16 :goto_d

    .line 8620
    :cond_129
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8623
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8624
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8625
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8626
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8627
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8628
    goto/16 :goto_d

    .line 8600
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_8b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12a

    move v1, v2

    nop

    .line 8601
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12a
    if-eq v1, v2, :cond_12b

    .line 8602
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8604
    goto/16 :goto_d

    .line 8605
    :cond_12b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8608
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8609
    .local v2, "phoneId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getRoamingEnable(II)V

    .line 8610
    goto/16 :goto_d

    .line 8585
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "phoneId":I
    :pswitch_8c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12c

    move v1, v2

    nop

    .line 8586
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v1, v2, :cond_12d

    .line 8587
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8589
    goto/16 :goto_d

    .line 8590
    :cond_12d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8593
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8594
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8595
    goto/16 :goto_d

    .line 8570
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12e

    move v1, v2

    nop

    .line 8571
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_12e
    if-eq v1, v2, :cond_12f

    .line 8572
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8574
    goto/16 :goto_d

    .line 8575
    :cond_12f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8578
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8579
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8580
    goto/16 :goto_d

    .line 8556
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_8e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_130

    move v1, v2

    nop

    .line 8557
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_130
    if-eq v1, v2, :cond_131

    .line 8558
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8560
    goto/16 :goto_d

    .line 8561
    :cond_131
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8564
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8565
    goto/16 :goto_d

    .line 8540
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_132

    move v1, v2

    nop

    .line 8541
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_132
    if-eq v1, v2, :cond_133

    .line 8542
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8544
    goto/16 :goto_d

    .line 8545
    :cond_133
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8548
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8549
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8550
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8551
    goto/16 :goto_d

    .line 8523
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_90
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_134

    move v1, v2

    nop

    .line 8524
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_134
    if-eq v1, v2, :cond_135

    .line 8525
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8527
    goto/16 :goto_d

    .line 8528
    :cond_135
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8531
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8532
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8533
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8534
    .local v4, "timer":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8535
    goto/16 :goto_d

    .line 8507
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_91
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_136

    move v1, v2

    nop

    .line 8508
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_136
    if-eq v1, v2, :cond_137

    .line 8509
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8511
    goto/16 :goto_d

    .line 8512
    :cond_137
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8515
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8516
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8517
    .local v3, "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8518
    goto/16 :goto_d

    .line 8491
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

    .line 8492
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_138
    if-eq v1, v2, :cond_139

    .line 8493
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8495
    goto/16 :goto_d

    .line 8496
    :cond_139
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8499
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8500
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8501
    .restart local v3    # "status":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8502
    goto/16 :goto_d

    .line 8476
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_93
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13a

    move v1, v2

    nop

    .line 8477
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13a
    if-eq v1, v2, :cond_13b

    .line 8478
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8480
    goto/16 :goto_d

    .line 8481
    :cond_13b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8484
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8485
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->forceReleaseCall(II)V

    .line 8486
    goto/16 :goto_d

    .line 8460
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_94
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13c

    move v1, v2

    nop

    .line 8461
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13c
    if-eq v1, v2, :cond_13d

    .line 8462
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8464
    goto/16 :goto_d

    .line 8465
    :cond_13d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8467
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8468
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8469
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8470
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8471
    goto/16 :goto_d

    .line 8445
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_95
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13e

    move v1, v2

    nop

    .line 8446
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_13e
    if-eq v1, v2, :cond_13f

    .line 8447
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8449
    goto/16 :goto_d

    .line 8450
    :cond_13f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8453
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8454
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8455
    goto/16 :goto_d

    .line 8430
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_96
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_140

    move v1, v2

    nop

    .line 8431
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_140
    if-eq v1, v2, :cond_141

    .line 8432
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8434
    goto/16 :goto_d

    .line 8435
    :cond_141
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8438
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8439
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8440
    goto/16 :goto_d

    .line 8413
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_97
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    move v1, v2

    nop

    .line 8414
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_142
    if-eq v1, v2, :cond_143

    .line 8415
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8417
    goto/16 :goto_d

    .line 8418
    :cond_143
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8420
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8421
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8422
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8423
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8424
    .local v4, "type":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8425
    goto/16 :goto_d

    .line 8397
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_98
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_144

    move v1, v2

    nop

    .line 8398
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_144
    if-eq v1, v2, :cond_145

    .line 8399
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8400
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8401
    goto/16 :goto_d

    .line 8402
    :cond_145
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8405
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8406
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v15}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8407
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8408
    goto/16 :goto_d

    .line 8382
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_99
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_146

    move v1, v2

    nop

    .line 8383
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_146
    if-eq v1, v2, :cond_147

    .line 8384
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8386
    goto/16 :goto_d

    .line 8387
    :cond_147
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8390
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8391
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWfcProfile(II)V

    .line 8392
    goto/16 :goto_d

    .line 8365
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "wfcPreference":I
    :pswitch_9a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_148

    move v1, v2

    nop

    .line 8366
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_148
    if-eq v1, v2, :cond_149

    .line 8367
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8369
    goto/16 :goto_d

    .line 8370
    :cond_149
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8373
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8374
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8375
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8376
    .local v4, "callToRemove":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8377
    goto/16 :goto_d

    .line 8348
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_9b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14a

    move v1, v2

    nop

    .line 8349
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14a
    if-eq v1, v2, :cond_14b

    .line 8350
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8351
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8352
    goto/16 :goto_d

    .line 8353
    :cond_14b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8356
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8357
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8358
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8359
    .local v4, "callToAdd":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8360
    goto/16 :goto_d

    .line 8332
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14c

    move v1, v2

    nop

    .line 8333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14c
    if-eq v1, v2, :cond_14d

    .line 8334
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8336
    goto/16 :goto_d

    .line 8337
    :cond_14d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8340
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8341
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8342
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8343
    goto/16 :goto_d

    .line 8317
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_14e

    move v1, v2

    nop

    .line 8318
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_14e
    if-eq v1, v2, :cond_14f

    .line 8319
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8320
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8321
    goto/16 :goto_d

    .line 8322
    :cond_14f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8325
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8326
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8327
    goto/16 :goto_d

    .line 8297
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_9e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_150

    move v1, v2

    nop

    :cond_150
    move v8, v1

    .line 8298
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_151

    .line 8299
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8300
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8301
    goto/16 :goto_d

    .line 8302
    :cond_151
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8304
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8305
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8306
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8307
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8308
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8309
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8310
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8311
    .local v18, "eimsEnable":Z
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8312
    goto/16 :goto_d

    .line 8282
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_9f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_152

    move v1, v2

    nop

    .line 8283
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_152
    if-eq v1, v2, :cond_153

    .line 8284
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8286
    goto/16 :goto_d

    .line 8287
    :cond_153
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8289
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8290
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8291
    .local v2, "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8292
    goto/16 :goto_d

    .line 8267
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_154

    move v1, v2

    nop

    .line 8268
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_154
    if-eq v1, v2, :cond_155

    .line 8269
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8271
    goto/16 :goto_d

    .line 8272
    :cond_155
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8275
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8276
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8277
    goto/16 :goto_d

    .line 8252
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_156

    move v1, v2

    nop

    .line 8253
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_156
    if-eq v1, v2, :cond_157

    .line 8254
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8256
    goto/16 :goto_d

    .line 8257
    :cond_157
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8260
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8261
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8262
    goto/16 :goto_d

    .line 8237
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_158

    move v1, v2

    nop

    .line 8238
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_158
    if-eq v1, v2, :cond_159

    .line 8239
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8241
    goto/16 :goto_d

    .line 8242
    :cond_159
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8245
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8246
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8247
    goto/16 :goto_d

    .line 8222
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15a

    move v1, v2

    nop

    .line 8223
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15a
    if-eq v1, v2, :cond_15b

    .line 8224
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8226
    goto/16 :goto_d

    .line 8227
    :cond_15b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8230
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8231
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8232
    goto/16 :goto_d

    .line 8207
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15c

    move v1, v2

    nop

    .line 8208
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15c
    if-eq v1, v2, :cond_15d

    .line 8209
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8210
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8211
    goto/16 :goto_d

    .line 8212
    :cond_15d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8215
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8216
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8217
    goto/16 :goto_d

    .line 8192
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15e

    move v1, v2

    nop

    .line 8193
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15e
    if-eq v1, v2, :cond_15f

    .line 8194
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8196
    goto/16 :goto_d

    .line 8197
    :cond_15f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8200
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8201
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8202
    goto/16 :goto_d

    .line 8177
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_160

    move v1, v2

    nop

    .line 8178
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_160
    if-eq v1, v2, :cond_161

    .line 8179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8181
    goto/16 :goto_d

    .line 8182
    :cond_161
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8185
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8186
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setImsEnable(IZ)V

    .line 8187
    goto/16 :goto_d

    .line 8162
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isOn":Z
    :pswitch_a7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_162

    move v1, v2

    nop

    .line 8163
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_162
    if-eq v1, v2, :cond_163

    .line 8164
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8166
    goto/16 :goto_d

    .line 8167
    :cond_163
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8170
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8171
    .local v2, "cause":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsDeregNotification(II)V

    .line 8172
    goto/16 :goto_d

    .line 8147
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cause":I
    :pswitch_a8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_164

    move v1, v2

    nop

    .line 8148
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_164
    if-eq v1, v2, :cond_165

    .line 8149
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8151
    goto/16 :goto_d

    .line 8152
    :cond_165
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8155
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8156
    .local v2, "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->resumeCall(II)V

    .line 8157
    goto/16 :goto_d

    .line 8132
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_a9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    move v1, v2

    nop

    .line 8133
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_166
    if-eq v1, v2, :cond_167

    .line 8134
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8136
    goto/16 :goto_d

    .line 8137
    :cond_167
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8140
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8141
    .restart local v2    # "callId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->holdCall(II)V

    .line 8142
    goto/16 :goto_d

    .line 8116
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_aa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_168

    move v1, v2

    nop

    .line 8117
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_168
    if-eq v1, v2, :cond_169

    .line 8118
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8119
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8120
    goto/16 :goto_d

    .line 8121
    :cond_169
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8124
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8125
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8126
    .local v3, "type":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8127
    goto/16 :goto_d

    .line 8100
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_ab
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16a

    move v1, v2

    nop

    .line 8101
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_16a
    if-eq v1, v2, :cond_16b

    .line 8102
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8104
    goto/16 :goto_d

    .line 8105
    :cond_16b
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8108
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8109
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8110
    .local v3, "callId":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->videoCallAccept(III)V

    .line 8111
    goto/16 :goto_d

    .line 8083
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_ac
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16c

    goto :goto_8

    :cond_16c
    move v2, v1

    .line 8084
    .local v2, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16d

    .line 8085
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8087
    goto/16 :goto_d

    .line 8088
    :cond_16d
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v0

    .line 8091
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v3

    .line 8092
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8093
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8095
    goto/16 :goto_d

    .line 8066
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_ad
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16e

    goto :goto_9

    :cond_16e
    move v2, v1

    .line 8067
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_16f

    .line 8068
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8070
    goto/16 :goto_d

    .line 8071
    :cond_16f
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v0

    .line 8074
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v3

    .line 8075
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8076
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8077
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8078
    goto/16 :goto_d

    .line 8049
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_ae
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_170

    goto :goto_a

    :cond_170
    move v2, v1

    .line 8050
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_171

    .line 8051
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8053
    goto/16 :goto_d

    .line 8054
    :cond_171
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v0

    .line 8057
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v3

    .line 8058
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8059
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8061
    goto/16 :goto_d

    .line 8032
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_af
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_172

    goto :goto_b

    :cond_172
    move v2, v1

    .line 8033
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_173

    .line 8034
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8036
    goto/16 :goto_d

    .line 8037
    :cond_173
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v0

    .line 8040
    .local v0, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v3

    .line 8041
    .local v3, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8042
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8044
    goto/16 :goto_d

    .line 8016
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_174

    move v1, v2

    nop

    .line 8017
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_174
    if-eq v1, v2, :cond_175

    .line 8018
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8020
    goto/16 :goto_d

    .line 8021
    :cond_175
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8024
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8025
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8026
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8027
    goto/16 :goto_d

    .line 7993
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_b1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_176

    move v1, v2

    nop

    :cond_176
    move v10, v1

    .line 7994
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_177

    .line 7995
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7997
    goto/16 :goto_d

    .line 7998
    :cond_177
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8001
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8002
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8003
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8005
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8006
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8007
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8008
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8009
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8010
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
    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8011
    goto/16 :goto_d

    .line 7973
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
    :pswitch_b2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_178

    move v1, v2

    nop

    :cond_178
    move v8, v1

    .line 7974
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v2, :cond_179

    .line 7975
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7977
    goto/16 :goto_d

    .line 7978
    :cond_179
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7981
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7982
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7983
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7984
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 7985
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 7986
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7987
    .local v18, "accessNetwork":I
    move-object v0, v13

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 7988
    goto/16 :goto_d

    .line 7955
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17a

    move v1, v2

    nop

    :cond_17a
    move v6, v1

    .line 7956
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_17b

    .line 7957
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7958
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7959
    goto/16 :goto_d

    .line 7960
    :cond_17b
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7963
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7964
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7965
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 7966
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7967
    .local v11, "accessNetwork":I
    move-object v0, v13

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 7968
    goto/16 :goto_d

    .line 7940
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17c

    move v1, v2

    nop

    .line 7941
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17c
    if-eq v1, v2, :cond_17d

    .line 7942
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7944
    goto/16 :goto_d

    .line 7945
    :cond_17d
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7948
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7949
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 7950
    goto/16 :goto_d

    .line 7924
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17e

    move v1, v2

    nop

    .line 7925
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v1, v2, :cond_17f

    .line 7926
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7928
    goto/16 :goto_d

    .line 7929
    :cond_17f
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7932
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 7933
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7934
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 7935
    goto/16 :goto_d

    .line 7909
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_180

    move v1, v2

    nop

    .line 7910
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_180
    if-eq v1, v2, :cond_181

    .line 7911
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7913
    goto/16 :goto_d

    .line 7914
    :cond_181
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7917
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7918
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopKeepalive(II)V

    .line 7919
    goto/16 :goto_d

    .line 7893
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionHandle":I
    :pswitch_b7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_182

    move v1, v2

    nop

    .line 7894
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_182
    if-eq v1, v2, :cond_183

    .line 7895
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7896
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7897
    goto/16 :goto_d

    .line 7898
    :cond_183
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7901
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7902
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7903
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7904
    goto/16 :goto_d

    .line 7879
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_b8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_184

    move v1, v2

    nop

    .line 7880
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_184
    if-eq v1, v2, :cond_185

    .line 7881
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7882
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7883
    goto/16 :goto_d

    .line 7884
    :cond_185
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7886
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7887
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopNetworkScan(I)V

    .line 7888
    goto/16 :goto_d

    .line 7863
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_186

    move v1, v2

    nop

    .line 7864
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_186
    if-eq v1, v2, :cond_187

    .line 7865
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7866
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7867
    goto/16 :goto_d

    .line 7868
    :cond_187
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7870
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7871
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7872
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7873
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7874
    goto/16 :goto_d

    .line 7848
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_ba
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_188

    move v1, v2

    nop

    .line 7849
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_188
    if-eq v1, v2, :cond_189

    .line 7850
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7851
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7852
    goto/16 :goto_d

    .line 7853
    :cond_189
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7855
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7856
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7857
    .local v2, "powerUp":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7858
    goto/16 :goto_d

    .line 7832
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":I
    :pswitch_bb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    move v1, v2

    nop

    .line 7833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18a
    if-eq v1, v2, :cond_18b

    .line 7834
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7836
    goto/16 :goto_d

    .line 7837
    :cond_18b
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7840
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7841
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7842
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7843
    goto/16 :goto_d

    .line 7819
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_bc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18c

    move v1, v2

    nop

    .line 7820
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18c
    if-eq v1, v2, :cond_18d

    .line 7821
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7823
    goto/16 :goto_d

    .line 7824
    :cond_18d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7826
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->responseAcknowledgement()V

    .line 7827
    goto/16 :goto_d

    .line 7804
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_bd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18e

    move v1, v2

    nop

    .line 7805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_18e
    if-eq v1, v2, :cond_18f

    .line 7806
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7808
    goto/16 :goto_d

    .line 7809
    :cond_18f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7812
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7813
    .local v2, "powerUp":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7814
    goto/16 :goto_d

    .line 7789
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":Z
    :pswitch_be
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_190

    move v1, v2

    nop

    .line 7790
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_190
    if-eq v1, v2, :cond_191

    .line 7791
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7793
    goto/16 :goto_d

    .line 7794
    :cond_191
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7797
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7798
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setIndicationFilter(II)V

    .line 7799
    goto/16 :goto_d

    .line 7773
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_bf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_192

    move v1, v2

    nop

    .line 7774
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_192
    if-eq v1, v2, :cond_193

    .line 7775
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7777
    goto/16 :goto_d

    .line 7778
    :cond_193
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7781
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7782
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7783
    .local v3, "state":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7784
    goto/16 :goto_d

    .line 7759
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_c0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_194

    move v1, v2

    nop

    .line 7760
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_194
    if-eq v1, v2, :cond_195

    .line 7761
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7762
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7763
    goto/16 :goto_d

    .line 7764
    :cond_195
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7766
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7767
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7768
    goto/16 :goto_d

    .line 7742
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_196

    move v1, v2

    nop

    .line 7743
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_196
    if-eq v1, v2, :cond_197

    .line 7744
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7746
    goto/16 :goto_d

    .line 7747
    :cond_197
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7750
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7751
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7752
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v15}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7753
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7754
    goto/16 :goto_d

    .line 7728
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_198

    move v1, v2

    nop

    .line 7729
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_198
    if-eq v1, v2, :cond_199

    .line 7730
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7732
    goto/16 :goto_d

    .line 7733
    :cond_199
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7736
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7737
    goto/16 :goto_d

    .line 7714
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19a

    move v1, v2

    nop

    .line 7715
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19a
    if-eq v1, v2, :cond_19b

    .line 7716
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7718
    goto/16 :goto_d

    .line 7719
    :cond_19b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7721
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7722
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->pullLceData(I)V

    .line 7723
    goto/16 :goto_d

    .line 7700
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19c

    move v1, v2

    nop

    .line 7701
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19c
    if-eq v1, v2, :cond_19d

    .line 7702
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7703
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7704
    goto/16 :goto_d

    .line 7705
    :cond_19d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7708
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopLceService(I)V

    .line 7709
    goto/16 :goto_d

    .line 7684
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19e

    move v1, v2

    nop

    .line 7685
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19e
    if-eq v1, v2, :cond_19f

    .line 7686
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7688
    goto/16 :goto_d

    .line 7689
    :cond_19f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7692
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7693
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7694
    .local v3, "pullMode":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startLceService(IIZ)V

    .line 7695
    goto/16 :goto_d

    .line 7668
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a0

    move v1, v2

    nop

    .line 7669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a0
    if-eq v1, v2, :cond_1a1

    .line 7670
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7672
    goto/16 :goto_d

    .line 7673
    :cond_1a1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7676
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7677
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7678
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7679
    goto/16 :goto_d

    .line 7654
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a2

    move v1, v2

    nop

    .line 7655
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a2
    if-eq v1, v2, :cond_1a3

    .line 7656
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7657
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7658
    goto/16 :goto_d

    .line 7659
    :cond_1a3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7662
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getRadioCapability(I)V

    .line 7663
    goto/16 :goto_d

    .line 7640
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a4

    move v1, v2

    nop

    .line 7641
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a4
    if-eq v1, v2, :cond_1a5

    .line 7642
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7644
    goto/16 :goto_d

    .line 7645
    :cond_1a5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7648
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->requestShutdown(I)V

    .line 7649
    goto/16 :goto_d

    .line 7624
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a6

    move v1, v2

    nop

    .line 7625
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a6
    if-eq v1, v2, :cond_1a7

    .line 7626
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7628
    goto/16 :goto_d

    .line 7629
    :cond_1a7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7632
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7633
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7634
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7635
    goto/16 :goto_d

    .line 7607
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_ca
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1a8

    move v1, v2

    nop

    .line 7608
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1a8
    if-eq v1, v2, :cond_1a9

    .line 7609
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7611
    goto/16 :goto_d

    .line 7612
    :cond_1a9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7615
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7616
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7617
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7618
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7619
    goto/16 :goto_d

    .line 7593
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_cb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1aa

    move v1, v2

    nop

    .line 7594
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1aa
    if-eq v1, v2, :cond_1ab

    .line 7595
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7596
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7597
    goto/16 :goto_d

    .line 7598
    :cond_1ab
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7600
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7601
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getHardwareConfig(I)V

    .line 7602
    goto/16 :goto_d

    .line 7578
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_cc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ac

    move v1, v2

    nop

    .line 7579
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ac
    if-eq v1, v2, :cond_1ad

    .line 7580
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7582
    goto/16 :goto_d

    .line 7583
    :cond_1ad
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7586
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7587
    .local v2, "allow":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7588
    goto/16 :goto_d

    .line 7562
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "allow":Z
    :pswitch_cd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ae

    move v1, v2

    nop

    .line 7563
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ae
    if-eq v1, v2, :cond_1af

    .line 7564
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7566
    goto/16 :goto_d

    .line 7567
    :cond_1af
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7570
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7571
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7572
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7573
    goto/16 :goto_d

    .line 7547
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_ce
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b0

    move v1, v2

    nop

    .line 7548
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b0
    if-eq v1, v2, :cond_1b1

    .line 7549
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7551
    goto/16 :goto_d

    .line 7552
    :cond_1b1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7555
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7556
    .local v2, "resetType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvResetConfig(II)V

    .line 7557
    goto/16 :goto_d

    .line 7532
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "resetType":I
    :pswitch_cf
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b2

    move v1, v2

    nop

    .line 7533
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b2
    if-eq v1, v2, :cond_1b3

    .line 7534
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7536
    goto/16 :goto_d

    .line 7537
    :cond_1b3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7540
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7541
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7542
    goto/16 :goto_d

    .line 7516
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b4

    move v1, v2

    nop

    .line 7517
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b4
    if-eq v1, v2, :cond_1b5

    .line 7518
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7520
    goto/16 :goto_d

    .line 7521
    :cond_1b5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7524
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7525
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7526
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7527
    goto/16 :goto_d

    .line 7501
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b6

    move v1, v2

    nop

    .line 7502
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b6
    if-eq v1, v2, :cond_1b7

    .line 7503
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7504
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7505
    goto/16 :goto_d

    .line 7506
    :cond_1b7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7509
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7510
    .local v2, "itemId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->nvReadItem(II)V

    .line 7511
    goto/16 :goto_d

    .line 7485
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "itemId":I
    :pswitch_d2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b8

    move v1, v2

    nop

    .line 7486
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b8
    if-eq v1, v2, :cond_1b9

    .line 7487
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7489
    goto/16 :goto_d

    .line 7490
    :cond_1b9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7493
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7494
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7495
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7496
    goto/16 :goto_d

    .line 7470
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ba

    move v1, v2

    nop

    .line 7471
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ba
    if-eq v1, v2, :cond_1bb

    .line 7472
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7473
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7474
    goto/16 :goto_d

    .line 7475
    :cond_1bb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7478
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7479
    .local v2, "channelId":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7480
    goto/16 :goto_d

    .line 7454
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "channelId":I
    :pswitch_d4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1bc

    move v1, v2

    nop

    .line 7455
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1bc
    if-eq v1, v2, :cond_1bd

    .line 7456
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7458
    goto/16 :goto_d

    .line 7459
    :cond_1bd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7462
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7463
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7464
    .local v3, "p2":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7465
    goto/16 :goto_d

    .line 7438
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1be

    move v1, v2

    nop

    .line 7439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1be
    if-eq v1, v2, :cond_1bf

    .line 7440
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7442
    goto/16 :goto_d

    .line 7443
    :cond_1bf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7446
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7447
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7448
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7449
    goto/16 :goto_d

    .line 7422
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c0

    move v1, v2

    nop

    .line 7423
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c0
    if-eq v1, v2, :cond_1c1

    .line 7424
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7426
    goto/16 :goto_d

    .line 7427
    :cond_1c1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7430
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7431
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7432
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7433
    goto/16 :goto_d

    .line 7408
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c2

    move v1, v2

    nop

    .line 7409
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c2
    if-eq v1, v2, :cond_1c3

    .line 7410
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7412
    goto/16 :goto_d

    .line 7413
    :cond_1c3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7416
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7417
    goto/16 :goto_d

    .line 7390
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c4

    move v1, v2

    nop

    .line 7391
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c4
    if-eq v1, v2, :cond_1c5

    .line 7392
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7394
    goto/16 :goto_d

    .line 7395
    :cond_1c5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7398
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7399
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7401
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7402
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7403
    goto/16 :goto_d

    .line 7375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_d9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c6

    move v1, v2

    nop

    .line 7376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c6
    if-eq v1, v2, :cond_1c7

    .line 7377
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7379
    goto/16 :goto_d

    .line 7380
    :cond_1c7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7383
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7384
    .local v2, "rate":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7385
    goto/16 :goto_d

    .line 7361
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "rate":I
    :pswitch_da
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1c8

    move v1, v2

    nop

    .line 7362
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1c8
    if-eq v1, v2, :cond_1c9

    .line 7363
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7365
    goto/16 :goto_d

    .line 7366
    :cond_1c9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7369
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCellInfoList(I)V

    .line 7370
    goto/16 :goto_d

    .line 7347
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_db
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ca

    move v1, v2

    nop

    .line 7348
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ca
    if-eq v1, v2, :cond_1cb

    .line 7349
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7351
    goto/16 :goto_d

    .line 7352
    :cond_1cb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7355
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7356
    goto/16 :goto_d

    .line 7332
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_dc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1cc

    move v1, v2

    nop

    .line 7333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1cc
    if-eq v1, v2, :cond_1cd

    .line 7334
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7336
    goto/16 :goto_d

    .line 7337
    :cond_1cd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7340
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7341
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7342
    goto/16 :goto_d

    .line 7316
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_dd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ce

    move v1, v2

    nop

    .line 7317
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ce
    if-eq v1, v2, :cond_1cf

    .line 7318
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7320
    goto/16 :goto_d

    .line 7321
    :cond_1cf
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7324
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7325
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7326
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7327
    goto/16 :goto_d

    .line 7301
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_de
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d0

    move v1, v2

    nop

    .line 7302
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d0
    if-eq v1, v2, :cond_1d1

    .line 7303
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7305
    goto/16 :goto_d

    .line 7306
    :cond_1d1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7309
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7310
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7311
    goto/16 :goto_d

    .line 7287
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_df
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d2

    move v1, v2

    nop

    .line 7288
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d2
    if-eq v1, v2, :cond_1d3

    .line 7289
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7291
    goto/16 :goto_d

    .line 7292
    :cond_1d3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7294
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7295
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7296
    goto/16 :goto_d

    .line 7273
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d4

    move v1, v2

    nop

    .line 7274
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d4
    if-eq v1, v2, :cond_1d5

    .line 7275
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7277
    goto/16 :goto_d

    .line 7278
    :cond_1d5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7281
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7282
    goto/16 :goto_d

    .line 7258
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d6

    move v1, v2

    nop

    .line 7259
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d6
    if-eq v1, v2, :cond_1d7

    .line 7260
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7262
    goto/16 :goto_d

    .line 7263
    :cond_1d7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7266
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7267
    .local v2, "available":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7268
    goto/16 :goto_d

    .line 7243
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "available":Z
    :pswitch_e2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d8

    move v1, v2

    nop

    .line 7244
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d8
    if-eq v1, v2, :cond_1d9

    .line 7245
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7246
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7247
    goto/16 :goto_d

    .line 7248
    :cond_1d9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7251
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7252
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7253
    goto/16 :goto_d

    .line 7229
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1da

    move v1, v2

    nop

    .line 7230
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1da
    if-eq v1, v2, :cond_1db

    .line 7231
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7233
    goto/16 :goto_d

    .line 7234
    :cond_1db
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7237
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSmscAddress(I)V

    .line 7238
    goto/16 :goto_d

    .line 7215
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1dc

    move v1, v2

    nop

    .line 7216
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1dc
    if-eq v1, v2, :cond_1dd

    .line 7217
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7219
    goto/16 :goto_d

    .line 7220
    :cond_1dd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7223
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7224
    goto/16 :goto_d

    .line 7201
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1de

    move v1, v2

    nop

    .line 7202
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1de
    if-eq v1, v2, :cond_1df

    .line 7203
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7205
    goto/16 :goto_d

    .line 7206
    :cond_1df
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7209
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7210
    goto/16 :goto_d

    .line 7186
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e0

    move v1, v2

    nop

    .line 7187
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e0
    if-eq v1, v2, :cond_1e1

    .line 7188
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7190
    goto/16 :goto_d

    .line 7191
    :cond_1e1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7194
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7195
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7196
    goto/16 :goto_d

    .line 7170
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_e7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e2

    move v1, v2

    nop

    .line 7171
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e2
    if-eq v1, v2, :cond_1e3

    .line 7172
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7174
    goto/16 :goto_d

    .line 7175
    :cond_1e3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7178
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7179
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7180
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7181
    goto/16 :goto_d

    .line 7156
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_e8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e4

    move v1, v2

    nop

    .line 7157
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e4
    if-eq v1, v2, :cond_1e5

    .line 7158
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7159
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7160
    goto/16 :goto_d

    .line 7161
    :cond_1e5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7163
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7164
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCDMASubscription(I)V

    .line 7165
    goto/16 :goto_d

    .line 7141
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e6

    move v1, v2

    nop

    .line 7142
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e6
    if-eq v1, v2, :cond_1e7

    .line 7143
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7145
    goto/16 :goto_d

    .line 7146
    :cond_1e7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7149
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7150
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7151
    goto/16 :goto_d

    .line 7126
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_ea
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1e8

    move v1, v2

    nop

    .line 7127
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1e8
    if-eq v1, v2, :cond_1e9

    .line 7128
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7129
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7130
    goto/16 :goto_d

    .line 7131
    :cond_1e9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7134
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7135
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7136
    goto/16 :goto_d

    .line 7112
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_eb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ea

    move v1, v2

    nop

    .line 7113
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ea
    if-eq v1, v2, :cond_1eb

    .line 7114
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7116
    goto/16 :goto_d

    .line 7117
    :cond_1eb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7120
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7121
    goto/16 :goto_d

    .line 7097
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ec
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ec

    move v1, v2

    nop

    .line 7098
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ec
    if-eq v1, v2, :cond_1ed

    .line 7099
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7101
    goto/16 :goto_d

    .line 7102
    :cond_1ed
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7105
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7106
    .local v2, "activate":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7107
    goto/16 :goto_d

    .line 7082
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "activate":Z
    :pswitch_ed
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1ee

    move v1, v2

    nop

    .line 7083
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1ee
    if-eq v1, v2, :cond_1ef

    .line 7084
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7086
    goto/16 :goto_d

    .line 7087
    :cond_1ef
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7090
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7091
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7092
    goto/16 :goto_d

    .line 7068
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_ee
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f0

    move v1, v2

    nop

    .line 7069
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f0
    if-eq v1, v2, :cond_1f1

    .line 7070
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7071
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7072
    goto/16 :goto_d

    .line 7073
    :cond_1f1
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7076
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7077
    goto/16 :goto_d

    .line 7052
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ef
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f2

    move v1, v2

    nop

    .line 7053
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f2
    if-eq v1, v2, :cond_1f3

    .line 7054
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7056
    goto/16 :goto_d

    .line 7057
    :cond_1f3
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7060
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7061
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7062
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7063
    goto/16 :goto_d

    .line 7036
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f0
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f4

    move v1, v2

    nop

    .line 7037
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f4
    if-eq v1, v2, :cond_1f5

    .line 7038
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7040
    goto/16 :goto_d

    .line 7041
    :cond_1f5
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7044
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7045
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7046
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7047
    goto/16 :goto_d

    .line 7019
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f1
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f6

    move v1, v2

    nop

    .line 7020
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f6
    if-eq v1, v2, :cond_1f7

    .line 7021
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7023
    goto/16 :goto_d

    .line 7024
    :cond_1f7
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7027
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7028
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7029
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7030
    .local v4, "off":I
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7031
    goto/16 :goto_d

    .line 7004
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f2
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f8

    move v1, v2

    nop

    .line 7005
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f8
    if-eq v1, v2, :cond_1f9

    .line 7006
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7008
    goto/16 :goto_d

    .line 7009
    :cond_1f9
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7012
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7013
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7014
    goto/16 :goto_d

    .line 6990
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f3
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fa

    move v1, v2

    nop

    .line 6991
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fa
    if-eq v1, v2, :cond_1fb

    .line 6992
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6994
    goto/16 :goto_d

    .line 6995
    :cond_1fb
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6998
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 6999
    goto/16 :goto_d

    .line 6975
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f4
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fc

    move v1, v2

    nop

    .line 6976
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fc
    if-eq v1, v2, :cond_1fd

    .line 6977
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6979
    goto/16 :goto_d

    .line 6980
    :cond_1fd
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6983
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6984
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 6985
    goto/16 :goto_d

    .line 6961
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_f5
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fe

    move v1, v2

    nop

    .line 6962
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1fe
    if-eq v1, v2, :cond_1ff

    .line 6963
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6965
    goto/16 :goto_d

    .line 6966
    :cond_1ff
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6969
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getTTYMode(I)V

    .line 6970
    goto/16 :goto_d

    .line 6946
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f6
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_200

    move v1, v2

    nop

    .line 6947
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_200
    if-eq v1, v2, :cond_201

    .line 6948
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6950
    goto/16 :goto_d

    .line 6951
    :cond_201
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6954
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6955
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setTTYMode(II)V

    .line 6956
    goto/16 :goto_d

    .line 6932
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_f7
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_202

    move v1, v2

    nop

    .line 6933
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_202
    if-eq v1, v2, :cond_203

    .line 6934
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6936
    goto/16 :goto_d

    .line 6937
    :cond_203
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6940
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 6941
    goto/16 :goto_d

    .line 6917
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f8
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_204

    move v1, v2

    nop

    .line 6918
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_204
    if-eq v1, v2, :cond_205

    .line 6919
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6921
    goto/16 :goto_d

    .line 6922
    :cond_205
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6925
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6926
    .local v2, "type":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 6927
    goto/16 :goto_d

    .line 6902
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    :pswitch_f9
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_206

    move v1, v2

    nop

    .line 6903
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_206
    if-eq v1, v2, :cond_207

    .line 6904
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6906
    goto/16 :goto_d

    .line 6907
    :cond_207
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6909
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6910
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6911
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 6912
    goto/16 :goto_d

    .line 6887
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cdmaSub":I
    :pswitch_fa
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_208

    move v1, v2

    nop

    .line 6888
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_208
    if-eq v1, v2, :cond_209

    .line 6889
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6891
    goto/16 :goto_d

    .line 6892
    :cond_209
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6895
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6896
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6897
    goto/16 :goto_d

    .line 6873
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_fb
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20a

    move v1, v2

    nop

    .line 6874
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20a
    if-eq v1, v2, :cond_20b

    .line 6875
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6877
    goto/16 :goto_d

    .line 6878
    :cond_20b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6881
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getNeighboringCids(I)V

    .line 6882
    goto/16 :goto_d

    .line 6859
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fc
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20c

    move v1, v2

    nop

    .line 6860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20c
    if-eq v1, v2, :cond_20d

    .line 6861
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6863
    goto/16 :goto_d

    .line 6864
    :cond_20d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6867
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6868
    goto/16 :goto_d

    .line 6844
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_fd
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_20e

    move v1, v2

    nop

    .line 6845
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_20e
    if-eq v1, v2, :cond_20f

    .line 6846
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6848
    goto/16 :goto_d

    .line 6849
    :cond_20f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6852
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6853
    .local v2, "nwType":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6854
    goto/16 :goto_d

    .line 6830
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "nwType":I
    :pswitch_fe
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_210

    move v1, v2

    nop

    .line 6831
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_210
    if-eq v1, v2, :cond_211

    .line 6832
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6834
    goto/16 :goto_d

    .line 6835
    :cond_211
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6838
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6839
    goto/16 :goto_d

    .line 6815
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_ff
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_212

    move v1, v2

    nop

    .line 6816
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_212
    if-eq v1, v2, :cond_213

    .line 6817
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6819
    goto/16 :goto_d

    .line 6820
    :cond_213
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6823
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6824
    .local v2, "accept":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6825
    goto/16 :goto_d

    .line 6800
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "accept":Z
    :pswitch_100
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_214

    move v1, v2

    nop

    .line 6801
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_214
    if-eq v1, v2, :cond_215

    .line 6802
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6804
    goto/16 :goto_d

    .line 6805
    :cond_215
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6808
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6809
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6810
    goto/16 :goto_d

    .line 6785
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_101
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_216

    move v1, v2

    nop

    .line 6786
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_216
    if-eq v1, v2, :cond_217

    .line 6787
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6789
    goto/16 :goto_d

    .line 6790
    :cond_217
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6793
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6794
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6795
    goto/16 :goto_d

    .line 6771
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_102
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_218

    move v1, v2

    nop

    .line 6772
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_218
    if-eq v1, v2, :cond_219

    .line 6773
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6775
    goto/16 :goto_d

    .line 6776
    :cond_219
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6779
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6780
    goto/16 :goto_d

    .line 6756
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_103
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21a

    move v1, v2

    nop

    .line 6757
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21a
    if-eq v1, v2, :cond_21b

    .line 6758
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6760
    goto/16 :goto_d

    .line 6761
    :cond_21b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6764
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6765
    .local v2, "mode":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setBandMode(II)V

    .line 6766
    goto/16 :goto_d

    .line 6741
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "mode":I
    :pswitch_104
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21c

    move v1, v2

    nop

    .line 6742
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21c
    if-eq v1, v2, :cond_21d

    .line 6743
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6745
    goto/16 :goto_d

    .line 6746
    :cond_21d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6749
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6750
    .local v2, "index":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6751
    goto/16 :goto_d

    .line 6725
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "index":I
    :pswitch_105
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21e

    move v1, v2

    nop

    .line 6726
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21e
    if-eq v1, v2, :cond_21f

    .line 6727
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6729
    goto/16 :goto_d

    .line 6730
    :cond_21f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6733
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6734
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6735
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6736
    goto/16 :goto_d

    .line 6710
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_106
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_220

    move v1, v2

    nop

    .line 6711
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_220
    if-eq v1, v2, :cond_221

    .line 6712
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6714
    goto/16 :goto_d

    .line 6715
    :cond_221
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6718
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6719
    .local v2, "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6720
    goto/16 :goto_d

    .line 6696
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_107
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_222

    move v1, v2

    nop

    .line 6697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_222
    if-eq v1, v2, :cond_223

    .line 6698
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6700
    goto/16 :goto_d

    .line 6701
    :cond_223
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6704
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDataCallList(I)V

    .line 6705
    goto/16 :goto_d

    .line 6682
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_108
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_224

    move v1, v2

    nop

    .line 6683
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_224
    if-eq v1, v2, :cond_225

    .line 6684
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6686
    goto/16 :goto_d

    .line 6687
    :cond_225
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6690
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getClip(I)V

    .line 6691
    goto/16 :goto_d

    .line 6668
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_109
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_226

    move v1, v2

    nop

    .line 6669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_226
    if-eq v1, v2, :cond_227

    .line 6670
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6672
    goto/16 :goto_d

    .line 6673
    :cond_227
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6676
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getMute(I)V

    .line 6677
    goto/16 :goto_d

    .line 6653
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_228

    move v1, v2

    nop

    .line 6654
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_228
    if-eq v1, v2, :cond_229

    .line 6655
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6657
    goto/16 :goto_d

    .line 6658
    :cond_229
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6661
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6662
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setMute(IZ)V

    .line 6663
    goto/16 :goto_d

    .line 6638
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_10b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22a

    move v1, v2

    nop

    .line 6639
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22a
    if-eq v1, v2, :cond_22b

    .line 6640
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6642
    goto/16 :goto_d

    .line 6643
    :cond_22b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6646
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6647
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->separateConnection(II)V

    .line 6648
    goto/16 :goto_d

    .line 6624
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_10c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22c

    move v1, v2

    nop

    .line 6625
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22c
    if-eq v1, v2, :cond_22d

    .line 6626
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6628
    goto/16 :goto_d

    .line 6629
    :cond_22d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6632
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getBasebandVersion(I)V

    .line 6633
    goto/16 :goto_d

    .line 6610
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22e

    move v1, v2

    nop

    .line 6611
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_22e
    if-eq v1, v2, :cond_22f

    .line 6612
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6614
    goto/16 :goto_d

    .line 6615
    :cond_22f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6618
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->stopDtmf(I)V

    .line 6619
    goto/16 :goto_d

    .line 6595
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_230

    move v1, v2

    nop

    .line 6596
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_230
    if-eq v1, v2, :cond_231

    .line 6597
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6599
    goto/16 :goto_d

    .line 6600
    :cond_231
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6603
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6604
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6605
    goto/16 :goto_d

    .line 6581
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_10f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_232

    move v1, v2

    nop

    .line 6582
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_232
    if-eq v1, v2, :cond_233

    .line 6583
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6585
    goto/16 :goto_d

    .line 6586
    :cond_233
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6589
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6590
    goto/16 :goto_d

    .line 6566
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_110
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_234

    move v1, v2

    nop

    .line 6567
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_234
    if-eq v1, v2, :cond_235

    .line 6568
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6570
    goto/16 :goto_d

    .line 6571
    :cond_235
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6574
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6575
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6576
    goto/16 :goto_d

    .line 6552
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_111
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_236

    move v1, v2

    nop

    .line 6553
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_236
    if-eq v1, v2, :cond_237

    .line 6554
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6556
    goto/16 :goto_d

    .line 6557
    :cond_237
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6560
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6561
    goto/16 :goto_d

    .line 6538
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_112
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_238

    move v1, v2

    nop

    .line 6539
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_238
    if-eq v1, v2, :cond_239

    .line 6540
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6542
    goto/16 :goto_d

    .line 6543
    :cond_239
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6545
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6546
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6547
    goto/16 :goto_d

    .line 6521
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_113
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23a

    move v1, v2

    nop

    .line 6522
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23a
    if-eq v1, v2, :cond_23b

    .line 6523
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6525
    goto/16 :goto_d

    .line 6526
    :cond_23b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6529
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6530
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6531
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6532
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6533
    goto/16 :goto_d

    .line 6502
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_114
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23c

    move v1, v2

    nop

    :cond_23c
    move v7, v1

    .line 6503
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_23d

    .line 6504
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6505
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6506
    goto/16 :goto_d

    .line 6507
    :cond_23d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6510
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6511
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6512
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6513
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6514
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6515
    .local v16, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6516
    goto/16 :goto_d

    .line 6484
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_115
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23e

    move v1, v2

    nop

    :cond_23e
    move v6, v1

    .line 6485
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v2, :cond_23f

    .line 6486
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6488
    goto/16 :goto_d

    .line 6489
    :cond_23f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6492
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6493
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6494
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6495
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6496
    .local v11, "appId":Ljava/lang/String;
    move-object v0, v13

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6497
    goto/16 :goto_d

    .line 6468
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_116
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_240

    move v1, v2

    nop

    .line 6469
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_240
    if-eq v1, v2, :cond_241

    .line 6470
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6472
    goto/16 :goto_d

    .line 6473
    :cond_241
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6476
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6477
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6478
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6479
    goto/16 :goto_d

    .line 6454
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_117
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_242

    move v1, v2

    nop

    .line 6455
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_242
    if-eq v1, v2, :cond_243

    .line 6456
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6458
    goto/16 :goto_d

    .line 6459
    :cond_243
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6462
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acceptCall(I)V

    .line 6463
    goto/16 :goto_d

    .line 6438
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_118
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_244

    move v1, v2

    nop

    .line 6439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v1, v2, :cond_245

    .line 6440
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6442
    goto/16 :goto_d

    .line 6443
    :cond_245
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6446
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6447
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6448
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6449
    goto/16 :goto_d

    .line 6422
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_119
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_246

    move v1, v2

    nop

    .line 6423
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_246
    if-eq v1, v2, :cond_247

    .line 6424
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6426
    goto/16 :goto_d

    .line 6427
    :cond_247
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6430
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6431
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6432
    .local v3, "serviceClass":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6433
    goto/16 :goto_d

    .line 6407
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_11a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_248

    move v1, v2

    nop

    .line 6408
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_248
    if-eq v1, v2, :cond_249

    .line 6409
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6410
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6411
    goto/16 :goto_d

    .line 6412
    :cond_249
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6415
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6416
    .local v2, "serviceClass":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCallWaiting(II)V

    .line 6417
    goto/16 :goto_d

    .line 6391
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_11b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24a

    move v1, v2

    nop

    .line 6392
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24a
    if-eq v1, v2, :cond_24b

    .line 6393
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6394
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6395
    goto/16 :goto_d

    .line 6396
    :cond_24b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6399
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6400
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6401
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6402
    goto/16 :goto_d

    .line 6375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24c

    move v1, v2

    nop

    .line 6376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24c
    if-eq v1, v2, :cond_24d

    .line 6377
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6379
    goto/16 :goto_d

    .line 6380
    :cond_24d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6383
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6384
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6385
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6386
    goto/16 :goto_d

    .line 6360
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_24e

    move v1, v2

    nop

    .line 6361
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_24e
    if-eq v1, v2, :cond_24f

    .line 6362
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6363
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6364
    goto/16 :goto_d

    .line 6365
    :cond_24f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6369
    .local v2, "status":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setClir(II)V

    .line 6370
    goto/16 :goto_d

    .line 6346
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_11e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_250

    move v1, v2

    nop

    .line 6347
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_250
    if-eq v1, v2, :cond_251

    .line 6348
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6350
    goto/16 :goto_d

    .line 6351
    :cond_251
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6354
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getClir(I)V

    .line 6355
    goto/16 :goto_d

    .line 6332
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_252

    move v1, v2

    nop

    .line 6333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_252
    if-eq v1, v2, :cond_253

    .line 6334
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6336
    goto/16 :goto_d

    .line 6337
    :cond_253
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6340
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6341
    goto/16 :goto_d

    .line 6317
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_120
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_254

    move v1, v2

    nop

    .line 6318
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_254
    if-eq v1, v2, :cond_255

    .line 6319
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6320
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6321
    goto/16 :goto_d

    .line 6322
    :cond_255
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6325
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6326
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6327
    goto/16 :goto_d

    .line 6301
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_121
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_256

    move v1, v2

    nop

    .line 6302
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_256
    if-eq v1, v2, :cond_257

    .line 6303
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6305
    goto/16 :goto_d

    .line 6306
    :cond_257
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6309
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6310
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6311
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6312
    goto/16 :goto_d

    .line 6281
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_122
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_258

    move v1, v2

    nop

    :cond_258
    move v7, v1

    .line 6282
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v2, :cond_259

    .line 6283
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6285
    goto/16 :goto_d

    .line 6286
    :cond_259
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6289
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6290
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6291
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v15}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6293
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6294
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6295
    .local v16, "isRoaming":Z
    move-object v0, v13

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6296
    goto/16 :goto_d

    .line 6265
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_123
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25a

    move v1, v2

    nop

    .line 6266
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25a
    if-eq v1, v2, :cond_25b

    .line 6267
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6269
    goto/16 :goto_d

    .line 6270
    :cond_25b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6273
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6274
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6275
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6276
    goto/16 :goto_d

    .line 6249
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_124
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25c

    move v1, v2

    nop

    .line 6250
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25c
    if-eq v1, v2, :cond_25d

    .line 6251
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6252
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6253
    goto/16 :goto_d

    .line 6254
    :cond_25d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6257
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6258
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6259
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6260
    goto/16 :goto_d

    .line 6234
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_125
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25e

    move v1, v2

    nop

    .line 6235
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25e
    if-eq v1, v2, :cond_25f

    .line 6236
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6238
    goto/16 :goto_d

    .line 6239
    :cond_25f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6242
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6243
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6244
    goto/16 :goto_d

    .line 6219
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_126
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_260

    move v1, v2

    nop

    .line 6220
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_260
    if-eq v1, v2, :cond_261

    .line 6221
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6222
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6223
    goto/16 :goto_d

    .line 6224
    :cond_261
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6226
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6227
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6228
    .local v2, "on":Z
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setRadioPower(IZ)V

    .line 6229
    goto/16 :goto_d

    .line 6205
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_127
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_262

    move v1, v2

    nop

    .line 6206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_262
    if-eq v1, v2, :cond_263

    .line 6207
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6209
    goto/16 :goto_d

    .line 6210
    :cond_263
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6213
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getOperator(I)V

    .line 6214
    goto/16 :goto_d

    .line 6191
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_128
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_264

    move v1, v2

    nop

    .line 6192
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_264
    if-eq v1, v2, :cond_265

    .line 6193
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6194
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6195
    goto/16 :goto_d

    .line 6196
    :cond_265
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6199
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6200
    goto/16 :goto_d

    .line 6177
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_129
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_266

    move v1, v2

    nop

    .line 6178
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_266
    if-eq v1, v2, :cond_267

    .line 6179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6181
    goto/16 :goto_d

    .line 6182
    :cond_267
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6185
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6186
    goto/16 :goto_d

    .line 6163
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_268

    move v1, v2

    nop

    .line 6164
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_268
    if-eq v1, v2, :cond_269

    .line 6165
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6167
    goto/16 :goto_d

    .line 6168
    :cond_269
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6171
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getSignalStrength(I)V

    .line 6172
    goto/16 :goto_d

    .line 6149
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26a

    move v1, v2

    nop

    .line 6150
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26a
    if-eq v1, v2, :cond_26b

    .line 6151
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6153
    goto/16 :goto_d

    .line 6154
    :cond_26b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6157
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6158
    goto/16 :goto_d

    .line 6135
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26c

    move v1, v2

    nop

    .line 6136
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26c
    if-eq v1, v2, :cond_26d

    .line 6137
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6139
    goto/16 :goto_d

    .line 6140
    :cond_26d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6143
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->rejectCall(I)V

    .line 6144
    goto/16 :goto_d

    .line 6121
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_26e

    move v1, v2

    nop

    .line 6122
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_26e
    if-eq v1, v2, :cond_26f

    .line 6123
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6125
    goto/16 :goto_d

    .line 6126
    :cond_26f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6129
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->conference(I)V

    .line 6130
    goto/16 :goto_d

    .line 6107
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12e
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_270

    move v1, v2

    nop

    .line 6108
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_270
    if-eq v1, v2, :cond_271

    .line 6109
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6111
    goto/16 :goto_d

    .line 6112
    :cond_271
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6115
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6116
    goto/16 :goto_d

    .line 6093
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12f
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_272

    move v1, v2

    nop

    .line 6094
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_272
    if-eq v1, v2, :cond_273

    .line 6095
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6097
    goto/16 :goto_d

    .line 6098
    :cond_273
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6101
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6102
    goto/16 :goto_d

    .line 6079
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_130
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_274

    move v1, v2

    nop

    .line 6080
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_274
    if-eq v1, v2, :cond_275

    .line 6081
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6083
    goto/16 :goto_d

    .line 6084
    :cond_275
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6087
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6088
    goto/16 :goto_d

    .line 6064
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_131
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_276

    move v1, v2

    nop

    .line 6065
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_276
    if-eq v1, v2, :cond_277

    .line 6066
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6068
    goto/16 :goto_d

    .line 6069
    :cond_277
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6072
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6073
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->hangup(II)V

    .line 6074
    goto/16 :goto_d

    .line 6049
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_132
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_278

    move v1, v2

    nop

    .line 6050
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_278
    if-eq v1, v2, :cond_279

    .line 6051
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6053
    goto/16 :goto_d

    .line 6054
    :cond_279
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6058
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6059
    goto/16 :goto_d

    .line 6033
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_133
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27a

    move v1, v2

    nop

    .line 6034
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27a
    if-eq v1, v2, :cond_27b

    .line 6035
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6037
    goto/16 :goto_d

    .line 6038
    :cond_27b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6041
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6042
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v15}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6043
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6044
    goto/16 :goto_d

    .line 6019
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_134
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27c

    move v1, v2

    nop

    .line 6020
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27c
    if-eq v1, v2, :cond_27d

    .line 6021
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6023
    goto/16 :goto_d

    .line 6024
    :cond_27d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6027
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getCurrentCalls(I)V

    .line 6028
    goto/16 :goto_d

    .line 6004
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_135
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27e

    move v1, v2

    nop

    .line 6005
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27e
    if-eq v1, v2, :cond_27f

    .line 6006
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6008
    goto/16 :goto_d

    .line 6009
    :cond_27f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6012
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6013
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6014
    goto/16 :goto_d

    .line 5987
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_136
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_280

    move v1, v2

    nop

    .line 5988
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_280
    if-eq v1, v2, :cond_281

    .line 5989
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5991
    goto/16 :goto_d

    .line 5992
    :cond_281
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5995
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5996
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5997
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5998
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5999
    goto/16 :goto_d

    .line 5970
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_137
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_282

    move v1, v2

    nop

    .line 5971
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_282
    if-eq v1, v2, :cond_283

    .line 5972
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5974
    goto/16 :goto_d

    .line 5975
    :cond_283
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5978
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5979
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5980
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5981
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5982
    goto/16 :goto_d

    .line 5953
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_138
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_284

    move v1, v2

    nop

    .line 5954
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_284
    if-eq v1, v2, :cond_285

    .line 5955
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5957
    goto/16 :goto_d

    .line 5958
    :cond_285
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5961
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5962
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5963
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5964
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5965
    goto/16 :goto_d

    .line 5937
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_139
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_286

    move v1, v2

    nop

    .line 5938
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_286
    if-eq v1, v2, :cond_287

    .line 5939
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5940
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5941
    goto/16 :goto_d

    .line 5942
    :cond_287
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5945
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5946
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5947
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5948
    goto/16 :goto_d

    .line 5920
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13a
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_288

    move v1, v2

    nop

    .line 5921
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_288
    if-eq v1, v2, :cond_289

    .line 5922
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5924
    goto/16 :goto_d

    .line 5925
    :cond_289
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5927
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5928
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5929
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5930
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5931
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5932
    goto/16 :goto_d

    .line 5904
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13b
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28a

    move v1, v2

    nop

    .line 5905
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28a
    if-eq v1, v2, :cond_28b

    .line 5906
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5908
    goto :goto_d

    .line 5909
    :cond_28b
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5912
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5913
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5914
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 5915
    goto :goto_d

    .line 5890
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13c
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28c

    move v1, v2

    nop

    .line 5891
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_28c
    if-eq v1, v2, :cond_28d

    .line 5892
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5893
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5894
    goto :goto_d

    .line 5895
    :cond_28d
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5898
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->getIccCardStatus(I)V

    .line 5899
    goto :goto_d

    .line 5873
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13d
    move-object v14, v12

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_28e

    goto :goto_c

    :cond_28e
    move v2, v1

    .line 5874
    .local v2, "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_28f

    .line 5875
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5877
    goto :goto_d

    .line 5878
    :cond_28f
    const-string v0, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 5881
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v3

    .line 5882
    .local v3, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v0, v3}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5883
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5885
    nop

    .line 10922
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13d
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

    .line 5826
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5852
    const-string v0, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5853
    return-object p0

    .line 5855
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

    .line 5859
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5860
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5817
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5846
    const/4 v0, 0x1

    return v0
.end method
